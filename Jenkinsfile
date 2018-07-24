// Jenkinsfile for HelloWorld in CS 4110
// 24 July 18: fixed problem with reports not being emailed
//   on failed builds or errors found by Cucumber
pipeline {
	agent any

	stages {
		stage('Build') {
			steps {
				echo 'Building..'
				sh 'javac HelloWorld.java'
			}
			post {
				failure {
					echo 'Sending console log to submitter'
					sh 'cs4110sendlog "Build failed"'
				}
			}
		}
		stage('Test') {
			steps {
				echo 'Testing..'
				sh 'java HelloWorld'
				sh 'cucumber -s -c >cucumber.out'
			}
			post {
				always {
					echo 'Reporting to the student....'
					sh "cs4110report $WORKSPACE $GIT_COMMIT"
					echo 'Grading the assignment....'
					sh "cs4110grade $WORKSPACE $GIT_COMMIT"
				}
			}
		}
	}
}
