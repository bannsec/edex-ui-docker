# Build
```bash
$ sudo docker build -t edex
```

# Run
```bash
$ sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix edex
```
