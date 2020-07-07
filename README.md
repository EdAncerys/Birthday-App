# Post-Challenge 2: Birthday App

[Project Description](#project-description) | [Tech Stack](#tech-stack) | [Installation](#installation) | [Running tests](#running-tests)

## Project Description

Challenge is to build a web app that will ask the user for a name and birthday.

When the user submits the form, and depending on the current date, the app will either:

- Wish the user happy birthday
- Tell them how long they'll have to wait until their next birthday

## Tech Stack:

- [Capybara](https://github.com/teamcapybara/capybara) Capybara helps you test web applications by simulating how a real user would interact with your app.
- [RSpec](https://rspec.info/) Behaviour Driven.
  Development for Ruby. **TDD**.
- [Sinatra](http://sinatrarb.com/) Sinatra is a DSL for quickly creating web. applications in Ruby with minimal effort.

## How it works

- Main page have submit form that takes in name, day and month you are born in.
- Once submitted it redirect to a new page/view where you able to see days and month left till you birthday.
- And if it is you birthday - it is wishes you a happy birthday!

## Running tests

- Navigate to local repository
  `$ cd Birthday-App`
- No need to start the server. In the terminal type the following command:
  `$ rspec`

## Installation

- Clone this repository
  `$ git clone https://github.com/EdAncerys/Birthday-App`
- Navigate to local repository
  `$ cd Birthday-App`
- Install bundler if you don't already have it
  `$ gem bundle install`
- Install all dependencies
  `$ bundle install`
- Start the server
  `$ ruby app.rb`
- Navigate to [http://localhost:4567](http://localhost:4567) in your browser
- Alternatively to run the Birthday-App: `rackup -p 3000`
- Navigate to [http://localhost:3000](http://localhost:3000) in your browser to view bookmarks
