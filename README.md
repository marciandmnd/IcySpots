![Icon](icon.png "IcySpots")

# IcySpots

Repository of skate spots worldwide. Riding on Rails 5!

## Getting Started

```
git clone https://github.com/marciandmnd/icyspots.git
cd icyspots
bundle install
```

Next, configure the necessary environment variables. See Prerequisites section below.

```
rails s
```

### Prerequisites

IcySpots uses a Google Maps for interactive map action and AWS S3 for storing spot media. The following environment variables are required: 

```
GOOGLE_API_SERVER_KEY: ...
GOOGLE_API_BROWSER_KEY: ...
S3_BUCKET_NAME: ...
AWS_ACCESS_KEY_ID: ...
AWS_SECRET_ACCESS_KEY: ...
AWS_REGION: ...
```

These environement variables should be defined in `application.yml` in the project's config directory.

## Running the tests

`rake test`

## Deployment

IcyPhotos is pre-configured to be easily deployed to Heroku. Simply push the repo to your Heroku Rails application.

## Built With

* [Rails](http://rubyonrails.org/)

## Contributing

Pull requests welcome!

## Authors

* **Marcian Diamond** - *Initial work* - [marcian.guru](https://www.marcian.guru)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
