pipeline {
    agent any 

    stages {
        stage('Initialize'){
            steps {
                sh 'chmod -R 777 ${WORKSPACE}'
            }
        }
		stage('Build'){
            steps {
                sh '${WORKSPACE}/Build.sh ${params.WmJDBCAdapter} ${params.WmCloudStreamsAnalytics}'
            }
        }
		stage('Deploy'){
            steps {
                sh '${WORKSPACE}/Deploy.sh'
            }
        }
    }
}
