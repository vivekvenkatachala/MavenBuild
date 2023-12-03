node() {
	stage('Code Checkout'){
	       checkout scm
	}
	
	stage('Build'){
		sh "mvn clean install -Dmaven.test.skip=true"
	}
	
	stage ('Test case Eexecution'){
	        sh "mvn clean org.jacoco-maven-plugin:prepare-agent install -Pcoverage-per-test"
		
	}
	stage('Archive Artifact'){
	       archiveArtifacts artifacts: 'target/*.war'
	      
        }
	
	stage('Code Deployment'){
		deploy adapters: [tomcat8(credentialsId: '801cd8f0-c34e-49d3-8f21-26d9faca7c84', path: '', url: 'http://localhost:8081//')], contextPath: 'counterwebapp', war: 'target/*.war'
	}
}
