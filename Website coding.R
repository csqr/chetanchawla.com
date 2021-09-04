#Website using blogdown: July 24, 2021, https://alison.rbind.io/blog/2020-12-new-year-new-blogdown/ 

library(blogdown)

# Step 3: Create Site

#Comments in https://alison.rbind.io/blog/2020-12-new-year-new-blogdown/ , template renamed "starter-hugo-academic"

new_site(theme = "wowchemy/ starter-hugo-academic ")
blogdown::new_post(title = "Hello Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")
#A rule that is true 90% of the time: folders in content/ are singular, not plural— ✔️ post; ❌ posts 
#You can add an option to your .Rprofile to save these settings so you don’t have to remember them:
# if exists, opens; if not, creates new
blogdown::config_Rprofile() 

#After restart, serving site again.

serve_site()

#Getting error: Error in options(blogdown.author = "Chetan Chawla", 
# blogdown.ext = ".Rmarkdown",  : argument is missing, with no default 
# https://github.com/rbind/apreshill/issues/44 
# Removed .Rprofile customization, then installed latest version of blogdown

library(utils)
remotes::install_github('rstudio/blogdown')

update.packages(ask = FALSE, checkBuilt = TRUE)

blogdown::hugo_version()
# Using Github: https://alison.rbind.io/blog/2020-12-new-year-new-blogdown/#using-github 
#make a .gitignore file:
file.edit(".gitignore")

#Checks

blogdown::check_gitignore()

blogdown::check_content()

# Step 4: Create content

#Use .rmarkdown (NEVER .Rmd) since its more portable

# Editing content on August 27, 2021. https://alison.rbind.io/talk/2020-sharing-short-notice/

blogdown::new_post(title = "Hi Hugo", 
                   ext = '.Rmarkdown', 
                   subdir = "post")
