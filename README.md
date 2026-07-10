# Linux Security Scripts

Collection of Bash scripts for Linux administration, authentication log analysis, brute-force detection and system monitoring.

The project contains lightweight command-line utilities for monitoring Linux systems, analyzing authentication logs and collecting basic security-related information.

## Scripts

### Alert_brute_force.sh

Detects IP addresses exceeding a configurable failed login threshold.

**Features**

- Parses `/var/log/auth.log`
- Counts failed SSH login attempts
- Displays suspicious IP addresses
- Configurable alert threshold

---

### Fail_login_detect.sh

Displays a summary of authentication failures.

**Features**

- Counts failed password attempts
- Counts invalid user login attempts
- Quick security overview

---

### IP_Counter.sh

Lists the most frequent source IP addresses found in failed SSH login attempts.

**Features**

- Parses authentication logs
- Counts failed login sources
- Sorts attackers by number of attempts

---

### system_monitor.sh

Displays a real-time system resource summary.

**Features**

- CPU usage
- Load average
- RAM usage
- Disk usage
- Top CPU-consuming processes

---

### uptime.sh

Displays the system uptime in a human-readable format.

**Features**

- Days
- Hours
- Minutes
- Seconds

## Technologies

- Bash
- GNU Coreutils
- awk
- grep
- sort
- uniq
- Linux system utilities

## Requirements

- Linux
- Bash
- Access to `/var/log/auth.log`
- Standard GNU utilities

Some scripts may require root privileges or membership in the `adm` group to read authentication logs.

## Usage

```bash
chmod +x *.sh

./system_monitor.sh
./Alert_brute_force.sh
./IP_Counter.sh
./Fail_login_detect.sh
./uptime.sh
```

## Future Improvements

- Automatic email alerts
- Slack/Discord notifications
- GeoIP lookup for attacking IP addresses
- HTML security reports
- Automatic firewall blocking (iptables / nftables)
- Fail2Ban integration
- Log rotation support

## License

MIT License
