# buggy-docker

脆弱な Dockerfile の例です。

[![docker ci](https://github.com/kannkyo/buggy-docker/actions/workflows/docker-ci.yml/badge.svg)](https://github.com/kannkyo/buggy-docker/actions/workflows/docker-ci.yml)
[![docker publish](https://github.com/kannkyo/buggy-docker/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/kannkyo/buggy-docker/actions/workflows/docker-publish.yml)

## 埋め込まれている脆弱性

[CIS Docker Benchmarks](https://www.cisecurity.org/benchmark/docker/) で定義されている以下の脆弱性を埋め込んでいます。

- CIS 4.1 Create a user for the container
- CIS 4.2 Use trusted base images for containers (user provide trusted base image list)
- CIS 4.3 Do not install unnecessary packages in the container (user provide the disallowed package list)
- CIS 4.6 Add HEALTHCHECK instruction to the container image
- CIS 4.7 Do not use update instructions alone in the Dockerfile
- CIS 4.9 Use COPY instead of ADD in Dockerfile
- CIS 4.10 Do not store secrets in Dockerfiles (user provide the secret pattern, only checks contents in `ENV` and `LABEL` instructions)

## 使用している脆弱性スキャナー

GitHub Actioons で以下の脆弱性スキャナーを使って、脆弱性をチェックしています。

- [sysdiglabs/benchmark-dockerfile](https://github.com/sysdiglabs/benchmark-dockerfile) @ [.github/workflows/docker-ci.yml](.github/workflows/docker-ci.yml)
  - スキャン結果は [Actionsのログ](https://github.com/kannkyo/buggy-docker/actions/workflows/docker-ci.yml) に出力されます。
- [aquasecurity/trivy-action](https://github.com/aquasecurity/trivy-action) @ [.github/workflows/docker-ci.yml](.github/workflows/docker-ci.yml)
  - スキャン結果は [Code scanning alerts](https://github.com/kannkyo/buggy-docker/security/code-scanning) に出力されます。
