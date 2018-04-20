Asset Management

This is a comprehensive approach to gathering data from a number of sources (Spiceworks, Insperity payroll, etc. ) along with the capability to render an employee asset and system privilege profile.
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
## load data
seed the database with following commands 
```
bundle exec rake import:softwares 
```
```
bundle exec rake import:resources 
```
```
bundle exec rake import:hardwares 
```
```
rails s
```
## Authors

* **Clayton Massie** - *Initial work* - [ClayMassie ](https://github.com/clmassie1)


