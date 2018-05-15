#!/bin/bash
cfy blueprints upload -b fortigate-pf-bp  ./fortigate-vnf-portforward-bp.yaml
cfy blueprints upload -b fortigate-vnf-vnfd-bp ./fortigate-vnf.yaml
cfy blueprints upload -b openstack_vnf_infra ./openstack-vm-lan.yaml

cfy deployments create -b openstack-vnf-infra -i sample-openstack-vnf-infra.yaml sample-openstack-vnf-infra
cfy deployments create -b fortigate-vnf-vnfd-bp fortigate-vnf
cfy deployments create -b fortigate-pf-bp fortigate-pf
