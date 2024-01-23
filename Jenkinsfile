pipeline {
    agent any

    stages {
        stage('SonarQube Analysis') {
            steps {
                script {
                    def scannerHome = tool 'sonarqubecloud-configure-tools'
                    withSonarQubeEnv('sonarqubecloud') {
                        sh "${scannerHome}/bin/sonar-scanner"
                    }
                }
            }
        }

        stage('Execute bash.sh') {
            steps {
                sh 'chmod 777 bash.sh'
                sh './bash.sh'
            }
        }
    }
}
