FROM openjdk:8
RUN apt-get update -y
RUN apt-get install git -y
RUN git clone https://github.com/spring-projects/spring-petclinic.git
WORKDIR /spring-petclinic
RUN ./mvnw package
RUN /spring-petclinic/target
EXPOSE 8081
CMD ["java", "-jar", "spring-petclinic-2.4.2.jar"]
