FROM sonarqube:6.7.5
ENV SONAR_JAVA_VERSION=5.2.0.13398

RUN wget -P $SONARQUBE_HOME/extensions/plugins/ --no-verbose http://central.maven.org/maven2/org/sonarsource/java/sonar-java-plugin/$SONAR_JAVA_VERSION/sonar-java-plugin-$SONAR_JAVA_VERSION.jar
ADD target/sonar-findbugs-plugin.jar $SONARQUBE_HOME/extensions/plugins/
