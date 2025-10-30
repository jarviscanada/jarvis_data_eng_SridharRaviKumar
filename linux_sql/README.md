#  Linux Cluster Monitoring Agent (LCA)

## ?? Introduction
The **Linux Cluster Monitoring Agent (LCA)** is a distributed monitoring solution designed to track hardware specifications and resource usage across multiple Linux hosts.  
It automatically collects system information and stores it in a central PostgreSQL database containerized using Docker. This data helps administrators analyze cluster performance, identify resource bottlenecks, and support capacity planning.

**Technologies used:** Bash, Docker, PostgreSQL, Git, Cron, Linux CLI.

---

## Quick Start

```bash
# 1. Start PostgreSQL using the docker management script
bash linux_sql/scripts/psql_docker.sh start

# 2. Create database and tables
psql -h localhost -U postgres -f linux_sql/ddl.sql

# 3. Insert host hardware information
bash linux_sql/scripts/host_info.sh localhost 5432 host_agent postgres password

# 4. Insert host usage information (manual run)
bash linux_sql/scripts/host_usage.sh localhost 5432 host_agent postgres password

# 5. Schedule automatic execution every minute (Cron)
* * * * * bash /home/rocky/dev/jarvis_data_eng_SridharRaviKumar/linux_sql/scripts/host_usage.sh localhost 5432 host_agent postgres password >> /tmp/host_usage.log 2>&1
