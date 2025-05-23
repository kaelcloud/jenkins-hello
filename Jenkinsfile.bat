pipeline {
    agent any

    environment {
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning code from GitHub...'
                checkout scm
            }
        }

        stage('Install') {
            steps {
                echo 'Installing dependencies...'
                sh 'npm install'  // Tukar ke 'bat' kalau di Windows agent
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                echo 'Building app...'
                sh 'npm run build'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Simulating deployment...'
                sh 'cp -r build /var/www/my-app'  // Tukar ikut server sebenar anda
            }
        }
    }

    post {
        success {
            echo '✅ Pipeline succeeded!'
        }
        failure {
            echo '❌ Pipeline failed!'
        }
    }
}
