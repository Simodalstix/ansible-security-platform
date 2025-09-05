# Zero-Trust Security Platform

> **Senior-Level Architecture**: Enterprise security orchestration across hybrid infrastructure

Enterprise security orchestration with HashiCorp Vault, Wazuh SIEM, and automated certificate lifecycle management.

## Architecture

```
┌─────────────────────────────────────────────────────────────────┐
│                    ZERO-TRUST SECURITY LAYER                   │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐ │
│  │  HashiCorp      │  │   Wazuh SIEM    │  │  Certificate    │ │
│  │   Vault         │  │   Platform      │  │   Authority     │ │
│  │ • Secret Mgmt   │  │ • Threat Detect │  │ • Auto TLS      │ │
│  │ • Dynamic Creds │  │ • Compliance    │  │ • Cert Rotation │ │
│  │ • Policy Engine │  │ • Incident Resp │  │ • mTLS Mesh     │ │
│  └─────────────────┘  └─────────────────┘  └─────────────────┘ │
└─────────────────────────────────────────────────────────────────┘
```

## Infrastructure Requirements

### Optimized Lab Setup (32GB Total)
- **security-platform**: 6GB - Vault + Wazuh + PKI (consolidated)
- **elk-platform**: 6GB - Elasticsearch + Kibana + Logstash
- **file-server**: 2GB - File services + backup
- **app-server**: 2GB - Apps + Nginx + agents
- **Rocky laptop**: 16GB native - Jenkins + Nexus + SonarQube + Docker
- **Raspberry Pi**: 8GB - K3s + ArgoCD + IoT Gateway

### Network: 192.168.198.0/24
- pfSense VM handles DHCP
- All systems integrate via bridged networking
- Security platform monitors entire infrastructure

## Quick Start

```bash
# Deploy entire security platform
make security-deploy

# Individual components
make vault-deploy
make wazuh-deploy
make pki-deploy

# Operations
make compliance-audit
make threat-response
make cert-rotation
```

## Security Features

- **Zero-Trust Architecture**: mTLS everywhere with certificate-based authentication
- **Dynamic Secrets**: Automated credential rotation via Vault
- **Threat Detection**: Real-time SIEM with custom rules
- **Compliance**: SOC2/PCI-DSS automated reporting
- **Incident Response**: Automated threat containment

## Components

### HashiCorp Vault (6GB)
- HA cluster with Raft storage
- Dynamic database credentials
- PKI certificate issuance
- Policy-based access control

### Wazuh SIEM (Integrated)
- Real-time threat detection
- Custom security rules
- Compliance monitoring
- Automated response integration

### PKI Authority (Integrated)
- Internal Certificate Authority
- Automated certificate lifecycle
- mTLS mesh networking
- Certificate rotation policies

## Integration

- **Jenkins**: Vault credential injection, security scanning
- **ELK Stack**: Enhanced security analytics and SIEM
- **File Server**: Vault authentication, auto-certificates
- **Edge Computing**: K3s Pi with GitOps deployment

## Security Policies

All access follows principle of least privilege with templated policies based on service identity.

## Skill Level: Senior Platform/Security Engineering

This architecture demonstrates enterprise-grade:
- Zero-trust security design
- Multi-platform orchestration (x86 + ARM64)
- Automated compliance frameworks
- Cross-system integration
- Production-ready HA patterns