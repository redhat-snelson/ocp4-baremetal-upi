# RHCOS and OCP4 versions
# From https://mirror.openshift.com/pub/openshift-v4/dependencies/rhcos/4.1/
export RHCOSVERSION="4.1.0"
# From https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/
export OCPVERSION="4.1.0"

# Where to store the required files
export NGINX_DIRECTORY="/home/ocp/containers/nginx"
export HAPROXY_DIRECTORY="/home/ocp/containers/haproxy"
export COREDNS_DIRECTORY="/home/ocp/containers/coredns"

# Network details
export DOMAIN_NAME="example.com"
export CLUSTER_NAME="ocp4"
export GATEWAY="192.168.32.1"
export NETMASK="255.255.255.0"
export DNSFORWARDER="8.8.8.8"

# Hosts
export BOOTSTRAP_IP="192.168.32.9"
export MASTER0_IP="192.168.32.21"
export MASTER1_IP="192.168.32.22"
export MASTER2_IP="192.168.32.23"
export WORKER0_IP="192.168.32.24"

# We will use a single interface for the OCP4 cluster network traffic (same one in all hosts)
export NET_INTERFACE="eno2"

# We will use this host as DNS, static assets server and haproxy
export MY_IP="192.168.32.2"
export DNS="${MY_IP}"
export URL="http://${MY_IP}:8001"
export LB_IP="${MY_IP}"

# Required to extract the ISO content with guestfish without any virtualization stuff installed
export LIBGUESTFS_BACKEND=direct

export SSH_KEY=$(cat ~/.ssh/id_rsa.pub)
# This may not work until the pull_secret is created
export PULL_SECRET=$(cat ~/ocp-clusters/pull_secret.json)