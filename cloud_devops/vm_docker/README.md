# Azure VM Docker Deployment

## Objective

The goal of this section is to deploy a Dockerized application on an Azure Virtual Machine and understand how a backend application, database, networking, ports, and persistent storage work together.

The originally provided Spring Boot trading app depended on IEX Cloud, which has been deprecated. Based on instructor guidance, I substituted it with another Dockerized Spring Boot trading application and deployed it on Azure VM.

---

## Architecture

```text
Browser / Swagger UI
        |
        | HTTP request
        v
Azure VM Public IP : 5000
        |
        v
Spring Boot Trading App Container : 8080
        |
        | Docker bridge network: trading-net
        v
PostgreSQL Container : 5432
        |
        v
Docker Volume: trading-psql-data

# Technologies Used
Microsoft Azure Virtual Machine
Ubuntu Linux
SSH
Docker
Docker bridge network
PostgreSQL container
Spring Boot application container
Finnhub API
Docker named volume

# Key Learnings
A VM is a cloud computer where we can install and run software.
Docker allows applications to run in isolated containers.
A Docker bridge network allows containers to communicate using container names.
Environment variables are used to pass configuration into containers.
PostgreSQL is stateful, so its data should be stored in a Docker volume.
App and database versions must match their expected schema.
Logs are important for debugging real deployment issues.
Public access requires both Docker port mapping and Azure inbound port rules.

Final Result

The deployment was successful. The Spring Boot trading application is running in a Docker container on an Azure VM, and it can communicate with the PostgreSQL database container through a Docker bridge network. The application is accessible from the browser via the VM's public IP address on port 5000, and it can perform CRUD operations on the database as expected.