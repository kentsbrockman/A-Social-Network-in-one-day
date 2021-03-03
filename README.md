# A Social Network in one day

As I'm currently getting to the last part of [The Hacking Project](https://www.thehackingproject.org/) bootcamp, here's a little throwback from the good old times when I was really just discovering **Ruby on Rails**.

The given context is the **implementation of a social network**, or more prosaically a website composed of registered users.

On top of that, the app offers the possibility of **creating content** in the form of written articles, as well as commenting those of other users of the platform.

To be honest with you, there's **a ton of things to improve here**:

- I messed up with Webpacker for the deployment, so no Bootstrap, neither Fontawesome on [Heroku](https://a-simple-social-network.herokuapp.com/).
- Overall, the design and UX are really just about okay.
- It lacks a bunch of interesting features to be more complete (likes, visits on other profiles, tags on article, search...)

But hey, interestingly enough, **I've coded in one day** what would have been one week of work a few months back (cf. [The Gossip Project](https://github.com/kentsbrockman/The-Gossip-Project)). So, I am satisfied with the progress here 😊

---

## Features

- A robust data management for the **3 models available**: users, articles and comments.
- A secured **authentication** through a Devise plugging.
- A trial by fire of a **Rails Scaffold** for the articles management.
- A seed of data to have content available straight away.

---

## Set up

The website is directly available on [Heroku](https://a-simple-social-network.herokuapp.com/), even though it lacks Bootstrap and Fontawesome pluggings. Otherwise, you can run it locally by following these steps:

1/ Download or clone this repository

2/ `cd A-Social-Network-in-one-Day`

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
