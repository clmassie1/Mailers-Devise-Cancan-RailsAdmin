Asset Management

This is a comprehensive approach to gathering data from a number of sources from dropbox and producing reports as pdf for admin user
### Prerequisites

Verify that you have a current version of Ruby, Rails, and sqlite3 installed with following commands 
```
ruby -v
ruby 2.4.2
```
```
sqlite3 --version
3.19.3
```
```
gem install rails
```
```
rails --version
Rails 5.1.4
```
### Installing

After cloning repo run the following commands

```
gem install composite_primary_keys
```
```
bundle install --without "mysql oracle postgresql sqlserver"
``` 
```
rails db:migrate
```
## Authors

* **Clayton Massie** - *Initial work* - [ClayMassie ](https://github.com/clmassie1)


