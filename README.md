# ArvanCloud PaaS/CaaS Action

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/hatamiarash7/ar-paas-action?color=%2300baba&label=Marketplace&logo=github)

![logo](.github/logo.svg)

With this action you can update your deployment on ArvanCloud PaaS/CaaS.

## Usage

```yaml
- name: R1C Action
  uses: hatamiarash7/ar-paas-action@v1.3.0
  with:
    region: 1
    auth: ${{ secrets.API_TOKEN }}
    app: my-application
    container: proxy
    image: nginx:1.23.1-alpine
```

> You can use the `debug` branch to see more logs. It's `hatamiarash7/ar-paas-action@debug`.

## Customizing

Following inputs can be used as `with` keys

| Name        | Type     | Default | Description                                                                    |
| ----------- | -------- | ------- | ------------------------------------------------------------------------------ |
| `region`    |          |   `1`   | Your Arvancloud Region                                                         |
| `auth`      | Required |         | Your API token                                                                 |
| `namespace` |          |         | The target namespace ( project ). Will be the default project if not specified |
| `app`       | Required |         | Application's name in your PaaS project                                        |
| `container` | Required |         | The container that you want to update its image                                |
| `image`     | Required |         | Docker image like `org/image:tag`                                              |
| `version`   |          | `1.3.6` | Version of ArvanCloud CLI tool                                                 |

### Region

We have 2 regions in ArvanCloud PaaS/CaaS for now:

- `1` for `ir-thr-ba1` ( Openshift )
- `2` for `ir-thr-ba2` ( Kubernetes )

### Authentication

You should get your API key from `ArvanCloud Dashboard > Settings > API keys`. You need a key with **Container Service** permission.

Define this key as a `Repository/Organization` secret.

Check [ArvanCloud Documentation](https://docs.arvancloud.ir/en/developer-tools/api/api-key) for more information.

---

## Support

[![Donate with Bitcoin](https://en.cryptobadges.io/badge/micro/3GhT2ABRuHuXGNzP6DH5KvLZRTXCBKkx2y)](https://en.cryptobadges.io/donate/3GhT2ABRuHuXGNzP6DH5KvLZRTXCBKkx2y) [![Donate with Ethereum](https://en.cryptobadges.io/badge/micro/0x4832fd8e2cfade141dc4873cc00cf77de604edde)](https://en.cryptobadges.io/donate/0x4832fd8e2cfade141dc4873cc00cf77de604edde)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/D1D1WGU9)

<div><a href="https://payping.ir/@hatamiarash7"><img src="https://cdn.payping.ir/statics/Payping-logo/Trust/blue.svg" height="128" width="128"></a></div>

## Contributing

Don't be shy and reach out to us if you want to contribute.

1. Fork it !
2. Create your feature branch : `git checkout -b my-new-feature`
3. Commit your changes : `git commit -am 'Add some feature'`
4. Push to the branch : `git push origin my-new-feature`
5. Submit a pull request

## Issues

Each project may have many problems. Contributing to the better development of this project by reporting them.
