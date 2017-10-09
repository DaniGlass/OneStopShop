# README

##  Welcome to OneStopShop!

This user focused IOS app allows you to put all of your home shopping needs in one easy to use list. It then gives you the ability to find a store near you that has most, if not all of the items on your list. Thus, you find your "OneStopShop." 

## Core Goals:

1. Help shoppers cut down shopping time, multiple store visits, and reduce the need for in store price comparison.  
2. Give OneStopShoppers the power to choose how they want to shop. 

## Stretch Goals:

1. Intigrate higher quality price comparison
2. Integrate open maps capabilities
3. Integrate searchable items option with brand choice and quanitity

## Project Management Tool

[Trello Link](https://trello.com/b/6IKQtjuC/main)

## Ruby version

* Built using Ruby 2.4.1 and Rails 5.1.3

## System dependencies

* macOS version (~> 10.1)

* bundler

* Ruby 2.4.1

* Rails 5.1.3

* PostgreSQL 9.6.3

* React Native 0.48.4

* React Navigation 1.0.0-beta.13

* Axios 0.16.2

## Configuration

    $ git clone https://github.com/DaniGlass/OneStopShop/

    $ cd OneStopShop

    $ bundle install

    $ rails db:setup

    $ rails server (leave server running for backend)
    
    $ cd OneStopShop/front_end
    
    $ npm install
    
    $ react-native run-ios

## Database

The website uses a Postgres database

* postgres (PostgreSQL) 9.6.3

### Database creation

    $ rails db:create

### Database initialization

    $ rails db:migrate

    $ rails db:seed

### Database schema

![DB schema](https://github.com/NEEDS TO BE CORRECTED.png)

## Testing

### How to run the test suite

    $ rspec


### Other gems / libraries used when testing

* [Capybara](https://github.com/teamcapybara/capybara)

* [FactoryGirl](https://github.com/thoughtbot/factory_girl)

* [Faker](https://github.com/stympy/faker)

* [Warden](https://github.com/hassox/warden/wiki)

## Deployment

* Link to this if we are able to deploy....

## License

OneStopShop is released under the [MIT License](https://opensource.org/licenses/MIT).
