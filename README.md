# Easy backup grafana dashboards to AWS

```
docker run --rm -e AWS_ACCESS_KEY_ID=key -e AWS_SECRET_ACCESS_KEY=secret -v /database:/db  grafcli "s3://backup/grafana/"
```

with use of https://github.com/m110/grafcli