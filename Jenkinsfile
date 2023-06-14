pipeline{
  agent any 
  tools {
    maven "maven3.9.2"
  }  
  stages {
    stage('1GetCode'){
      steps{
        sh "echo 'cloning the latest application version' "
        git branch: 'testing', url: 'https://github.com/invinsible008/test_project.git'
      }
    }
    stage('2Test+Build'){
      steps{
        sh "echo 'running JUnit-test-cases'"
        sh "echo 'testing must passed to create artifacts ' "
        sh "mvn clean package"
      }
    }
    
    stage('3CodeQuality'){
      steps{
        sh "echo 'Perfoming CodeQualityAnalysis' "
        sh "mvn sonar:sonar"
      }
    }
    stage('4uploadNexus'){
      steps{
        sh "mvn deploy"
      }
    } 
    
   stage('5Deploy-to-testing-environment'){
      steps{
        sh "echo 'deploy to testing environment'"
        deploy adapters: [tomcat9(credentialsId: 'tomcat_credentials', path: '', url: 'http://3.239.218.90:8080/')], contextPath: null, war: 'target/*war'
   }
   }
}
}
