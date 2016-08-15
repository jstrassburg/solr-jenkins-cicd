solr-jenkins-cicd
-----------------
Using Jenkins to build a CI/CD pipeline for Apache Solr.

Prepared for the [Lucene Solr Revolution 2016 Conference](http://lucenerevolution.org/)

Dependencies
------------
* [VirtualBox](http://virtualbox.org/)
* [Vagrant](http://vagrantup.com/)
* [Docker](http://docker.com/)


Getting up and running
----------------------
    ./start_jenkins_and_solr.sh

Then browse to Jenkins at [http://localhost:8080/](http://localhost:8080/) and login as admin:admin

To SSH to the Stage/Prod Vagrant Solr instances:

    ssh -p 2222 vagrant@localhost # stage
    ssh -p 2200 vagrant@localhost # prod
