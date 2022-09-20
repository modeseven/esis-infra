
## base64 encode/decode
---
``` bash
base64 -w 0 id_ed25519 > id_ed25519base64.txt
base64 --decode id_ed25519base64.txt > decodetext.txt
```

## docker
---
To keep alive for debug:

ENTRYPOINT ["tail", "-f", "/dev/null"]

``` bash
docker build -t modeseven/gityq .
 
docker run --rm \
  -e SSH_KEY= BASE64ENCODEDKEY \
modeseven/gityq

docker run --rm modeseven/gityq
```
