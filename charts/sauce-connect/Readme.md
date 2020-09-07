# sauce-connect

![Version: 4.6.2](https://img.shields.io/badge/Version-4.6.2-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

Helm chart for Sauce Connect on K8s. To install chart run:

```sh
$ helm repo add saucelabs https://opensource.saucelabs.com/charts
$ helm search repo saucelabs
$ helm install sc-release saucelabs/sauce-connect
```

**Homepage:** <http://github.com/saucelabs/charts>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| saucelabs | opensource@saucelabs.com | https://opensource.saucelabs.com |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| HATunnels | int | `2` | Setting HATunnel to more than 1 will run The tunnels in HA mode |
| affinity | object | `{}` |  |
| fullnameOverride | string | `"sauce-connect"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"saucelabs/sauce-connect"` |  |
| image.tag | string | `"4.6.2"` | define Sauce Connect Docker image e.g. "4.6.2" or "4.6.2-alpine-glibc" |
| imagePullSecrets | list | `[]` |  |
| ingress.annotations | object | `{}` |  |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0].host | string | `"chart-example.local"` |  |
| ingress.hosts[0].paths | list | `[]` |  |
| ingress.tls | list | `[]` |  |
| nameOverride | string | `"sauce-connect"` |  |
| nodeSelector | object | `{}` |  |
| podSecurityContext | object | `{}` |  |
| resources | object | `{}` |  |
| sauce_access_key | string | `"your-accesskey"` | your Sauce Labs access key |
| sauce_username | string | `"your-username"` | your Sauce Labs username |
| securityContext | object | `{}` |  |
| service.port | int | `8888` |  |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `nil` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template |
| tolerations | list | `[]` |  |
| tunnelID | string | `"mytunnel"` | Sauce Connect tunnel identifier |
