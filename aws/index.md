
## AWS CLI

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html#getting-started-install-instructions

> https://formulae.brew.sh/formula/awscli

```bash
brew install awscli
```

Ways to sign in:

* `aws configure` (classic way)
  - create IAM user
    - recommendation: rotate tokens every 90 days
* `aws configure sso` (handles short-lived tokens)
  - needs IAM-Identity-Center to be enabled
    - requires creating an Organization (even with 1 user)

> Pro-Tip: Security is about the Keys, not the CLI
> Regardless of how you install it, the real security risk is how you handle your credentials. Never hard-code your AWS_ACCESS_KEY_ID in scripts.

> Recommendation: Use `aws configure` to store credentials in ~/.aws/credentials, or better yet, use IAM Identity Center (SSO) so you never have long-lived keys on your machine at all.

### IAM Identity Center

(my personal account):
> This account will be the management account  of your organization. We recommend as a security best practice that you do not store resources in this account.

## CDK

```bash
npm install -g aws-cdk
```
> Seems global installation is not required, consider `npx cdk ....` to use it
> `cdk init` will initialize a local project with aws-cdk installed  

Create a folder for the project and then cd into it

```bash
cdk init app --language typescript
```

### enabling resources (I think)

```bash
cdk bootstrap aws://992382443861/us-east-1
```

> Note: Bootstrapping launches resources into your AWS environment that are required by AWS CDK. These include an S3 bucket for storing files and AWS Identity and Access Management (IAM) roles that grant permissions needed to run our deployment.

> First, determine the AWS environment that you want to use. An AWS environment consists of an AWS account and AWS Region.

```bash
aws sts get-caller-identity --query "Account" --output text
aws configure get region
```

> https://docs.aws.amazon.com/cdk/v2/guide/hello-world.html