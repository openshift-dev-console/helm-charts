# ODC test helm charts

## Helm charts to test edge cases in the OpenShift Developer Console

The `docs` folder contains the latest Helm releases (as a GitHub pages) based on the Helm charts.

Helm repository URL:

```
https://openshift-dev-console.github.io/helm-charts
```

You can apply this directly to your cluster:

For the current namespace with [project-helm-chart-repository.yaml](https://github.com/openshift-dev-console/helm-charts/blob/main/project-helm-chart-repository.yaml):

```
oc apply -f https://raw.githubusercontent.com/openshift-dev-console/helm-charts/main/project-helm-chart-repository.yaml
```

The the complete cluster with [helm-chart-repository.yaml](https://github.com/openshift-dev-console/helm-charts/blob/main/helm-chart-repository.yaml):

```
oc apply -f https://raw.githubusercontent.com/openshift-dev-console/helm-charts/main/helm-chart-repository.yaml
```
