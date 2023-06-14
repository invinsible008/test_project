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
    stage('3Test+Build'){
      steps{
        sh "echo 'running JUnit-test-cases'"
        sh "echo 'testing must passed to create artifacts ' "
        sh "mvn clean package"
      }
    }
    
    stage('4CodeQuality'){
      steps{
        sh "echo 'Perfoming CodeQualityAnalysis' "
        sh "mvn sonar:sonar"
      }
    }
    stage('5uploadNexus'){
      steps{
        sh "mvn deploy"
      }
    } 
}
}
