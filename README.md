
# Where do I get ColdFusion?

www.cfmlrepo.com has a shared repository

# How to use this repository

Will build and patch ColdFusion 10 as Docker image in Container

If in Windows make sure all files are with unix EOL formating.

Once you have the  pulled down the repo  can build the Docker container:

    docker build -t cf10 .

And run it with:

    docker run -d -p 8880:80 -v /var/www:/var/www cf10


# Credits
This is Almost entirely based on https://github.com/finalcut/docker-coldfusion10 as it is  a fork.

The silent installation of ColdFusion is accomplished with a ./build/install/installer.profile file. The syntax for that file is described in this [Adobe blog post](: http://blogs.adobe.com/cfdoc/2009/10/performing_a_silent_installation_of_coldfusion_9.html).


The CF installation script was written by Jan Ruusuvuori and seems to only exist in this [forum post](https://forums.adobe.com/message/4721871).  I did  updated it to include the latest hotfix installation version .


# What odd stuff do I need to know?

1. The admin password for the coldfusion server is `Adm1n$`
2. You can't access the cf-admin interface from the web. You need to use the CF Admin API
3. You can learn more about the coldfusion installation by looking in `./build/install/installer.profile`
4. If you want to build your own container instead of using this one check out [these instructions](https://github.com/finalcut/docker-coldfusion10/blob/master/BUILD_INSTRUCTIONS.md)
5. Finally, I map port 80 on the CF server to port 8880 and I have it in the usage instructions here to make it easier for me to copy paste.  Use whatever port mapping works for you.
