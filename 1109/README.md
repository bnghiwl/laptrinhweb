# SitemeshProfileDemo (sample)

This is a sample Maven web project (WAR) demonstrating:
- SiteMesh 3 decorator with a Bootstrap layout
- Spring MVC (XML config)
- Profile update form with multipart file upload (CommonsMultipartResolver)
- JSP views under /views/

To run:
1. Import as Maven project in STS/IntelliJ/Eclipse.
2. Build and deploy to a Servlet container (Tomcat 9+).
3. Access `http://localhost:8080/SitemeshProfileDemo/`

Notes:
- This demo stores uploaded files under the container's `uploads/` folder (real path). In production use a safer external directory or cloud storage.
- Persistence (DB) is not included; session is used for a quick demo.
