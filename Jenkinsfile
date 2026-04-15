pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION = 'ap-south-1'
    }

    triggers {
        pollSCM('H/5 * * * *')
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Terraform Init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Validate') {
            steps {
                dir('terraform') {
                    sh 'terraform validate'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                input message: 'Proceed with Terraform Apply?'
                dir('terraform') {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }

    post {
        success {
            echo 'Terraform pipeline completed successfully.'
        }
        failure {
            echo 'Terraform pipeline failed.'
        }
    }
}
