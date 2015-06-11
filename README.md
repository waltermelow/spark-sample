# spark-sample

A sample Java webapp using [Spark](http://sparkjava.com/).

## Running Locally
# using Heroku Toolbelt 

Make sure you have Java and Maven installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone https://github.com/yusubori/spark-sample.git
$ cd spark-sample
$ mvn install
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

# using Docker only

Make sure you have [Docker](https://docs.docker.com/installation/) installed.

```sh
$ git clone https://github.com/yusubori/spark-sample.git
$ cd spark-sample
$ docker build -t yusubori/spark-sample . 
$ docker run -d -P --name=spark-sample yusubori/spark-sample
$ docker port spark-sample 
```


# using Heloku Toolbelt + Docker

Make sure you have [Heroku Toolbelt](https://toolbelt.heroku.com/) installed.

```sh
$ heroku plugins:install heroku-docker
$ git clone https://github.com/yusubori/spark-sample.git
$ cd spark-sample
$ heroku docker:start
```

## Deploying to Heroku
# using Heorku Toolbelt

```sh
$ heroku create
$ git push heroku master
$ heroku open
```

## Reference
[Continuous Deployment with Heroku](https://circleci.com/docs/continuous-deployment-with-heroku)
[Deploying Java Apps on Heroku](https://devcenter.heroku.com/articles/deploying-java)
[Getting Started with Java on Heroku](https://devcenter.heroku.com/articles/getting-started-with-java) 
[Getting started with Spark and Docker](http://sparktutorials.github.io/2015/04/14/getting-started-with-spark-and-docker.html)
[Local Development with Docker (heroku)](https://devcenter.heroku.com/articles/introduction-local-development-with-docker)
