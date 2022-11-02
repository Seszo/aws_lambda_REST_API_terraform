# REST API for exercise to return values in JSON format based on ID from a CSV

The requiremts were defined as below : 
Write a simple web-service application which provides access to a data set.
The solution should be a publicly accessible service API that responds to a couple API
calls:
● GET /api/v1/item/{ID} - returns item ID from the dataset (e.g. row 42 of the CSV) in
JSON
● POST /api/v1/item - OPTIONAL - creates a new item (from a JSON request body)
and returns its ID that can be used to retrieve it with the GET call

The python script to handle the request is located in CSV folder next to the temp CSV that is used for the test.

Terraform code is included to create the required resources and methods. In order to be able to test it out you will need to add your access details to the provider.tf (removed them for security purposes)

## To see the results please check the below link:

```
https://qy98ojamfh.execute-api.us-east-1.amazonaws.com/payoutexercise?id=42
```