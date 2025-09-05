# Infrastructure Requirements

## Minimum Host Specifications

### Security Layer (New Hosts)
- **Vault Cluster (3 nodes)**: 4GB RAM, 40GB disk each
- **Wazuh Manager**: 8GB RAM, 100GB disk  
- **PKI Authority**: 2GB RAM, 20GB disk

### Protected Infrastructure (Existing)
- **File Server**: 2GB RAM, 50GB disk
- **Jenkins Server**: 4GB RAM, 60GB disk
- **ELK Server**: 8GB RAM, 200GB disk

## Operating System Support
- **Ubuntu**: 20.04 LTS or 22.04 LTS
- **RHEL**: 8.x or 9.x

## Network Requirements
- Security VLAN: 10.0.2.0/24 (isolated)
- Infrastructure VLAN: 10.0.1.0/24
- Inter-VLAN routing for monitoring only

## Total Resources
- **New Infrastructure**: 22GB RAM, 260GB disk
- **Enhanced Existing**: Uses current resources + monitoring agents