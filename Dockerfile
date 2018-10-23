FROM alpine:3.8

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --no-cache-dir --upgrade pip && \
  pip install --no-cache-dir awscli==1.16.33 s3cmd==2.0.2 https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz && \
  mkdir /root/.aws && \
  aws --version && \
  s3cmd --version

ENTRYPOINT []
