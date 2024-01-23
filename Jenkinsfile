pipeline {
    agent any
    
    stages {
        stage('build') {
            steps {
                echo 'Building...'
            }
        }
        
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
    }
}
