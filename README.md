Curated Sauce Labs Helm Charts
==============================

Popular applications, provided by Sauce Labs, ready to launch on Kubernetes using Kubernetes Helm.

## Requirements

To work with this repository the following tools are required:

- [`helm-docs`](https://github.com/norwoodj/helm-docs#available-templates) - to automate chart documentations (install via `brew install norwoodj/tap/helm-docs` or from [source](https://github.com/norwoodj/helm-docs#installation))
- [`chart-testing`](https://github.com/helm/chart-testing) - tool for testing Helm charts (install via `brew install chart-testing`)
- [Yamale](https://github.com/23andMe/Yamale) - requirement for chart-testing
- [yamllint](https://github.com/adrienverge/yamllint) - requirement for chart-testing

## Install Chart

To add Sauce Labs curated Helm charts to your repo list just run:

```sh
$ helm repo add saucelabs https://opensource.saucelabs.com/charts
$ helm search repo saucelabs
$ helm install my-release saucelabs/<chart>
```

## Development

To add a new repository or run a chart locally, you first need to clone the repo:

```sh
$ git clone git@github.com:saucelabs/charts.git
$ cd charts
```

The `Makefile` contains commands to install each chart in this repository:

```sh
$ make install chart=<chart-name> # e.g. `$ make install chart=sauce-connect`
# or just dry run
$ make dry-run chart=sauce-connect
```

### Update Chart Docs

The `Readme.md` of every chart is automatically generated. If you change default values in the chart or update a chart version please update the docs with the following command:

```sh
$ make docs
```

Note: the pipeline will fail if docs weren't updated.