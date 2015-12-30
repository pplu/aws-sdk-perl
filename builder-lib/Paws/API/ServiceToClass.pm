package Paws::API::ServiceToClass {
  use strict;
  use warnings;

  our $services_to_classes = {
    apigateway => 'ApiGateway',
    autoscaling => 'AutoScaling',
    cloudformation => 'CloudFormation',
    cloudfront => 'CloudFront',
    cloudhsm => 'CloudHSM',
    cloudsearch => 'CloudSearch',
    cloudsearchdomain => 'CloudSearchDomain',
    cloudtrail => 'CloudTrail',
    cloudwatch => 'CloudWatch',
    codecommit => 'CodeCommit',
    codedeploy => 'CodeDeploy',
    codepipeline => 'CodePipeline',
   'cognito-identity' => 'CognitoIdentity',
   'cognito-sync' => 'CognitoSync',
    config => 'Config',
    datapipeline => 'DataPipeline',
    devicefarm => 'DeviceFarm',
    directconnect => 'DirectConnect',
    ds => 'DS',
    dynamodb => 'DynamoDB',
    dynamodbstreams => 'DynamoDBStreams',
    ec2 => 'EC2',
    ecr => 'ECR',
    efs => 'EFS',
    elasticache => 'ElastiCache',
    elasticbeanstalk => 'ElasticBeanstalk',
    elastictranscoder => 'ElasticTranscoder',
    elb => 'ELB',
    elasticloadbalancing => 'ELB',
    ecs => 'ECS',
    elasticmapreduce => 'EMR',
    emr => 'EMR',
    es => 'ES',
    email => undef,
    firehose => 'Firehose',
    glacier => 'Glacier',
    iam => 'IAM',
    iot => 'IoT',
   'iot-data' => 'IoTData',
    inspector => 'Inspector',
    importexport => 'ImportExport',
    kinesis => 'Kinesis',
    kms => 'KMS',
    lambda => 'Lambda',
    logs => 'CloudWatchLogs',
    machinelearning => 'MachineLearning',
    marketplacecommerceanalytics => 'MarketplaceCommerceAnalytics',
    monitoring => 'CloudWatch',
    opsworks => 'OpsWorks',
    rds => 'RDS',
    redshift => 'RedShift',
    route53 => 'Route53',
    route53domains => 'Route53Domains',
    s3 => 'S3',
    ses => 'SES',
    signin => 'Signin',
    simpledb => 'SimpleDB',
    swf => 'SimpleWorkflow',
    ssm => 'SSM',
    sns => 'SNS',
    sqs => 'SQS',
    storagegateway => 'StorageGateway',
    sts => 'STS',
    support => 'Support',
    sdb => 'SDB',
    waf => 'WAF',
    workspaces => 'WorkSpaces',
  };
  
  sub service_to_class {
    my $service = shift;
    my $class = $services_to_classes->{ $service };
    die "No class for $service" if (not defined $class);
    return $class;
  }

  sub services {
    keys %$services_to_classes;
  }

  sub classes {
    grep { defined $_ } values %$services_to_classes;
  }
}
1;
