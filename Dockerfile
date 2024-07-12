FROM maven:3.9.8 AS builder
WORKDIR /app/atividade5-2
COPY pom.xml .
COPY src ./src
RUN mvn clean install

FROM eclipse-temurin:21.0.3_9-jre AS runner
WORKDIR /app/atividade5-2
COPY --from=builder /app/atividade5-2/target/inf335-atividade5_2-1.0-SNAPSHOT.jar /app/atividade5-2
CMD ["/opt/java/openjdk/bin/java", "-cp","inf335-atividade5_2-1.0-SNAPSHOT.jar","br.unicamp.ic.inf335.OlaUnicamp"]