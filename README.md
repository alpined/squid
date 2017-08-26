## What is this container?
This **extremely tiny squid** is built using secure Alpine-Linux. Just **~9MB** (becomes ~13MB when uncompressed). Enjoy!

## How to run it?

Simple test 
```
docker run --name my-squid -d -p 3128:3128 alpined/squid
```

Or specify your own data folder through volume mounting
```
docker run --name my-squid -d --restart=unless-stopped \
-p 3128:3128 -v ~/squid:/var/cache/squid \
alpined/squid
```
... and your squid is ready!

Test it! :-)

```
curl --proxy http://localhost:3128 http://google.com
```

## What are available volume mounts?

Pre-defined mounts

- /var/cache/squid -> squid cache folder
- /var/log/squid -> squid log folder

