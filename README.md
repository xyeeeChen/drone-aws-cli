# Drone-AWS-CLI
[![GitHub tag](https://img.shields.io/github/tag/xyeeeChen/drone-aws-cli.svg)](https://github.com/xyeeeChen/drone-aws-cli/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/yeechen/drone-aws-cli.svg)](https://hub.docker.com/r/yeechen/drone-aws-cli/)

[Drone](https://drone.io/) plugin for AWS CLI.

## Usage

For example, download files from s3 folder:

```sh
docker run --rm \
  -e PLUGIN_ACCESS_KEY=<access_key> \
  -e PLUGIN_SECRET_KEY=<secret_key> \
  -e PLUGIN_REGION=<region> \
  -e PLUGIN_CMD=s3 \
  -e PLUGIN_SUB_CMD="cp s3://bucket/folder $PWD --recursive" \
  -v $PWD:$PWD \
  yeechen/drone-aws-cli
```

In drone:

```yaml
steps:
  - name: download
    image: yeechen/drone-aws-cli
    settings:
      access_key: <access_key>
      secret_key: <secret_key>
      region: <region>
      cmd: s3
      sub_cmd: "cp s3://bucket/folder . --recursive"
```

## References

[AWS CLI Docs](https://aws.amazon.com/documentation/cli/)
