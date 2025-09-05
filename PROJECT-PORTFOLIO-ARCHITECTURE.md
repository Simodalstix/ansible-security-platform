# Portfolio Project Architecture (Website Grid Display)

## Modular Project Grid Layout (3x4)

```
┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐
│  AWS Landing    │  │ Azure Hub-Spoke │  │   K3s ArgoCD    │  │  Java Gradle    │
│     Zone        │◄─┤   VPN Network   ├─►│  Raspberry Pi   │  │ Microservices   │
│   (Terraform)   │  │   (Terraform)   │  │   (GitOps)      │  │   (DevOps)      │
└─────────┬───────┘  └─────────┬───────┘  └─────────┬───────┘  └─────────────────┘
          │                    │                    │
          ├────────────────────┼────────────────────┤
          │                    │                    │
┌─────────▼───────┐  ┌─────────▼───────┐  ┌─────────▼───────┐  ┌─────────────────┐
│ AWS Observability│◄─┤ Azure Patching  │◄─┤ Ansible File    ├─►│ Ansible Monitor │
│   Platform       │  │   + Dynatrace   │  │    Server       │  │     Lab         │
│    (CDK)         │  │  (Terraform)    │  │  (CORE HUB)     │  │  (Observability)│
└─────────┬───────┘  └─────────┬───────┘  └─────────┬───────┘  └─────────────────┘
          │                    │                    │
          │                    │                    │
┌─────────▼───────┐  ┌─────────▼───────┐  ┌─────────▼───────┐  ┌─────────────────┐
│ AWS EKS GitOps  │  │ Azure Container │  │ Ansible Security│  │ AWS DR Pilot    │
│   Multi-Tier    │  │     Apps        │  │   Platform      │  │     Light       │
│  (Terraform)    │  │  (Terraform)    │  │ (Zero-Trust)    │  │  (Disaster)     │
└─────────────────┘  └─────────────────┘  └─────────┬───────┘  └─────────────────┘
                                                     │
                                           ┌─────────▼───────┐
                                           │ Ansible CI/CD   │
                                           │   Platform      │
                                           │ (Jenkins/Nexus) │
                                           └─────────────────┘
```

## Hub-Spoke Architecture

### **Central Hub: Ansible File Server**
- **North**: K3s ArgoCD (GitOps edge deployment)
- **South**: Ansible Security Platform (Vault integration)
- **East**: Ansible Monitoring Lab (Centralized logging)
- **West**: Azure Patching + Dynatrace (Hybrid cloud backup)

### **Azure Hub-Spoke Network**
- **Hub**: Azure Hub-Spoke VPN
- **Spokes**: Container Apps, Patching+Dynatrace, File Server
- **Integration**: Network connectivity and shared services

### **AWS Landing Zone**
- **Foundation**: AWS Landing Zone (Terraform)
- **Extensions**: Observability Platform, EKS GitOps, DR Pilot Light
- **Integration**: Shared networking and security policies

## Connection Types

**Horizontal Integrations:**
- Azure Hub-Spoke ↔ K3s Pi (Cross-cloud GitOps)
- File Server ↔ Monitoring Lab (Log aggregation)
- AWS Landing ↔ Azure Hub-Spoke (Multi-cloud strategy)

**Vertical Integrations:**
- AWS: Landing Zone → Observability → EKS GitOps
- Azure: Hub-Spoke → Patching → Container Apps
- Ansible: File Server → Security → CI/CD

**Standalone Showcases:**
- Java Microservices (Enterprise development)
- AWS DR Pilot Light (Business continuity)
- K3s ArgoCD (Edge computing)