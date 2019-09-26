FROM jenkins/jenkins:2.195-centos
MAINTAINER liuchang 1576406464@qq.com
COPY --chown=jenkins ./lc /var/jenkins_opt/plugins
ENTRYPOINT ["/bin/bash","-c","cp -r /var/jenkins_opt/plugins/ /var/jenkins_home/plugins/;tini -- /usr/local/bin/jenkins.sh"]
