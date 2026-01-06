# S3 Upload via AWS CLI

Project artefacts were uploaded, downloaded, and deleted on Amazon S3 using the AWS CLI.

Commands used:
```bash

## create bucket

aws s3 mb s3://bucket-name

## create a folder

aws s3api put-object --bucket bucket-name --key folder-name

## upload files into folder

aws s3 sync . "s3://bucket-name/folder-name/"

## list bucket

aws s3 ls s3://bucket-name/path/

## download object

aws s3 cp "s3://bucket-name/folder-name/screenshots/ .screenshots --recursive

## delete objects

aws s3 rm "s3://bucket-name/folder-name/

## delete bucket

aws s3 rm "s3://bucket-name/ --recursive
```
