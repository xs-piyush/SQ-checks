pipeline {
    agent any
     stages {
        stage('build') {
            steps {
                withEnv([sonarqubecloud]) {
                        echo "hello Sonarqube"
                }
            }
        }
        stage('SonarQube Analysis') {
            def scannerHome = tool 'sonarqubecloud-configure-tools';
            withSonarQubeEnv() {
            sh "${scannerHome}/bin/sonar-scanner"
            }
        }
    }
}
