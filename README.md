# Server Stats Analysis Script

## This project provides a simple bash script, server-stats.sh, to analyze basic server performance statistics. The script fetches and displays:

1. Total CPU Usage
2. Total Memory Usage (Free vs Used, including percentage)
3. Total Disk Usage (Free vs Used, including percentage)
4. Top 5 Processes by CPU Usage
5. Top 5 Processes by Memory Usage

## Requirements

1. Linux-based operating system (Ubuntu, CentOS, etc.)
2. Bash shell

## Setup

1. clone the github repo

 ```python
 git clone https://github.com/Emezu/server.git
cd server
 ```

 2. Make the script Executable

 ```python
 chmod +x server-stats.sh
```

## Usage

RUN THE SCRIPT

```Python
./server-stats.sh
```

The script will display:

Total CPU usage as a percentage
Total memory usage in MB and percentage
Total disk usage in GB and percentage
Top 5 processes by CPU and memory usage

```python
Server Performance Stats

Total CPU Usage:
CPU Usage: 25%

Total Memory Usage:
Memory Usage: 65.32% (653MB Used / 1024MB Total)

Total Disk Usage:
Disk Usage: 78% (78GB Used / 100GB Total)

Top 5 Processes by CPU Usage:
PID   COMMAND   %CPU
1234  python    45.0
5678  java      32.0
...

Top 5 Processes by Memory Usage:
PID   COMMAND   %MEM
4321  mysql     40.0
8765  apache2   25.0
...
```

PROJECT URL 
```python
https://roadmap.sh/projects/server-stats
```

### Disclaimer
This script has been tested to improve server performance...or at least observe it while it gets tired. Just remember: with great power (and CPU usage) comes great responsibility! 😄

Happy Monitoring! 🎉
