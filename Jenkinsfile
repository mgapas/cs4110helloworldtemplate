// Jenkinsfile for HelloWorld in CS 4110
pipeline {
	agent any

	stages {
		stage('Build') {
			steps {
				echo 'Building..'
				sh 'javac HelloWorld.java'
			}
		}
		stage('Test') {
			steps {
				echo 'Testing..'
				sh 'cucumber -s -c >cucumber.out'
				sh 'cat cucumber.out'
				sh 'ansifilter -H -i cucumber.out -o cucumber.html'
				sh 'ansifilter -R -i cucumber.out -o cucumber.rtf'
			}
		}
		stage('Report') {
			steps {
				echo 'Reporting to the student....'
				sh "cs4110report $WORKSPACE $GIT_COMMIT"
			}
		}
		stage('Grade') {
			steps {
				echo 'Grading the assignment....'
				sh "cs4110grade $WORKSPACE $GIT_COMMIT"
			}
		}
	}
}
