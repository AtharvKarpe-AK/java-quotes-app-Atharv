# 1 Base Image

FROM openjdk:17-jdk-alpine

# 2 Working directory

WORKDIR /app

# 3 Copy Code from your host to Container to create app

COPY src/Main.java /app/Main.java

COPY quotes.txt /app/quotes.txt

# 4 Run libraries or compile the code

RUN javac Main.java

# 5 Expose the code to specific port

EXPOSE 8000

# 6 Serve the app to keep it running

CMD ["java","Main"]

