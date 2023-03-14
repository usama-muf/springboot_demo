node {
  stage("Clone the project") {
    git branch: 'main', url: 'https://github.com/usama-muf/springboot_demo.git'
  }

  stage("Compilation") {
    // bat "./mvnw clean install -DskipTests"
    bat "./mvnw clean package -DskipTests"
    echo "done"
  }

  stage("Tests and Deployment") {
    stage("Runing unit tests") {
      bat "./mvnw test -Punit"
    }
    stage("Deployment") {
      bat 'nohup ./mvnw spring-boot:run -Dserver.port=8001 &'
    }
  }
}
