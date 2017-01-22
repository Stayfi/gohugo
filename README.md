# Go Hugo

Pretty light docker container to run Hugo

[https://gohugo.io](https://gohugo.io)

## Installation
stayfi/Go-Hugo require docker.

First, run your docker terminal.

Then you will need to clone this repo :

```sh
$ git clone git@github.com:stayfi/gohugo.git
```

Build stayfi/gohugo container :
```sh
$ docker build -t stayfi/gohugo gohugo
```

## Usage

You should make a new alias nawe "hugo" with this inside :
```sh
$ docker run -v `pwd`:/src --rm -p 1313:1313 stayfi/gohugo -s /src
```

To create a new site :
```sh
$ docker run -v `pwd`:/src --rm -p 1313:1313 stayfi/gohugo -s /src new site /src
```

Assuming your default docker IP address is 192.168.99.11, you can serve your site by :
```sh
$ docker run -v `pwd`:/src --rm -p 1313:1313 stayfi/gohugo -s server --theme=hugo_theme_robust --buildDrafts --bind "0.0.0.0" --baseURL 192.168.99.100:1313
```
Replace "192.168.99.100" by your docker host IP address.

##### Web server : http://192.168.99.100:1313
To start working on your site.

## Credits
Stayfi B. - <stayfi@gmail.com>

## Versions

#### 0.18.1
First version, working.

## License
MIT license