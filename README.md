# plantPlanet


This app is built to help connect people who need temporary homes for their plants while they are out of town!

[Link to plantPlanet](https://protected-eyrie-23510.herokuapp.com/)

### Technology
    * Ruby on Rails

    * Postgresql

    * Bcrypt

    * Bootstrap

    * HTML
    
    * CSS/SASS


### Installation/Startup Instructions

    * The first step is to download this directory from Github to a local directory on your computer.

    * Open Terminal 

    * Open the project directory and type: bundle install      -(This installs gems you need for the app)

    * Make sure you have Postgres, if not download from the Postgres website. 
    
    * Then, initiate a Postgres local server

    * Open a new terminal tab and make sure you are not in Postgres or have a rails server open in that tab.

    * Type: rails run rake db:migrate 
        -(this will migrate the app's tables)

    * Type: rails server. 
        -(This will initiate your server)

    * Open a new tab on your browser and type in localhost:3000
        -(If you get an error or a different application, make sure you do not have a previous local server running in a separate terminal tab.)

    * Start using/updating the app to help pets and people in your area!


### Unresolved Issues

* The application is fully functional, but I would like to add some new models & work on the styling. 

### Future Features and Functionality

* I would like to be able to ad a search function, and hash tags to the posts to help facilitate said search function.

### Technical Requirements
* I two models: Posts & Users
* Users can log in & Sign up with authentication. Users cannot change other users profiles and cannot delete other users Posts. Only the original poster can take the pet down once it has been adopted. 
* Both Users and Posts have full CRUD
* They app is currently deployed using Heroku
