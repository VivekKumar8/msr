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
		    echo " The environment is ${params.WmCloudStreamsAnalytics}"
                sh "${WORKSPACE}/Build.sh ${params.WmJDBCAdapter} ${params.WmCloudStreamsAnalytics}"
		//   sh "${WORKSPACE}/Build.sh ${params.WmJDBCAdapter} /packages/wMPackages/WmCloudStreamsAnalytics"
            }
        }
		stage('Deploy'){
            steps {
                sh '${WORKSPACE}/Deploy.sh'
            }
        }
    }
}
