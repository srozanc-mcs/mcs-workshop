# MCS Bicep Workshop

### Deploy Static Webserver - Basic
- Step 00: Single vnet
- Step 01: NIC attached to the vnet
- Step 02: VM attached the NIC
    - publisher: 'Canonical'
    - offer: '0001-com-ubuntu-server-focal'
    - sku: '20_04-lts'
    - version: 'latest'
- Step 03: PublicIP attached to the NIC
- Step 04: Deploy Custom Extension (Static Web Page with Apache)
    - fileUris: https://raw.githubusercontent.com/srozanc-mcs/mcs-workshop/master/scripts/deploy.sh
    - commandToExecute: /bin/bash deploy.sh
---
### Deploy Static Webserver - Advanced
- Step 05: Deploy 3 VMs in single run
    - Loops, for-indexed over array
    - May also encapsulate logic into a module, but not required
- Step 06: Application Gateway to loadbalance HTTP requests between all 3 VMs
    - Don't forget new subnet in vnet for appgw
    - Requires use of resourceId() function to reference resources: resourceId('resource provider type', 'appgwname', 'resource name')