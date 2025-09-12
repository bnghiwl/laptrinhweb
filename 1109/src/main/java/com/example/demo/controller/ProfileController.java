package com.example.demo.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import com.example.demo.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/profile")
public class ProfileController {

    @GetMapping
    public String profileForm(Model model) {
        // In real app, load user from DB or session. Here we create a sample user.
        User user = new User();
        user.setFullname("Nguyen Van A");
        user.setPhone("0123456789");
        model.addAttribute("user", user);
        return "profile";
    }

    @PostMapping("/update")
    public String updateProfile(User user, @RequestParam("imageFile") MultipartFile file, HttpServletRequest request) throws IOException {
        if (file != null && !file.isEmpty()) {
            String uploadDir = request.getServletContext().getRealPath("/uploads/");
            File dir = new File(uploadDir);
            if (!dir.exists()) dir.mkdirs();

            String filename = System.currentTimeMillis() + "_" + file.getOriginalFilename();
            File dest = new File(dir, filename);
            file.transferTo(dest);

            user.setImage("/uploads/" + filename);
        }

        // TODO: persist user to DB. For demo we keep it in model stored in session would be better.
        // Redirect to profile page
        request.getSession().setAttribute("updatedUser", user);
        return "redirect:/profile/view";
    }

    @GetMapping("/view")
    public String viewProfile(Model model, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("updatedUser");
        if (user == null) {
            user = new User();
            user.setFullname("Nguyen Van A");
            user.setPhone("0123456789");
        }
        model.addAttribute("user", user);
        return "profile";
    }
}
