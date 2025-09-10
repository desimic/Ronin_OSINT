# Ronin OSINT Demo

## Objective
Demonstrate how open source intelligence tools can identify threat actors like the Lazarus Group, using the Ronin Bridge Hack as a real-world case study.

## Stack
- SpiderFoot (OSINT scanner)
- Docker
- GitHub
- NTFY (optional alerting)
- MITRE ATT&CK + AADAPT for emulation

## Quick Start

```bash
docker-compose -f docker/docker-compose.yaml up --build
```

## Run a Scan

```bash
docker exec -it spiderfoot python3 sf.py -s ronin.network -o csv -m ip,domain,whois -F output/ronin_lazarus_report.csv
```

## Send Alert

```bash
python3 alerts/ntfy_alert_handler.py
```

## Emulation Plan
See `threat_emulation/` for details on MITRE and AADAPT.