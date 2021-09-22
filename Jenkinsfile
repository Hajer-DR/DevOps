

pipeline {
 agent any
	/*environment { 
                AN_ACCESS_KEY = credentials('aws-jenkins-credentials') 
		registry ="katsudoka/ecommerce"
            }*/
 
 options {
  skipDefaultCheckout()
 }
 stages {
  stage('SCM') {
   steps {
    checkout scm
   }
  }
 
  /*  stage('Unit Tests') {


   agent {
    docker {
     image 'maven:3.6.0-jdk-8-alpine'
     args '-v /root/.m2/repository:/root/.m2/repository'
     reuseNode true
    }
   }
   steps {
    sh 'mvn test'
   }
 //  post {
 //   always {
 //    junit 'target/failsafe-reports-/*.xml'
 //   }
 //  }
  }*/
	
	
  /* stage('Integration Tests') {  
   agent {
    docker {
     image 'maven:3.6.0-jdk-8-alpine'
     args '-v /root/.m2/repository:/root/.m2/repository'
     reuseNode true
    }
   }
   steps {
    sh 'mvn verify -Dsurefire.skip=true'
   }
   post {

    success {
     stash(name: 'artifact', includes: 'target/*.jar')
     stash(name: 'pom', includes: 'pom.xml')
     // to add artifacts in jenkins pipeline tab (UI)
     archiveArtifacts 'target/*.jar'
     //sh 'aws configure set region us-east-2'
     //sh 'aws s3 cp ./target/*.jar s3://devops-project2.0/artifact.jar'
    }
   } 
}*/
	/* stage ('deployToS3')
{
   steps { 
      withCredentials([<object of type com.cloudbees.jenkins.plugins.awscredentials.AmazonWebServicesCredentialsBinding>]) {
      sh "aws s3 ls"
    sh "aws s3 mb s3://devops-project2.0"
    sh "aws s3 cp target/*.jar s3://devops-project2.0"
        sh 'aws --version'    
  } 
   
   }*/
	 
   stage ('DeployTo'){
		
	steps{
	 sh 'aws --version'
	 sh "aws s3 mb s3://devops-project2"
   	 sh "aws s3 cp target/*.jar s3://devops-project2"     		 
	 }		 
 }	
	 
/*stage('Publish docker image to dockerhub with our app updated') {
            environment {
                registryCredential = 'Dockerhub_credetials'
            }
            steps{
                script {
                    
                    def appimage = docker.build registry + ":$BUILD_NUMBER"
                    docker.withRegistry( '', registryCredential ) {
                        appimage.push()
                        appimage.push('latest')
                    }
                }
            }
        }*/

					      
}
  }
