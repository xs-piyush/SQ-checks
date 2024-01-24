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
        
        stage('Choose Distribution') {
            steps {
                script {
                    def value
                    if (params.dist == 'value=beamUser') {
                        value = 'beamUser'
                    } else if (params.dist == 'value=beamAdmin') {
                        value = 'beamAdmin'
                    }
                    
                    echo "Building for distribution: ${params.dist}"
                    sh "chmod 777 bash.sh"
                    sh "./bash.sh $value"
                }
            }
        }
    }
}
