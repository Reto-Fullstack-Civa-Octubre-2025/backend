# Etapa 1: Runtime
FROM eclipse-temurin:21-jdk-alpine
# Crear un directorio para la app
WORKDIR /app
# Copiar el archivo JAR generado por Maven al contenedor
# Nota: Asegúrate de que el nombre coincida con el de tu pom.xml
COPY target/*.jar app.jar
# Exponer el puerto de Spring Boot
EXPOSE 8080
# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]