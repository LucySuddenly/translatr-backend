# Translatr -- Backend API

This is the backend API for our Javascript project -- it's built on Rails and is designed for use with [this](https://github.com/LucySuddenly/translatr-frontend) frontend. A version is hosted on Heroku, [here](https://translatr-backend.herokuapp.com).

## Motivation

We wanted to use a Google API, and the translate API seemed like a great fit for a project.

## Screenshots
Home page

<img src="https://i.imgur.com/6dzzX9F.jpg" width="800">

Phrasebook

<img src="https://i.imgur.com/2dfdoaF.png" width="800">

## Technology Used

- Ruby on Rails
- Google Translate API

## Features

Users can:
- create accounts
- create phrasebooks
- get a translation
- save translations to phrasebooks
- view phrasebooks
- get currency conversions


### Installing

To install locally, clone down the repo and run

```
bundle install
```

Follow [this](https://dev.to/nodefiend/quick-start-google-translation-api-in-rails-4j81) excellent walkthrough on how to get and store your Google Translate API keys.


## Running

Simply run

```
rails server
```

## Querying

Use a GET request to /api/v1/users/:id to retrieve all data associated with that user.

Use a GET request to /api/v1/users to retrieve all data associated with all users.

Use a POST request to /api/v1/users to create a new user, put "username" as a key in the body of the request.

Use a POST request to /api/v1/trips to create a new trip, put "name" as a key in the body of the request.

Use a POST request to /api/v1/translations to create a new translation, put "source_text" and "output_text" as keys in the body of the request.

use a POST request to /api/v1/translate to get a translation, put "text" and "language" as keys in the body of the request.

## Built With

* [Ruby on Rails](https://github.com/rails/rails) - Ruby on Rails

## Contributing

Pull requests are welcome.

## License

This project is licensed under the MIT License.



