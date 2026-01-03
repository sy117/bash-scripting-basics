# Bash Scripting Basics

A collection of bash scripting examples and practice problems to learn shell scripting fundamentals.

## Project Structure

```
bash-scripting-basics/
├── examples/              # Tutorial scripts and examples
│   ├── arrays.sh
│   ├── backup_script.sh
│   ├── case_statement.sh
│   ├── data_streams.sh
│   ├── exit_codes.sh
│   ├── for_loop.sh
│   ├── functions.sh
│   ├── if_condition.sh
│   ├── package_upgrade.sh
│   ├── scheduled_job.sh
│   ├── while_loop.sh
│   └── logFiles/          # Example log files
│
└── practice-problems/     # 15 practice problems organized by difficulty
    ├── beginner/          # Problems 1-4: Shell fundamentals & File I/O
    │   ├── file_analyzer/
    │   ├── safe_file_writer/
    │   ├── directory_cleaner/
    │   └── env_var_inspector/
    │
    ├── intermediate/      # Problems 5-9: Processes, Git, SSH, Networking
    │   ├── ssh_agent_validator/
    │   ├── git_config_auditor/
    │   ├── git_branch_cleanup/
    │   ├── port_scanner/
    │   └── network_health_checker/
    │
    └── advanced/          # Problems 10-15: System, Hardware, Signals, Automation
        ├── hardware_reporter/
        ├── process_watchdog/
        ├── cron_installer/
        ├── signal_aware/
        ├── resource_monitor/
        └── secure_backup/
```

## Examples

The `examples/` directory contains tutorial scripts covering various bash scripting concepts:

- **Arrays** - Working with arrays
- **Conditionals** - if/else statements
- **Loops** - for and while loops
- **Functions** - Function definitions and usage
- **Case Statements** - Switch-case logic
- **Data Streams** - Input/output redirection
- **Exit Codes** - Handling command exit status
- **Backup Scripts** - File backup examples
- **Scheduled Jobs** - Cron job examples

## Practice Problems

The `practice-problems/` directory contains 15 structured problems organized by difficulty level. Each problem includes:

- Problem description (`problem.md` file)
- Solution script (`soln_script.sh` file)
- Example usage in comments

### Beginner (Problems 1-4)

**Shell fundamentals & File I/O**

1. **File Analyzer** - Analyzes a file and prints line count, word count, and character count.
2. **Safe File Writer** - Writes text to a file with file locking to prevent concurrent writes, including timestamped entries.
3. **Directory Cleaner** - Deletes files older than N days recursively, with optional dry-run mode.
4. **Environment Variable Inspector** - Prints all environment variables sorted alphabetically, with optional prefix filtering.

### Intermediate (Problems 5-9)

**Processes, Git, SSH, Networking**

5. **SSH Agent Validator** - Checks if ssh-agent is running, starts it if needed, and verifies keys are loaded.
6. **Git Configuration Auditor** - Validates and sets git global configuration (user.name, user.email, core.editor).
7. **Git Branch Cleanup Tool** - Lists and deletes merged branches with user confirmation.
8. **Port Usage Scanner** - Finds which process is using a given port (works on Linux & macOS).
9. **Network Health Checker** - Pings multiple hosts and displays a summary table with response times.

### Advanced (Problems 10-15)

**System, Hardware, Signals, Automation**

10. **Hardware Configuration Reporter** - Prints CPU model, RAM, disk size, and architecture.
11. **Process Watchdog** - Monitors a process and restarts it if it crashes, with logging.
12. **Cron Job Installer** - Installs cron jobs while avoiding duplicates, with uninstall support.
13. **Signal-Aware Script** - Handles SIGINT and SIGTERM signals with cleanup on exit.
14. **System Resource Monitor** - Logs CPU, memory, and disk usage with log rotation.
15. **Secure Backup Script** (Capstone) - Archives, compresses, encrypts, and uploads backups with integrity verification.

## Usage

Each script can be run directly. Check the comments in each script for example usage:

```bash
# Example: File Analyzer
./practice-problems/beginner/file_analyzer/soln_script.sh path/to/file.txt

# Example: Safe File Writer
./practice-problems/beginner/safe_file_writer/soln_script.sh logfile.txt "Message"

# Example: Directory Cleaner
./practice-problems/beginner/directory_cleaner/soln_script.sh /path/to/directory 7 --dry-run
```

## Requirements

- Bash shell
- Unix-like operating system (Linux, macOS)
- For Problem 2: `flock` command (install via `brew install util-linux` on macOS)
- For Intermediate/Advanced problems: Various system tools (git, ssh, lsof, etc.)

## Learning Path

1. Start with **Examples** to understand basic concepts
2. Work through **Beginner** problems (1-4)
3. Progress to **Intermediate** problems (5-9)
4. Tackle **Advanced** problems (10-15) when ready

## License

This is a learning project. Feel free to use and modify for educational purposes.
