# Linux Cluster Monitoring Agent (LCA)

> **A Bash- and Docker-based monitoring solution for Linux servers.**  
> Collects hardware specs and resource usage data from multiple hosts and stores them in a centralized PostgreSQL database for performance tracking and analysis.

---

## Introduction
The **Linux Cluster Monitoring Agent (LCA)** automates data collection from multiple Linux servers. It gathers both static hardware specifications and dynamic usage metrics (CPU, memory, disk) and stores them in a central PostgreSQL database containerized via Docker.  
This system enables system administrators and DevOps engineers to analyze infrastructure performance, detect anomalies, and plan for resource optimization.

**Technologies used:** Bash, Docker, PostgreSQL, Git, Cron, Linux CLI.

---

## Quick Start

```bash
# 1. Start PostgreSQL using the docker management script
bash linux_sql/scripts/psql_docker.sh start

# 2. Create the database and tables
psql -h localhost -U postgres -f linux_sql/ddl.sql

# 3. Insert host hardware information
bash linux_sql/scripts/host_info.sh localhost 5432 host_agent postgres password

# 4. Insert host usage information (manual run)
bash linux_sql/scripts/host_usage.sh localhost 5432 host_agent postgres password

# 5. Schedule automatic execution every minute (Cron)
* * * * * bash /home/rocky/dev/jarvis_data_eng_SridharRaviKumar/linux_sql/scripts/host_usage.sh localhost 5432 host_agent postgres password >> /tmp/host_usage.log 2>&1

