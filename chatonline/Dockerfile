# 베이스 이미지로 Maven과 OpenJDK를 포함한 이미지를 사용합니다.
FROM maven:3.8.5-openjdk-17-slim

# 작업 디렉토리 설정
WORKDIR /app

# pom.xml과 소스 코드 복사
COPY pom.xml .
COPY src /app/src

# 의존성 설치 및 빌드
RUN mvn clean package

# JAR 파일을 실행할 명령어 설정
CMD ["java", "-jar", "target/myapp.jar"]
