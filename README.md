# Usage

```
docker run --rm -it --net=bridge -v ${PWD}:/work arukoh/netimg dnsdump
```

```
docker run --rm -it --net=bridge -v ${PWD}:/work arukoh/netimg bash -c "dnsdump registry.yarnpkg.com"
```

