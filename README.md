# Daily Cloud Health Check Automation

This project automates daily health checks on an AWS EC2 instance.

## Features
- CPU, memory, and disk usage monitoring
- Automated daily execution using cron
- Log generation for auditing
- CloudWatch CPU alarm with SNS email alerts

## Tools Used
- AWS EC2
- CloudWatch
- SNS
- Linux
- Bash
- cron

## Automation
The script runs daily using cron:
0 9 * * * /home/ubuntu/cloud-health-check/scripts/health_check.sh
