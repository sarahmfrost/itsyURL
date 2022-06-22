#! /bin/sh


#Prereq:
#1. git installed
#2. Github pages site
#3. Github personal access token link here: http://www.sarahfrost.org/token
# https://www.edgoad.com/2021/02/using-personal-access-tokens-with-git-and-github.html

echo "Running itsy URL script..."

cd sarahfrost.org

echo "Enter the alias"

read alias

echo "Enter the website to redirect to"

read website_redirect

echo "yourwebsite.com/$alias will redirect to $website_redirect"

touch $alias.html

echo "<!DOCTYPE html>
<html>
<head>
  <title>Redirect</title>
</head>
<body>
<meta http-equiv='Refresh' content=\"0; url='$website_redirect'\"/>
  </body>
</html>" > $alias.html


git add .

git commit -a -m 'Added Redirect'

git push https://<GITHUB_ACCESS_TOKEN>@github.com/sarahmfrost/sarahfrost.org.git
git push https://<GITHUB_ACCESS_TOKEN>@github.com/<GITHUB_USERNAME>/<REPOSITORY_NAME>.git

echo "Done - check your link"
