# armv7_buster_custom_25836

This is a repository for a cloud function developed with [Crowdbotics](https://www.crowdbotics.com/)

## Features

* Uses the [Serverless](https://serverless.com/) framework.
* Build to deploy to [AWS Lambda](https://aws.amazon.com/lambda/).
* Provides a single REST endpoint at `GET /hello`.
* Uses Python 3.7.

## Getting Started

1. [Install](https://serverless.com/framework/docs/getting-started/) the Serverless framework on your local machine.
2. [Configure](https://serverless.com/framework/docs/providers/aws/guide/credentials/) your AWS provider credentials for Serverless framework.
3. `git clone` this repository to your local machine.
4. `$ cd <clone root>`
5. `$ serverless deploy -v`
6. Look for output with the endpoint. It should look like the following:
    ```
    endpoints:
      GET - https://<aws api gateway endpoint>/dev/hello
    ```
7. Invoke the function:
    `$ curl https://<aws api gateway endpoint>/dev/hello`

