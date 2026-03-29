# Open Source Audit 

This project contains a set of Bash scripts that I created as part of my Open Source Software coursework.  
The goal was to explore how open-source tools work on a Linux system and to understand system-level operations in a practical way.

---

## Author
**Harsh Pratap Singh Parihar  (24MIM10012)**,
**Course: Open Source Software**  

---

## What this project does

Instead of just studying theory, this project focuses on actually interacting with the system using shell scripting.  
Each script performs a small but meaningful task related to system auditing and open-source tools.

---

## Scripts Included

### script1.sh — System Identity Report
This script prints basic information about the system, like:
- Linux distribution
- Kernel version
- Current user
- Home directory
- Uptime and date

It also includes a note about the open-source license used in the system.

**Run using:**
```bash
./script1.sh
```

### script2.sh — FOSS Package Inspector
This script checks whether a package (default: python3) is installed using dpkg.

If the package is found, it shows:

Version
Status
Description

It also prints a small philosophy line related to the package.
**Run using:**
```bash
./script2.sh
```

### script3.sh — Disk and Permission Auditor
This script audits important system directories and displays:

Permissions
Owner and group
Disk usage

Directories included:
/etc, /var/log, /home, /usr/bin, /tmp

It also checks Python’s configuration directory (/etc/python3).

**Run using:**
```bash
./script3.sh
```

### script4.sh — Log File Analyzer
This script scans a log file for a keyword (default: "error").

It provides:

Total number of matching lines
Last 5 matching lines

Note: You may need sudo to access system logs.

**Run using:**
```bash
sudo ./script4.sh /var/log/syslog "error"
```

### script5.sh — Open Source Manifesto Generator
This is an interactive script that asks a few simple questions and generates a personalized open-source manifesto.

It saves the output in a file like:
manifesto_username.txt

**Run using:**
```bash
./script5.sh
```

## Requirements
Kali Linux or any Debian-based system
Bash shell
Basic Linux utilities (grep, awk, du, ls, etc.)
Sudo access (only for script4)

