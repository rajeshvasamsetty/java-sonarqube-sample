#!/bin/bash
echo $NEXUS_HOSTNAME
echo $NEXUS_USERNAME
echo "This is Nexu hostname: $NEXUS_HOSTNAME"
echo "This is Nexxuss username: $NEXUS_USERNAME"
echo "This is Sonar Hostname: $SONAR_HOSTNAME"
echo "This is Sonar Token: $SONAR_TOKEN"
#mvn -U -s settings.xml -Dmaven.package.skip=true -Dmaven.test.skip=true -Dmaven.compile.skip=true deploy
#mvn -U -s settings.xml -Dmaven.package.skip=true -Dmaven.test.skip=true -Dmaven.compile.skip=true deploy sonar:sonar -Dsonar.host.url=http://13.229.133.70:9000 -Dsonar.login=$SONAR_TOKEN -Dsonar.projectName=sonar-report
mvn -U -s settings.xml -Dmaven.package.skip=true -Dmaven.test.skip=true -Dmaven.compile.skip=true deploy sonar:sonar -Dsonar.login=$SONAR_TOKEN -Dsonar.projectName=sonar-report -Dsonar.issuesReport.html.enable=true
