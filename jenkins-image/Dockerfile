FROM demo/java

expose 8080
expose 8009

env JENKINS_HOME /jenkins
volume /jenkins

run mkdir /tmp/daemon && chown daemon:daemon /tmp/daemon && usermod -d /tmp/daemon daemon
run curl -L -O http://mirrors.jenkins-ci.org/war/latest/jenkins.war

user daemon
cmd ["java", "-jar", "/jenkins.war", "--httpPort=8080", "--ajp13Port=8009", "--webroot=/tmp/webroot"]
