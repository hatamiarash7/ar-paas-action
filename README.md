# ArvanCloud PaaS Action

![GitHub tag (latest by date)](https://img.shields.io/github/v/tag/hatamiarash7/ar-paas-action?color=%2300baba&label=Marketplace&logo=github)

With this action you can update your deployment on ArvanCloud PaaS.

## Usage

```yaml
- name: R1C PaaS Action
  uses: hatamiarash7/ar-paas-action@v1.0.0
  with:
    auth: ${{ secrets.API_TOKEN }}
    app: my-application
    container: proxy
    image: nginx:1.23.1-alpine
```

## Customizing

Following inputs can be used as `step.with` keys

| Name        | Type   | Default | Description                                                              |
| ----------- | ------ | ------- | ------------------------------------------------------------------------ |
| `auth`      | String |         | Your API token from [ArvanCloud](https://www.arvancloud.com/en/docs/api) |
| `app`       | String |         | Application's name in your PaaS project                                  |
| `container` | String |         | The container that you want to update its image                          |
| `image`     | String |         | Docker image like `org/image:tag`                                        |
| `version`   | String | `1.0.3` | Version of ArvanCloud CLI tool                                           |

### Authentication

You should get your API key from `ArvanCloud Dashboard > Settings > API keys`. You need a key with **Container Service** permission.

Define this key as a `Repository/Organization secret`.

## Contributing

Don't be shy and reach out to us if you want to contribute.

1. Fork it !
2. Create your feature branch : `git checkout -b my-new-feature`
3. Commit your changes : `git commit -am 'Add some feature'`
4. Push to the branch : `git push origin my-new-feature`
5. Submit a pull request

## Issues

Each project may have many problems. Contributing to the better development of this project by reporting them.
