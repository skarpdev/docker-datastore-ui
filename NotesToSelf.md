# Notes to self

## Releasing a new version

```
git tag vx.y.z
docker build -t skarpdev/google-datastore-ui:<version> .
docker push skarpdev/google-datastore-ui:<version>
```
