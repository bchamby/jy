#!/bin/bash
sudo yum install -y unzip
sudo curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "/var/tmp/awscli-bundle.zip"
unzip /var/tmp/awscli-bundle.zip -d /var/tmp
sudo /var/tmp/awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
