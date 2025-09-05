# Lab Infrastructure Requirements

## Main Laptop (32GB) - Security & Core
```
pfsense:             2GB  - DHCP/Firewall (existing)
windows-server:      2GB  - Domain services (existing)
security-platform:   6GB  - Vault + Wazuh + PKI (lab-optimized)
elk-platform:        6GB  - Elasticsearch + Kibana + Logstash
file-server:         2GB  - File services + backup
app-server:          2GB  - Apps + Nginx + agents
```
**Total: 20GB used, 12GB free**

## Rocky Laptop (16GB) - Native CI/CD Host
```
Rocky Linux (bare metal):
- Jenkins: 2GB reserved
- Nexus: 1GB reserved  
- SonarQube: 2GB reserved
- Docker: On-demand builds
- System: 2GB
```
**Total: 7GB reserved, 9GB available for builds**

## Raspberry Pi (8GB) - Edge Computing
```
K3s + ArgoCD:        3GB
MQTT + IoT Apps:     3GB  
Monitoring:          1.5GB
System:              0.5GB
```

## Operating Systems
- **Security/CI/CD**: RHEL 9 (enterprise support)
- **ELK/File/App**: Ubuntu 22.04 LTS (performance)
- **Pi**: Ubuntu 22.04 LTS ARM64

## Network: 192.168.198.0/24
- **Main Laptop VMs**: 192.168.198.130-134
- **Rocky Laptop**: 192.168.198.11 (native)
- **Raspberry Pi**: 192.168.198.200
- **pfSense**: Handles DHCP for all devices

## Benefits
- **Cost Effective**: No VMware license needed on Rocky
- **Performance**: Native CI/CD without virtualization overhead
- **Scalable**: Edge computing with ARM64 architecture
- **Enterprise**: Multi-platform orchestration (x86 + ARM64)