#!/bin/bash

# Get dynamic config
echo $GCP_CONFIG > /opt/cloud-print-connector/gcp-cups-connector.config.json
chmod 660 /opt/cloud-print-connector/gcp-cups-connector.config.json
chown cloud-print-connector:cloud-print-connector /opt/cloud-print-connector/gcp-cups-connector.config.json

# Restart GCP
systemctl restart cloud-print-connector.service