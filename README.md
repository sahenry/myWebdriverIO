Fullscreen Media WebdriverIO Automation Challenge
=================================================

***

This project will run WebdriverIO tests with [Cucumber](https://cucumber.io/). Cucumber maps an ordinary language to code and allows us to start with the test process in the early stages of product development.

This challenge was originally written using the mocha framework but I ran into some issues with the drivers being unable to communicate properly with Chrome and Firefox so I switched to Cucumber.

Other product dependencies used for this project were: node.js, npm, yarn and chai promises. 

## Requirements

- Node version 6 or higher
- macOS High Sierra operating system (10.13.2 or higher)

NPM is ok to use for this project but for the sake of time, I used Yarn (>= 1.0.0) instead. Yarn is cool because of its speed & solid dependency locking mechanism.

## Application Prerequisites
(if not already installed)

- Download Xcode from the Apple Store.
- If possible, also download RubyMine.

- In the Terminal window, go to your local directory. (e.g. /Users/sahenry)
- Make a directory for your project (e.g. mkdir myproject)

## Installation

- Install Homebrew

    At the command line, type:
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

- Install Node.js and NPM using Homebrew.

    At the command line, type:
    brew install node

    To see if node is installed type: 
    node -v

    A version number should be shown (e.g. v10.7.0).
    
    To see if npm is installed type: 
    npm -v 

    A version number should be shown (e.g. 6.2.0).

## Create an NPM package

At the command line, type: 
npm init -y

## Install WebdriverIO

In the Terminal window, type: 
npm i --save-dev webdriverio

## Shortcut
Edit package.json in the scripts section and replace with the info below. (The assumption is being made here that the cucumber framework will be used for automation)

    “scripts”: {
        “test”: “cucumber”
    }

## Set up Webdriver Configuration

At the command line, type:
npm test

When prompted, select the options below:

- Where do you want to execute your tests? On my local machine
- Which framework do you want to use? cucumber
- Shall I install the framework adapter for you? Y
- Where are your test specs located? ./test/**/*.js
- Which reporter do you want to use? spec - https://github.com/webdriverio/wdio-spec-reporter
- Shall I install the reporter library for you? Yes
- Do you want to add a service to your test setup? selenium-standalone - https://github.com/webdriverio/wdio-selenium-standalone-service
- Shall I install the services for you? Yes
- Level of logging verbosity silent
- In which directory should screenshots gets saved if a command fails? ./errorShots/
- What is the base url? https://google.com

Wdio packages will then be installed.

## Java Development Environment

- Install the latest JDK from here: https://www.oracle.com/technetwork/java/javase/downloads/index.html

## Set up your Selenium Environment

- From the command line where you want to work on your project, type:
    npm install selenium-standalone@latest -g
    selenium-standalone install
    selenium-standalone start

- You should see a message similar to below:
    INFO [SeleniumServer.boot] - Selenium Server is up and running on port 4444
    Selenium started

- Install the Selenium Standalone Service
    Type this at the command line of the automation project:
    npm install wdio-selenium-standalone-service --save-dev

## Install PhantomJS (just in case)

In the Terminal window of the main automation project, type:
npm install --save-dev wdio-phantomjs-service

## Install chai and chai as promised

At the command line, type:
npm install chai
npm i chai-as-promised

## Install Wdio Mocha Framework Adapter

At the command line, type:
npm install wdio-mocha-framework --save-dev

## Set up Firefox

In the Terminal window of the main automation project, type:
npm install wdio-firefox-profile-service --save-dev

## Set up Chrome

In the Terminal window of the main automation project, type:
- brew install chromedriver

- If this does not work, type:
    brew tap homebrew/cask
    and then...
    brew cask install chromedriver

## Quick start

1. Clean the project (Optional):
-- Run `yarn run clean`

2. Install the dependencies (`yarn install`)

Now you are ready to write and run your own features.

# How to run the tests

Start the local web server:

```sh
$ yarn run local-webserver
```

Run a feature test:

```sh
$ yarn run wdio --spec ./src/features/select.feature
```

_Please note_ The WDIO runner uses the configuration file `wdio.conf.js` by default.

# Configurations

To configure your tests, checkout the [`wdio.conf.js`](https://github.com/webdriverio/cucumber-boilerplate/blob/master/wdio.conf.js) file in your test directory. It comes with a bunch of documented options you can choose from.

## Automation Glossary

- WebdriverIO is a functional test automation framework.

- Xcode provides developers with a unified workflow for developing apps.

- Homebrew is a package manager. It helps to install the things that your Mac may have forgotten.

- Node.js is an open-source, cross-platform JavaScript run-time environment that executes 
JavaScript code outside the browser.

- NPM is a package manager for the JavaScript programming language.

- Mac Terminal Application lets you access the Mac operating system and issue text commands to your computer.