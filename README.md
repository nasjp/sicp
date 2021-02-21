# Structure and Interpretation of Computer Programs

<https://amzn.to/3pDWT0v>

```sh
docker build . -t scheme:latest
docker run --rm -it -v $PWD:/app:delegated scheme sh -c 'scheme < hello.ss'
```
