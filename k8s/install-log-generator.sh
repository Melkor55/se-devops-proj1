#!/bin/sh

# Define the release name and namespace
RELEASE_NAME=log-generator
NAMESPACE=log-generator

# Create the namespace if it doesn't exist
# kubectl get ns $NAMESPACE || kubectl create ns $NAMESPACE

# Install or upgrade the Helm chart
    # Helm3 requires the extra label --create-namespace in order to create the namspace 
    # where as Helm2 automatically creates it if --namespace $NAMESPACE is present
helm upgrade --install \
    $RELEASE_NAME ./log-generator \
    --namespace $NAMESPACE \
    --create-namespace
