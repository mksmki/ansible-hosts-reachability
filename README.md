## Network Device Reachability

Ansible playbooks for testing device/host reachability

### Problem Description

Using the filtered list of hosts check device reachability (with ICMP Echo) and perform delay measurements.

Compare two approaches by execution times:
- Sequential
- Parallel

### Examples

Successful ping test result example:
```json
{
    "device_ip": "8.8.8.8",
    "packets": {
        "loss": "0",
        "received": "5",
        "time": "4005",
        "transmitted": "5"
    },
    "protocol": "icmp",
    "reachable": true,
    "rtt": {
        "avg": "7.449",
        "max": "9.590",
        "min": "6.608"
    }
}

```

Unsuccessful example:
```json
{
    "device_ip": "192.168.127.1",
    "packets": {
        "loss": "100",
        "received": "0",
        "time": "0",
        "transmitted": 5
    },
    "protocol": "icmp",
    "reachable": false,
    "rtt": {
        "avg": "0",
        "max": "0",
        "min": "0"
    }
}
```
