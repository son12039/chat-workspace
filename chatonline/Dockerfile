# Maven을 설치할 기본 이미지 선택 (OpenJDK 17을 사용하는 Maven 이미지)
FROM maven:3.8.5-openjdk-17-slim AS builder

# 작업 디렉토리 설정
WORKDIR /app

# pom.xml과 소스 코드 복사
COPY pom.xml .
COPY src /app/src

# Maven 의존성 설치 및 빌드
RUN mvn clean package

# JAR 파일을 실행할 기본 이미지 설정 (OpenJDK 17을 사용하는 이미지)
FROM openjdk:17-slim

# 작업 디렉토리 설정
WORKDIR /app

# 빌드한 JAR 파일을 복사
COPY --from=builder /app/target/chatonline-0.0.1-SNAPSHOT.jar /app/chatonline-0.0.1-SNAPSHOT.jar

# JAR 파일을 실행할 명령어 설정
CMD ["java", "-jar", "chatonline-0.0.1-SNAPSHOT.jar"]
