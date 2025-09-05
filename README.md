# Zero-Trust Security Platform

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

### HashiCorp Vault
- HA cluster with Raft storage
- Dynamic database credentials
- PKI certificate issuance
- Policy-based access control

### Wazuh SIEM
- Real-time threat detection
- Custom security rules
- Compliance monitoring
- Automated response integration

### PKI Authority
- Internal Certificate Authority
- Automated certificate lifecycle
- mTLS mesh networking
- Certificate rotation policies

## Integration

- **Jenkins**: Vault credential injection, security scanning
- **ELK Stack**: Enhanced security analytics and SIEM
- **File Server**: Vault authentication, auto-certificates

## Security Policies

All access follows principle of least privilege with templated policies based on service identity.