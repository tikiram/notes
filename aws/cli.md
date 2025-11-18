# CLI

## S3

```bash
aws s3api list-buckets --query "Buckets[].Name"
```

```bash
aws s3 sync languageApp/build/dist/wasmJs/productionExecutable s3://spa-memorize/
```

## EC2


```bash
aws ec2 describe-instances
```

```bash
aws ec2 describe-instances \
      --filters Name=instance-state-name,Values=running \
      --query 'Reservations[*].Instances[*].{Name:Tags[?Key==`Name`]|[0].Value,InstanceId:InstanceId,InstanceType:InstanceType,State:State.Name,LaunchTime:LaunchTime}' \
      --output table
```

```bash
aws ec2 stop-instances --instance-ids i-xxx
```