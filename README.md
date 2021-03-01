# A Social Network in one day

As I'm currently getting to the last part of [The Hacking Project](https://www.thehackingproject.org/) bootcamp, here's a little throwback from the good old times when I was really just discovering **Ruby on Rails**.

The given context is the **implementation of a social network**, or more prosaically a website composed of registered users.

On top of that, the app offers the possibility of **creating content** in the form of written articles, as well as commenting those of other users of the platform.

To be honest with you, there's **a ton of things to improve here**:

* I messed up with Webpacker for the deployment, so no Bootstrap, neither Fontawesome on [Heroku](https://a-simple-social-network.herokuapp.com/).
* Overall, the design and UX are really just about okay.
* It lacks a bunch of interesting features to be more complete (likes, visits on other profiles, tags on article, search...)

But hey, interestingly enough, **I've coded in one day** what would've been one week of work a few months back. So I feel grateful for the progress here 😊

---

## Features

* A robust data management for the **3 models available**: users, articles and comments.
* A secured **authentication** through a Devise plugging.
* A trial by fire of a **Rails Scaffold** for the articles management.
* A seed of data to have content available straight away.

---

## Set up

The website is directly available on [Heroku](https://a-simple-social-network.herokuapp.com/), even though it lacks Bootstrap and Fontawesome pluggings. Otherwise, you can run it locally by following these steps:

1/ Get the resource:
  - Download the repository
  - OR `git clone https://github.com/kentsbrockman/A-simple-social-network-in-one-day`

2/ `cd my_amazing_blog`

3/ `bundle install`

4/ `rails db:create`

5/ `rails db:migrate`

6/ `rails db:seed`

7/ `rails server`

---

## Author

[Quentin Plaud](https://github.com/kentsbrockman)

---

Have a great day!