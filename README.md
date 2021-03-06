<p align="center">
    <img src="./images/phone-wishlist.png"
        height="230">
</p>

<p align="center">
    <h1 align="center"> Group our Wishlist   </h1>    
</p>

<p align="center">
    <h2 align="center"> Web application with responsive behavior for mobile usage</h2>    
</p>


<p align="center">
    <a href="https://img.shields.io/badge/Microverse-blueviolet" alt="Contributors">
        <img src="https://img.shields.io/badge/Microverse-blueviolet" /></a>
    <a href="https://ruby-doc.org/core-2.7.0/Array.html" alt="Ruby">
        <img src="https://img.shields.io/badge/Ruby-2.6.5-blue" /></a>
    <a href="https://rubyonrails.org/" alt="Rails">
        <img src="https://img.shields.io/badge/Rails-6.0.3-blue" /></a>
    <a href="https://www.rubydoc.info/gems/bootstrap-sass/3.3.6" alt="Bootstrap-sass">
        <img src="https://img.shields.io/badge/Bootstrap--sass-3.4.1-lightgrey" /></a>
    <a href="https://rspec.info/documentation/" alt="Rspec-rails">
        <img src="https://img.shields.io/badge/Rspec--rails-4.0.0-orange" /></a>
    <a href="https://rubygems.org/gems/pg/versions/0.18.4?locale=es" alt="Postgresql">
        <img src="https://img.shields.io/badge/Postgresql-2.0-yellow" /></a>
    <a href="https://www.heroku.com/" alt="Heroku">
        <img src="https://img.shields.io/badge/Heroku-published-lightgrey" /></a>
</p>

  <p align="center">    
    <br />
    <a href="https://github.com/rubenpazch/Group-our-transactions"><strong>Explore this project »</strong></a>
    <br />
    <br />&#10023;
    <a href="https://morning-taiga-75196.herokuapp.com/">View Demo</a>   &#10023;  
    <a href="https://github.com/rubenpazch/Group-our-transactions/issues">Report Bug</a>    &#10023;
    <a href="#Getting-Started">Getting Started</a> &#10023; <a href="#Install">Installing</a> &#10023;
    <a href="#Extra-Feature">Extra Feature</a> &#10023;
    <a href="#Screenshots-of-the-App">Screenshots of the App</a> &#10023;
    <a href="#Authors">Author</a> &#10023;
    
  </p>



<br/>


Group our Wishlist is a web application with responsive behavior for mobile usage
built with <b>Ruby on Rails</b> this application is based on an app for grouping payments by a goal with your family/friends you can find the full requirements   <a href="https://www.notion.so/microverse/Group-our-transactions-ccea2b6642664540a70de9f30bdff4ce" alt="Requirements">here</a>. Exploring this project you can find these options (<b>login</b>, <b> sign-in</b>,<b> all my wishlist</b>,<b> all my external wishlist</b>,<b> all groups and log out</b>, <b> check out a wish list as an additional feature</b>). 

It is required to sing in before to start using this application, Group our Wishlist is related with an online store where you buy some products, sometimes you just want to save some product that you want to review later, this is the basic idea about group our wishlist, <b> you can save a product wish</b>, groups allow you to separate your list of wish with a specific category. 

When you don't want to associate with any category you can create a wishlist that will be not associated with any group or category, finally check out is the extra feature added to be able to proceed with the check out for any of the products you saved.


<br/>

<img src="./images/gif-wishlist.gif" width="100%"/>

<br/>

## Getting Started

This project was built using Ruby and Rails version 6, it is a web application and for running on your local environment you should follow these guidelines.


### Prerequisites

- Ruby 2.6.5
- Rails 6.0.3
- Git

### Setup

The project repository can be found in [GitHub link](https://github.com/rubenpazch/Group-our-transactions) or just clone the project using this command. 



```
Using SSH 

# git clone  https://github.com/rubenpazch/Group-our-transactions.git

Using HTTPS

# git clone  git@github.com:rubenpazch/Group-our-transactions.git

```

+ Open terminal on your workspace with

```
cd /home/workspace/Group-our-transactions
```


## Install


To get started with the app, clone the repo, and then install the needed gems:

```
# bundle install --without production
```

Next, migrate the database:

```
# rails db:migrate
```


```
$ rails server
```

### Usage

To watch the local version of this project check on your browser for the link 

```
Listening on tcp://127.0.0.1:3000
```

### Run tests

Run the test suite to verify that everything is working correctly:

```
# bundle exec rspec
```

If the test suite passes, you'll be ready to run the app in a local server:


### Deployment

To deploy to heroku first login in heroku

```
# heroku login
```

Create a new project in heroku

```
# heroku create
```

You can verify that the remote was added to your project by running:
```
# git config --list | grep heroku
# git push heroku master
```

Migrate your database
```
heroku run rake db:migrate
```

### Tools used on this project

- Visual Studio Code
- VSCode Ruby by Stafford Brunk
- Rubocop for Visual Studio Code
- Bootstrap 
- Rspec 
- Jquery
- Faker
- Factory Bot


<br/>

## Watch the Live Version


click on the link to watch [live version](https://morning-taiga-75196.herokuapp.com/)

<br/>


## Extra Feature

+ Click on the checkout button of the specific wishlist.
+ Proceed with the payment.
+ Notes.- After saving the payment the wishlist will disappear from the list

![Preview](./docs/checkout.png)
![Preview](./docs/payment.png)

## Screenshots of the App

![Preview](./docs/login.png)
![Preview](./docs/register.png)
![Preview](./docs/new.png)
![Preview](./docs/profile.png)
![Preview](./docs/login-register.png)
![Preview](./docs/save-wislist.png)

## Contributing

This project was created for educational purposes as part of the Microverse web development curriculum; contributing is not accepted.

Feel free to check the [issues page](https://github.com/rubenpazch/Group-our-transactions/issues).


## Authors

👤 **Ruben Paz Chuspe**

- Github: [@rubenpazch](https://github.com/rubenpazch)
- Linkedin: [rubenpch](https://www.linkedin.com/in/rubenpch/)
- Twitter: [@ChuspePaz](https://twitter.com/ChuspePaz)

### Show your support

Give a ⭐️ if you like this project!


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* [Design idea by Gregoire Vella on Behance](https://www.behance.net/gregoirevella)
* [Creative Commons ](https://creativecommons.org/licenses/by-nc/4.0/)

