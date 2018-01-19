# Greater Seattle Linux User Group website.  
View it live at [https://gslug.org](https://gslug.org)

## To Make Changes To gslug.org

1. Fork this repository.
1. Make a local clone of the fork.
    ~~~
    git clone git@gitlab.com:<yourname>/gslug.git
1. Work in the local clone `cd gslug`
1. Install the required ruby gems to the local directory.
    ~~~
	bundle install --path vendor/bundle
    ~~~
1. Run jekyll to start a local server.
    ~~~
	bundle exec jekyll serve -s source --baseurl ""
    ~~~
1. At this point you can view the website locally in your browser. 
    ~~~
	localhost:4000
    ~~~
1. Make changes and test in the local clone.
1. When you are ready to publish your changes, create a new branch.
    ~~~
    git branch patch
    ~~~
1. Push the new branch up to the fork on gitlab.
    ~~~
    git push origin patch
    ~~~
1. Request a merge of your new branch back to this repository.
