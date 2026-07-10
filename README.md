# Log Analyzer

A simple Bash script that analyzes an Nginx access log and displays:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 User Agents

## Requirements

- Bash
- awk
- sort
- uniq
- head

## Usage

Make the script executable:

```bash
chmod +x analyze.sh
```

Run the script:

```bash
./analyze.sh
```

## Project URL

https://roadmap.sh/projects/nginx-log-analyser