pipeline {
    agent any
    stages {
        stage('Zip Teste') {
            steps {
                sh '''
                    rm -rf teste
                    mkdir teste
                    zip -r teste.zip teste
                    mv teste.zip /tmp/
                '''
            }
        }
        stage('Git Clone and Copy') {
            steps {
                sh '''
                    git clone https://github.com/lucasrossetto/aws.git
                    rsync -avhH --delete aws /tmp/
                    rm -rf aws
                '''
            }
        }
    }
}
