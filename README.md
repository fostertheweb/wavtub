## 🌊📺 wavtub

Run `wavtub` passing one or more YouTube URLs separated by a space:

```
docker run --rm -v $PWD:/tmp/output fostertheweb/wavtub:latest https://www.youtube.com/watch?v=jDRTghGZ7XU
```

Consider writing a script to avoid all that typing:

```bash
#!/usr/bin/env bash
docker run --rm -v ${PWD}:/tmp/output fostertheweb/wavtub:latest ${@}
```
