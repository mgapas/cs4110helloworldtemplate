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
			}
		}
		stage('Grade') {
			steps {
				echo 'Grading....'
			}
		}
	}
}
