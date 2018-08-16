# Events Calendar in React & Rails

Save events to your Monthly Calendar. Calendar built using RESTful API architecture in RAILS. User is able to make a get, put, post & delete request to API. More features coming soon! :neckbeard:

### App in Ruby Rails:
This App is a refactored from a previous Node.JS application that I built. [Check out the original repo here](https://github.com/natashaU/events_calendar). I decided to practice Ruby on Rails and I cloned my original app to use the frontend I built in React. I changed the Remote Repo with  `git remote set-url origin` so that the original repo remains intact. I deleted the entire backend in Node.JS and changed the backend to Ruby on Rails — and I built the new backend in rails from scratch. 


## Heroku Deployment
Check out the live application here:
[Click me to play with the calendar!](https://natasha-calendar.herokuapp.com/)

## Technologies used:

* React
* Javascript
* Ruby on Rails
* JSX
* PSQL
* Active Record
* CSS

To make sure you have rails and other technologies installed to run a ruby on rails application:  type `ruby -v` , `rails -v` and `bundle -v` into your console. 

![calendar](./pictures/calendarone.png)

## Specs:

* The User can click on a day to access input submit form
* The User can use a scroll bar to see multiple events in one day
* User is able to click on left and right arrows to switch months
* User is able to click on trash can & pencil icons to delete & update events

![Edit](./pictures/calendartwo.png)

## To check out the game locally on Mac OS after cloning the repo URL
	
    `cd calendarfrontend
     npm install
     npm run start
    (navigate to: http://localhost:3000 in your browser)`

    `cd calendarbackend
    bundle install 
    bin/rails db:setup
    bin/rails db:migrate
    bin/rails server -p 3001
    (navigate to: http://localhost:3001 in your browser)`

    



