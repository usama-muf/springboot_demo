// node {
//   stage("Clone the project") {
//     git branch: 'main', url: 'https://github.com/usama-muf/springboot_demo.git'
//   }

//   stage("Compilation") {
//     // bat "./mvnw clean install -DskipTests"
//     bat "mvn clean package"
//     echo "done"
//   }

//   // stage("Tests and Deployment") {
//   //   stage("Runing unit tests") {
//   //     bat "./mvnw test -Punit"
//   //   }
//   //   stage("Deployment") {
//   //     bat 'nohup ./mvnw spring-boot:run -Dserver.port=8001 &'
//   //   }
//   // }
// }
node {
    def WORKSPACE = "C:\Users\usama\AppData\Local\Jenkins\.jenkins\workspace\springboot-docker-pipeline"
    def dockerImageTag = "springboot-deploy${env.BUILD_NUMBER}"
    notifyBuild('STARTED')
    stage('Clone Repo') {
        // for display purposes
        // Get some code from a GitHub repository
        git branch: 'main', credentialsId: '5400ece4-0eac-41b2-8910-f2c9310963c4', url: 'https://github.com/usama-muf/springboot_demo.git'

     }
    stage('Build docker') {
         dockerImage = docker.build("springboot-docker-deploy:${env.BUILD_NUMBER}")
    }
    stage('Deploy docker'){
          echo "Docker Image Tag Name: ${dockerImageTag}"
          sh "docker stop springboot-deploy || true && docker rm springboot-deploy || true"
          sh "docker run --name springboot-deploy -d -p 8081:8081 springboot-deploy:${env.BUILD_NUMBER}"
    }

 
}
