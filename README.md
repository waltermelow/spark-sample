# [WIP]spark-sample

A sample Java webapp using [Spark](http://sparkjava.com/).

## Running Locally

Make sure you have Java and Maven installed.  Also, install the [Heroku Toolbelt](https://toolbelt.heroku.com/).

```sh
$ git clone https://github.com/yusubori/spark-sample.git
$ cd spark-sample
$ mvn install
$ foreman start web
```

Your app should now be running on [localhost:5000](http://localhost:5000/).

## [WIP]Deploying to Heroku

```sh
$ heroku create
$ git push heroku master
$ heroku open
```

## [WIP]Documentation



## Reference
[Getting Started with Java on Heroku](https://devcenter.heroku.com/articles/getting-started-with-java) 

[Deploying Java Apps on Heroku](https://devcenter.heroku.com/articles/deploying-java)

[Continuous Deployment with Heroku](https://circleci.com/docs/continuous-deployment-with-heroku)
[Continuous Deployment with CircleCI and Heroku: Part 1](https://www.youtube.com/watch?v=Hfs_1yuWDf4)

[Getting started with Spark and Docker](http://sparktutorials.github.io/2015/04/14/getting-started-with-spark-and-docker.html)
