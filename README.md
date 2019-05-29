# Minkstarter


The frontend and backend portions of this application run on two separate ports and must run concurrently. These are the following steps needed to run the backend portion.

1. Git clone minkstarter
2. Bundle install
3. rake db:migrate
4. rake db:seed
5. In the console run rails s

In order to have the frontend portion of the application running follow these steps. The frontend runs on localhost:5000

1. Click on https://github.com/minkeesung/frontend and clone repository
2. Npm install
3. Npm start

Minkstarter was modeled after Kickstarter application. It is a single-page web application that allows users to create and fund projects. It uses Ruby on Rails, ES6, React and Redux.
