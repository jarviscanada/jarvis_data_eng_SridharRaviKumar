# Linux Cluster Monitoring Agent (LCA)

> A Bash- and Docker-based monitoring solution for Linux servers that collects hardware specifications and system usage data, storing them in a centralized PostgreSQL database.

## Table of Contents
- [Introduction](#-introduction)
- [Quick Start](#️-quick-start) 
- [Architecture](#-architecture)
- [Implementation](#-implementation)
- [Testing](#-testing)
- [Deployment](#-deployment)
- [Improvements](#-improvements)
- [Author](#-author)

1. [**Linux Cluster Monitoring Agent (Linux & SQL)**](./linux_sql)   
   > Develop a Bash and SQL-based agent to monitor and store real-time system metrics.

2. [**Core Java Applications**](./core_java)  
   > Build foundational Java applications focusing on OOP principles, exception handling, and data processing.

3. [**Python Data Analytics**](./python_data_analytics)  
   > Perform data cleaning, analysis, and visualization using Python and popular data science libraries.

4. [**Spring Boot Trading REST API**](./springboot)  
   > Design a RESTful trading API using Spring Boot, integrating PostgreSQL and external market data APIs.

5. [**JavaScript Front End**](./javascript)  
   > Develop dynamic and responsive web components using modern JavaScript frameworks.

6. [**Cloud / DevOps**](./cloud_devops)  
   > Deploy and manage cloud infrastructure, CI/CD pipelines, and Dockerized applications.


## Architecture
The LCA collects data from multiple Linux hosts and sends it to a centralized PostgreSQL instance running in Docker.
![Linux Cluster Architecture](./assets/Sri_Architecture_Diagram.png)


### Scripts Overview
| Script | Purpose | Description |
|--------|---------|-------------|
| psql_docker.sh | Database Setup | Manages PostgreSQL container lifecycle |
| host_info.sh | Hardware Collection | Gathers static server specifications |
| host_usage.sh | Usage Collection | Collects real-time resource metrics |
| crontab | Scheduling | Automates periodic data collection |
| queries.sql | Analytics | SQL queries for performance analysis |

### Database Schema

**host_info Table:**
| Column | Type | Description |
|--------|------|-------------|
| id | SERIAL PRIMARY KEY | Host identifier |
| hostname | VARCHAR | Server FQDN |
| cpu_number | INT | CPU core count |
| cpu_architecture | VARCHAR | CPU architecture |
| cpu_model | VARCHAR | CPU model name |
| cpu_mhz | DECIMAL | CPU frequency |
| l2_cache | INT | L2 cache size (KB) |
| total_mem | INT | Total memory (MB) |
| created_at | TIMESTAMP | Record timestamp |

**host_usage Table:**
| Column | Type | Description |
|--------|------|-------------|
| timestamp | TIMESTAMP | Collection time |
| host_id | INT (FK) | References host_info.id |
| memory_free | INT | Available memory (MB) |
| cpu_idle | INT | CPU idle percentage |
| cpu_kernel | INT | Kernel CPU usage (%) |
| disk_io | BIGINT | I/O operations count |
| disk_available | INT | Free disk space (MB) |

## Testing
- Validated PostgreSQL container deployment
- Verified database schema creation
- Tested data collection scripts
- Confirmed Cron job scheduling
- Validated data integrity through SQL queries

## Deployment
- Docker container for PostgreSQL
- Bash scripts distributed across hosts
- Cron-based automation
- GitHub for version control

## Improvements
1. Implement alerting system
2. Create visualization dashboard
3. Add data retention policies
4. Enhance security measures
5. Integrate CI/CD pipeline

## Author
Sridhar Ravi Kumar  
Data Engineering Trainee - Jarvis Consulting Group  
Ontario, Canada
