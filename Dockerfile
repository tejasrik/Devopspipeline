FROM openjdk:8
EXPOSE 8080
ADD target/*.jar devops-assignment.jar

ENTRYPOINT ["java" ,"-jar", "/devops-assignment.jar"]
CMD while true; do echo 'Hit CTRL+C'; sleep 1; done
