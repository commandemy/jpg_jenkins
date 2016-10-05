# il-base cookbook

IL-Base is a application cookbook around base cookbooks and recipes we want to include in our environments.

Some are default as we need them to be on our nodes, some are attribute driven so we can specify if we want to include them.

## Supported Platforms

- Ubuntu

## Attributes

## default.rb

Inlcude the [apt](https://github.com/opscode-cookbooks/apt) cookbook

```ruby
default['base']['include']['apt'] = true
```

Include the [chef_client](https://github.com/opscode-cookbooks/chef-client) cookbook

```ruby
default['base']['include']['chef-client'] = false
```

Include a [simple report handler](http://jtimberman.housepub.org/blog/2011/04/24/a-simple-report-handler/) which outputs updated resources to stdout

```ruby
default['base']['include']['simple_report_handler'] = true
```

Include the [hipchat handler](https://github.com/cwjohnston/chef-hipchat)

```ruby
default['base']['include']['hipchat_handler'] = false
```

Include the [slack handler](https://github.com/iteh/chef-slack_handler)

```ruby
default['base']['include']['slack_handler'] = false
```

Include [chef-sugar](https://github.com/sethvargo/chef-sugar)

```ruby
default['base']['include']['chef-sugar'] = true
```

Include the [ntp](https://github.com/opscode-cookbooks/ntp/) cookbook

```ruby
default['base']['include']['ntp'] = true
```

Include motd

```ruby
default['base']['include']['motd'] = true
default['base']['motd']['operation_tools'] = true
```

Include some operations tools

```ruby
default['base']['include']['operation_tools'] = true
default['base']['operation-tools'] = %w( htop iotop apachetop atop nmon dstat iftop nload )
```

Include [build_essential](https://github.com/opscode-cookbooks/build-essential) cookbook

```ruby
default['base']['include']['build_essential'] = false
```


## Usage

### il-base::default

Include `il-base` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[il-base::default]"
  ]
}
```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Edmund Haselwanter (me@ehaselwanter.com)
