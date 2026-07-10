## Scripts

### alert_brute_force.sh

Detects IP addresses exceeding a configurable failed login threshold.

**Features**

- Parses `/var/log/auth.log`
- Counts failed SSH login attempts
- Displays suspicious IP addresses
- Configurable alert threshold

---

### fail_login_detect.sh

Displays a summary of authentication failures.

**Features**

- Counts failed password attempts
- Counts invalid user login attempts
- Quick security overview

---

### ip_counter.sh

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

## Usage

```bash
chmod +x *.sh

./alert_brute_force.sh
./fail_login_detect.sh
./ip_counter.sh
./system_monitor.sh
./uptime.sh
```
