pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo 'Cloning repository...'
                bat 'git clone https://github.com/kaelcloud/jenkins-hello.git'
            }
        }
        stage('Install') {
            steps {
                echo 'Installing dependencies...'
                bat 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                bat 'npm test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building project...'
                bat 'npm run build'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                bat 'echo Deploying... (placeholder)' // Letak arahan sebenar kalau ada
            }
        }
    }
}
