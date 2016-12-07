fbsimctl-extension
==========

fbsimctl extension provides convenient metaclass to execute [FBSimulatorControl](https://github.com/facebook/FBSimulatorControl) shell commands.

This gem is useful when working with test automation frameworks like **Calabash** and **Appium**.

Installation
==========

In your Gemfile:

`gem 'fbsimctl-extension'`

Install gem manually:

`$ gem install fbsimctl-extension`

Example use cases
==========

Install [fbsimctl](https://github.com/facebook/FBSimulatorControl/blob/master/fbsimctl/README.md#installation)

Launch irb

`$ irb`

Load fbsimctl-extension

`irb> require 'fbsimctl-extension'`

Execute `fbsimctl-extension` commands

Boot iPhone 7 simulator

> **`FBSC.boot('iPhone 7')`**

Erase simulator

> **`FBSC.erase`**

Run the tests
==========

TODO

License
==========

MIT
