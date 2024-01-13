#Getting base image
FROM openjdk:11

#Working directory where all code will be kept
WORKDIR app/

#Copy the app in the current directory of container
COPY Main.java .

#Compile code
RUN javac Main.java

#Run java compiled code
CMD ["java","Main"]
