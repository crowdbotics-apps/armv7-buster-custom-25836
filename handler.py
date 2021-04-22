import json


def hello(event, context):
    body = {
        "message": "Congratulations! You just released your first serverless function - armv7_buster_custom_25836 - with Crowdbotics! Reward yourself! Grab a cup of coffee!"
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response
