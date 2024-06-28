# Generate success message 
aws lambda invoke --function-name destinationT2 --invocation-type Event --payload eyJTdWNjZXNzIjp0cnVlfQ== reponse.json
{"Success": true}

# Generate failure message 
{"Success": false}
aws lambda invoke --function-name destinationT2 --invocation-type Event --payload eyJTdWNjZXNzIjpmYWxzZX0= reponse.json