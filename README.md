# Task 2: Basic Firewall Configuration with UFW

## Objective

The goal of this task was to configure a basic firewall on Ubuntu Linux using UFW (Uncomplicated Firewall). The firewall was configured to allow SSH connections while blocking HTTP traffic and then verifying that the rules were applied successfully.

## About UFW

UFW is a command-line utility that makes it easier to manage firewall rules on Linux systems. It acts as a layer of protection between the system and the network by controlling which connections are allowed and which are blocked.

For this task, I used UFW to create simple rules that permit SSH access and deny HTTP traffic.

---

## Installation

First, I checked whether UFW was installed on the system. If it was not available, it could be installed using:

```bash
sudo apt update
sudo apt install ufw -y
```

---

## Firewall Configuration

### Allowing SSH Traffic

```bash
sudo ufw allow ssh
```

SSH (Secure Shell) is commonly used to remotely access and manage Linux systems. Allowing SSH ensures that administrators can still connect to the machine securely after the firewall is enabled.

This command creates a rule that allows incoming connections on Port 22, which is the default port used by SSH.

### Denying HTTP Traffic

```bash
sudo ufw deny 80/tcp
```

HTTP traffic uses Port 80. By denying this port, the system blocks incoming web requests that use the HTTP protocol.

This rule demonstrates how a firewall can restrict access to specific services running on a system.

### Enabling the Firewall

```bash
sudo ufw enable
```

After creating the required rules, the firewall was enabled. Once enabled, UFW starts enforcing all configured rules and filtering network traffic accordingly.

---

## Verifying the Configuration

To verify that the firewall was configured correctly, the following command was used:

```bash
sudo ufw status verbose
```

This command displays the current firewall status along with all active rules.

The output confirmed that:

* UFW was active.
* SSH traffic was allowed.
* HTTP traffic was denied.

---

## Automation Script

To simplify the process, a shell script named `ufw_configuration.sh` was created.

The script performs the following actions automatically:

1. Allows SSH traffic.
2. Denies HTTP traffic.
3. Enables UFW.
4. Displays the firewall status.

This reduces manual work and ensures that the same configuration can be applied consistently.

---

## Files Included

* `ufw_configuration.sh` – Shell script used to automate firewall configuration.
* `README.md` – Documentation for the task.
* `screenshot.png` – Screenshot showing the active firewall rules.

---

## Conclusion

This task provided practical experience with firewall management on Linux. Using UFW, I was able to control network access by allowing SSH connections and blocking HTTP traffic. The configuration was verified successfully, and the process was automated using a shell script for easier deployment.
