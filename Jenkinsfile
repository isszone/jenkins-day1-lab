pipeline {
    agent any
    options { buildDiscarder(logRotator(numToKeepStr: '5')) }
    stages {
        stage('Build') {
            steps {
                echo "Branch: ${env.BRANCH_NAME}"
                sh 'bash build.sh'
            }
        }
        stage('Test') {
            steps {
                sh 'bash test.sh'
            }
        }
        stage('Deploy') {
            when { branch 'main' }
            steps {
                echo "Deploying build ${BUILD_NUMBER} from main"
            }
        }
    }
}
