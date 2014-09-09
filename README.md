# infra-chefserver/-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['infra-chefserver/']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### infra-chefserver::default

Include `infra-chefserver` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[infra-chefserver::default]"
  ]
}
```

## License and Authors

Author:: opscale (<pmoosh@opscale.com>)
