#   MANIFEST FILES

This directory contains all the files needed to create most os the applications needed to make the project a success. This manifest file serves as a declarative configuration document that encapsulates the desired state of Kubernetes resources such as pods, deployments, services, and routing rules. These manifest files typically utilize YAML and include specifications for resource properties like labels, replicas, image versions, ports, and resource requests, enabling Kubernetes controllers to reconcile the current state of the cluster with the desired state defined in the manifest, ensuring consistent application deployment and management across Kubernetes environments.

The YML files contains configurations to create:
- sock-shop application
- Prometheus and Grafana
- Elastic Search, Logstash and Kibana
- alert manager
- A file containing the namespace for each application.

## Manifests structure
1. API Version: Indicates the Kubernetes API version used for the resource definition. It specifies the version of the Kubernetes API that the manifest adheres to.

2. Kind: Specifies the type of Kubernetes resource being defined, such as Pod, Deployment, Service, ConfigMap, or Ingress.

3. Metadata: Contains metadata associated with the resource, including the resource name, namespace, labels, and annotations.

4. Spec: Defines the desired state of the resource. This section contains configuration parameters specific to the resource type, such as container specifications for Pods or scaling parameters for Deployments.

5. Status: Reflects the current state of the resource as observed by the Kubernetes API server. This section is typically managed by Kubernetes and is updated dynamically based on the cluster's state.


## NAMESPACE
In Kubernetes, a namespace is a virtual cluster environment used to organize and partition resources within a Kubernetes cluster. It serves as a logical boundary that separates objects into distinct groups, allowing multiple users, teams, or applications to coexist within the same Kubernetes cluster without interfering with each other.

This manifest files were extracted from this (https://github.com/microservices-demo/microservices-demo)