<%@ page  language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>

<head>
	<meta charset="UTF-8">
	<title>Simple Team Info App</title>
</head>


<body>


	<section style= "float: left; margin: 0 1.5%; background-color:lightyellow; width: 98.5%;">
	<% 
	String auth_user, auth_pass,interest;
	auth_user = request.getParameter("userName");
	auth_pass = request.getParameter("passName");
	interest = request.getParameter("interestDevsecops");

	//stats = UserVerification.checkCredentials(auth_user, auth_pass);
	if(auth_user.contains("ravi") && auth_pass.contains("Welcome2IBM") && interest.contains ("Yes")){
		out.print("Successfully Logged In!!!  ");
    } else {
    	String redirectURL = "index.html";
    	response.sendRedirect(redirectURL);
    }

    String string1, string2, string3, string4;
    
    string1 = "This does not seem to be your Favourites";
    string2 = "This does not seem to be your Favourites";
    string3 = "This does not seem to be your Favourites";
    string4 = "This does not seem to be your Favourites";
    

    String[] langs = request.getParameterValues("favoriteLanguage");
    for (String tempLang : langs){
    	//out.println(tempLang);
    	if(tempLang.contains("Java")){
    		string1 = "Develop Frontend for Cloud Automation";
    	}
    	if(tempLang.contains("Go-Lang")){
    		string2 = "Develop Custom Operators for Openshift";
    	}
    	if(tempLang.contains("Python")){
    		string3 = "Develop Slack-Bots for Openshift & K8s";
    	}
    	if(tempLang.contains("Groovy")){
    		string4 = "Develop Multi-stage DSL Jenkins Pipelines";
    	}
    }
    	
	%> 

	You are browsing through:  <%= request.getHeader("User-Agent") %>
	<font color="green">
	<h2> HELLO MR. <%= request.getParameter("userName").toUpperCase() %>  </h2>
	</font>   
	<h3> Welcome to MCMS DevSecOps</h3>
    </section>

	<section style= "float: left; margin: 0 1.5%;  font-size: 1.1em; width: 62%;  border: 1px solid lightgray; height: 80vh">	
	
	
	<img src="webcontents.png" width="1030" height="640" > <br>
	
	
	<p>Summary: This is based on the Git-Ops Model, where Git is the single source of truth.  As soon as application codes are updated on the Git, the same is propagated to Target Environment. In this approach, GitHub acts as the SCM, followed by Jenkins CI and other tools for Build, Deploy, Artifact, Tests etc.
     The DevOps Automation Framework has been developed by MSCP Team of <a href="https://www.kyndryl.com">Kyndryl</a> comprising of Developers, Architects and SREs as per the industry standard.
    </p>

    </section>
	
	<section style= "float: right; margin: 0 0%; background-color:#fff5ee; font-size: 1.15em; width: 34%; border: 1px solid lightgray; height: 80vh">
     <p> 
     <font color="#191970">
     <br>
     &nbsp; &nbsp;<b>Recommended Projects:-</b><br>
     &nbsp; &nbsp;1. Java:- <% out.print(string1); %><br>
     &nbsp; &nbsp;2. Go-Lang:- <% out.print(string2); %><br>
     &nbsp; &nbsp;3. Python:- <% out.print(string3); %><br>
     &nbsp; &nbsp;4. Groovy:- <% out.print(string4); %><br>


     <br><br>
     &nbsp; &nbsp;<b>Team:-</b><br>
	 &nbsp; &nbsp;1. Ravi Kumar<br>
	 &nbsp; &nbsp;2. Mahantesh Meti<br>
	 &nbsp; &nbsp;3. Rahul Chenny<br>
	 &nbsp; &nbsp;4. Keshav Mishra<br>
	 &nbsp; &nbsp;5. Vishnu Reddy<br>
	 &nbsp; &nbsp;6. Priyanka R<br> 
	 <br><br>
	 &nbsp; &nbsp;<b>Tools:-</b><br>
	 &nbsp; &nbsp;1. <a href="https://www.atlassian.com/software/jira/agile">Jira:</a><br>
	 &nbsp; &nbsp;2. <a href="https://www.jenkins.io">Jenkins</a><br>
	 &nbsp; &nbsp;3. <a href="https://jfrog.com/#products">Jfrog Artifactory</a><br>
	 &nbsp; &nbsp;4. <a href="https://gitlab.com">Gitlab</a><br>
	 &nbsp; &nbsp;5. <a href="https://www.selenium.dev">Selenium</a><br>
	 &nbsp; &nbsp;6. <a href="https://www.terraform.io">Terraform</a><br>
	 &nbsp; &nbsp;7. <a href="https://www.sonarsource.com">Sonarqube</a><br>
     &nbsp; &nbsp;8. <a href="https://www.vaultproject.io/">Vault</a><br>
     &nbsp; &nbsp;9. <a href="https://www.ansible.com/">Ansible</a><br>
	 
     </font>
     </p>
 	
    </section>
    <section style= "float: left; margin: 0 1.5%;  width: 98.5%;">
    
    <p align="center">
	Last updated: <%= new java.util.Date() %>
	</p>
 </section>

	</body>
</html>
