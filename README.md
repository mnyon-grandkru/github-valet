
# Github Valet

[![Coverage Status](https://coveralls.io/repos/github/trystant/github-valet/badge.svg?branch=master)](https://coveralls.io/github/trystant/respository-observer?branch=master)
[![CircleCI](https://circleci.com/gh/trystant/github-valet.svg?style=svg)](https://circleci.com/gh/trystant/github-valet)

This goal of this project is to build a robot that can analyze Github 
repositories and report if any of the conditions outlined below are 
not met. The first check will involve determining whether repositories have
README.md files.

## Getting Started

To determine whether a Github repo has a README.md, run the following:
```
> GithubValet.readme_md_exists_for?(repo_string)
```
A repository with a README returns true, a repository without returns false.


### Prerequisites

Ruby 2.4.0


Give examples

### Installing

Here's how to currently download and install

Clone the repository from github:

```
> git clone git@github.com:trystant/github-valet.git
```

Install supporting libraries with `bundler`

```
> bundle install
```
Use `bundle exec pry` to open a console

```
> bundle exec pry
```

Run `GithubValet` commands:

```
[1] pry(main)> GithubValet.readme_md_exists_for?('BOWiki/BOW')
=> true
```

## Running the tests

Github-valet uses [RSpec](https://relishapp.com/rspec) for automated tests.
The tests are run by using the command `rake`.

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Ruby](http:/ruby-lang.org/) - The language used
* [RSpec](https://relishapp.com/rspec) - RSpec
* [Octokit](https://github.com/octokit/octokit.rb) - Octokit

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) 
for details on our code of conduct, and the process for submitting pull 
requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, 
see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Mark Nyon** - *Initial work* - [Github Profile](https://github.com/trystant)

See also the list of [contributors](https://github.com/your/project/contributors)
who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.txt) 
file for details

## Acknowledgments

