import json
import os
import boto3
from base64 import b64decode

def decrypt_pass():
    FUNCTION_NAME = os.environ["AWS_LAMBDA_FUNCTION_NAME"]

    ENCRYPTED = os.environ["DB_PASS"]
    DECRYPTED = boto3.client('kms').decrypt(
        CiphertextBlob = b64decode(ENCRYPTED),
        EncryptionContext={'LambdaFunctionName': FUNCTION_NAME}
    )['Plaintext'].decode('utf-8')
    print("Raw password %s" %(DECRYPTED))

def lambda_handler(event, context):
    DB_HOST = os.environ["DB_HOST"]
    DB_USER = os.environ["DB_USER"]
    DB_PASS = os.environ["DB_PASS"]
    print("Connect to %s as %s with %s" % (DB_HOST, DB_USER, DB_PASS))
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }