solr-jenkins-cicd
-----------------
Using Jenkins to build a CI/CD pipeline for Apache Solr.

Prepared for the [Lucene Solr Revolution 2016 Conference](http://lucenerevolution.org/)

Dependencies
------------
* [VirtualBox](http://virtualbox.org/)
* [Vagrant](http://vagrantup.com/)
* [Docker](http://docker.com/) - Docker for OSX's default 2G memory wasn't enough. I bumped to 8G.


Getting up and running
----------------------
    ./start_jenkins_and_solr.sh

Then browse to Jenkins at [http://localhost:8080/](http://localhost:8080/) and login as admin:admin

To SSH to the Stage/Prod Vagrant Solr instances:

    vagrant ssh stage
    vagrant ssh prod

Deploy Solr
-----------
In Jenkins, trigger the `Solr Pipeline` build and then browse to:
* Stage at [http://localhost:8983/solr](http://localhost:8983/solr)
* Prod at [http://localhost:8984/solr](http://localhost:8984/solr)
