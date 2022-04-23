# Almighty Simple Deploy
A shortcut to set a remote git project that update instantly when receiving
a push

## Setup
###In your server
create the root directory for the project:

    sudo mkdir /var/www/mywebsite

with the proper user permissions to write there:

    sudo chown -R <user>:<group> /var/www/mywebsite

inside the project folder clone this repository:

    cd /var/www/mywebsite
    git clone git@github.com:ferllop/almighty-simple-deploy.git . #Do not forget the dot!

Now run the installation script found inside deploy directory:

    ./install.sh


###In your local environment.
Clone the repository from your server:

    git clone [git@<serverusername>@<serverip>:<sshport>]:</full/path/to/root/website/directory>

Now, if everything has gone fine, always when you make a push it will go directly to your server.
 
Alternatively you can set the remote server as remote production (for example) instead of origin:

    git remote rename origin production

and as remote origin set the url of a repository in github, gitlab...

    git remote add origin <url-to-gitlab-github...>
    git push --set-upstream origin main
 
In this manner, always that you do a regular push you will be pushing to gitlab and when you want to deploy to production you will need to push explicitly to production with:
 
    git push production main 

