# ODC test helm charts

## Helm charts to test edge cases in the OpenShift Developer Console

## Usage

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

## Contribute

1. [Create](https://helm.sh/docs/helm/helm_create/) a new helm chart

   ```shell
   helm create chart-name
   ```

   Or just `./create.sh chart-name`

2. [Lint](https://helm.sh/docs/helm/helm_lint/) (optional) and
   [build a new helm release](https://helm.sh/docs/helm/helm_package/) package

   > [!NOTE]  
   > Please create the new helm release (tgz file) in a new folder.
   > This makes it easier in the next step to just add the new chart to the repository index.
   > Otherwise all `created` timestamps are updated.

   ```shell
   helm lint chart-path
   helm package chart-path --destination new
   ```

3. Update the [helm repository index](https://helm.sh/docs/helm/helm_repo_index/)

   ```shell
   helm repo index new --merge docs/index.yaml
   mv new/* docs
   rmdir new
   ```

   Or for step 2 and 3 together `./release.sh chart-name`

Commit and push your changes to GitHub.

The `docs` folder is automatically published as GitHub Pages at
https://openshift-dev-console.github.io/helm-charts
