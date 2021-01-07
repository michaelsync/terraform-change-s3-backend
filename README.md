# How to change the S3 Backend name

1. Checkout the repo
2. Make sure you have configured AWS CLI (type: aws s3 ls - This command shows you your list of S3 in your default region.) Create the bucket
3. do ```terraform init```
4. do ```terraform apply``` 
5. Change the key of backend ```key    = "dev/pipeline.tfstate"``` => ```key    = "test/pipeline.tfstate"```
6. You will have to do the ```terraform init``` or ```terraform init -force-copy```
7. do ```terraform apply``` 

