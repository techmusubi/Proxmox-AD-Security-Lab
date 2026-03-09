# Proxmox-AD-Security-Lab
Enterprise infrastructure lab built with Proxmox, Active Directory, Windows workstations, and Wazuh SIEM monitoring.

# Proxmox AD Security Lab

## Overview

This project documents the build of an enterprise-style lab environment
using Proxmox virtualization, Windows Server infrastructure, and Wazuh SIEM monitoring.

The goal of this lab is to simulate a small corporate network and practice:

• Active Directory administration  
• Identity and access management  
• Group Policy management  
• Security monitoring with SIEM  
• Incident detection and analysis  

---

## Host System

Hardware used for this lab:

CPU  
Ryzen 7 7800X3D

Memory  
32GB DDR5

Hypervisor  
Proxmox VE

---

## Virtual Infrastructure

The following virtual machines were deployed:

```
DC01 – Domain Controller
IT1 – Workstation
IT2 – Workstation
MGR – Manager workstation
SEC – Secretary workstation
CTR – Controller workstation
ACC – Accountant workstation
CR1 – Customer Rep workstation
CR2 – Customer Rep workstation
HR1 – HR workstation
HR2 – HR workstation
```

---

## Active Directory Domain

Domain Name

```
geeksorg.local
```

Domain Controller

```
DC01
10.10.10.10
```

Installed Roles

• Active Directory Domain Services  
• DNS Server  

---

## Organizational Unit Structure

```
geeksorg.local
│
├── Servers
│   ├── DomainControllers
│   ├── FileServers
│   ├── WSUS
│   └── PrintServers
│
└── Workstations
    ├── IT
    ├── Management
    ├── Finance
    ├── HR
    └── CustomerService
```

---

## Lab Progress

Completed

• Installed Proxmox VE hypervisor  
• Created Windows 11 master image  
• Cloned 10 workstation virtual machines  
• Installed Windows Server 2022 domain controller  
• Deployed Active Directory Domain Services  
• Configured DNS  
• Created OU structure  
• Created user accounts for departments  

In Progress

• Workstation domain join  
• File server deployment  
• WSUS patch management  

Planned

• Wazuh SIEM deployment  
• Security event monitoring  
• Attack simulation scenarios  

---

## Future Security Monitoring

This lab will integrate Wazuh SIEM to monitor:

• Windows authentication events  
• Privilege escalation attempts  
• Unauthorized file access  
• Brute force login attempts  
• Insider threat scenarios
