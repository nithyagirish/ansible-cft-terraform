import boto3
def lambda_handler(event,context):
    print('This is lambda created from cft')
    return 'success'