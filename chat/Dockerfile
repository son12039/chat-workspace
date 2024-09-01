# 베이스 이미지로 OpenJDK를 사용합니다.
FROM openjdk:17-jdk-slim

# JAR 파일을 컨테이너로 복사합니다.
COPY target/myapp.jar /app/myapp.jar

# 작업 디렉토리를 /app으로 설정합니다.
WORKDIR /app

# 애플리케이션을 실행합니다.
ENTRYPOINT ["java", "-jar", "myapp.jar"]
