package Paws::API::ServiceToClass;
  use strict;
  use warnings;

  our $services_to_classes = {
   'acm-pca' => 'ACMPCA',
    alexaforbusiness => 'AlexaForBusiness',
    apigateway => 'ApiGateway',
    apigatewaymanagementapi => 'ApiGatewayManagement',
   'application-autoscaling' => 'ApplicationAutoScaling',
   'application-insights' => 'ApplicationInsights',
    appmesh => 'AppMesh',
    autoscaling => 'AutoScaling',
   'autoscaling-plans' => 'AutoScalingPlans',
    ce => 'CostExplorer',
    cloudhsmv2 => 'CloudHSMv2',
    cloudsearchdomain => 'CloudSearchDomain',
   'codestar-notifications' => 'CodeStarNotifications',
   'cognito-identity' => 'CognitoIdentity',
   'cognito-idp' => 'CognitoIdp',
   'cognito-sync' => 'CognitoSync',
    config => 'Config',
    cur => 'CUR',
    datapipeline => 'DataPipeline',
    datasync => 'Datasync',
    devicefarm => 'DeviceFarm',
    directconnect => 'DirectConnect',
    discovery => 'Discovery',
    dms => 'DMS',
    ds => 'DS',
    dynamodbstreams => 'DynamoDBStreams',
   'ec2-instance-connect' => 'EC2InstanceConnect',
    elasticbeanstalk => 'ElasticBeanstalk',
    # The service code is "elasticfilesystem"
    elasticfilesystem => 'EFS',
    elasticloadbalancing => 'ELB',
    elasticmapreduce => 'EMR',
    elastictranscoder => 'ElasticTranscoder',
    elb => 'ELB',
    elbv2 => 'ELBv2',
    email => 'SES',
    es => 'ES',
    events => 'CloudWatchEvents',
    forecast => 'Forecast',
    forecastquery => 'ForecastQuery',
    fsx => 'FSX',
    globalaccelerator => 'GlobalAccelerator',
    imagebuilder => 'ImageBuilder',
   'iot-data' => 'IoTData',
   'iot-jobs-data' => 'IoTJobsData',
   'iot1click-devices' => 'IoT1ClickDevices',
   'iot1click-projects' => 'IoT1ClickProjects',
    iotevents => 'IoTEvents',
   'iotevents-data' => 'IoTEventsData',
   'kinesis-video-archived-media' => 'KinesisVideoArchivedMedia',
   'kinesis-video-media' => 'KinesisVideoMedia',
    kinesisanalytics => 'KinesisAnalytics',
    kinesisanalyticsv2 => 'KinesisAnalyticsV2',
    kinesisvideo => 'KinesisVideo',
   'lex-models' => 'LexModels',
   'lex-runtime' => 'LexRuntime',
   'license-manager' => 'LicenseManager',
    logs => 'CloudWatchLogs',
    machinelearning => 'MachineLearning',
   'marketplace-catalog' => 'MarketplaceCatalog',
   'marketplace-entitlement' => 'MarketplaceEntitlement',
    marketplacecommerceanalytics => 'MarketplaceCommerceAnalytics',
   'mediapackage-vod' => 'MediaPackageVod',
   'mediastore-data' => 'MediaStoreData',
    meteringmarketplace => 'MarketplaceMetering',
    mgh => 'MigrationHub',
    mobile => 'MobileHub',
    monitoring => 'CloudWatch',
    mq => 'MQ',
   'personalize-events' => 'PersonalizeEvents',
   'personalize-runtime' => 'PersonalizeRuntime',
    pi => 'PerformanceInsights',
   'pinpoint-email' => 'PinpointEmail',
   'pinpoint-sms-voice' => 'PinpointSMSVoice',
    polly => 'Polly',
   'qldb-session' => 'QLDBSession',
    quicksight => 'Quicksight',
   'rds-data' => 'RDSData',
    redshift => 'RedShift',
   'resource-groups' => 'ResourceGroups',
    resourcegroupstaggingapi => 'ResourceTagging',
    robomaker => 'Robomaker',
    route53 => 'Route53',
    route53domains => 'Route53Domains',
    s3control => 'S3Control',
   'sagemaker-runtime' => 'SageMakerRuntime',
    savingsplans => 'SavingsPlans',
    sdb => 'SDB',
    schemas => 'Schemas',
    secretsmanager => 'SecretsManager',
    serverlessrepo => 'ServerlessRepo',
   'service-quotas' => 'ServiceQuotas',
    servicecatalog => 'ServiceCatalog',
    signer => 'Signer',
    signin => 'Signin',
    simpledb => 'SimpleDB',
   'sms-voice' => 'PinpointSMSVoice',
   'sso-oidc' => 'SSOOidc',
    stepfunctions => 'StepFunctions',
    storagegateway => 'StorageGateway',
    sts => 'STS',
    s3 => 'S3',
    swf => 'SimpleWorkflow',
   'waf-regional' => 'WAFRegional',
  };

  sub maybe_service_to_class {
    my $service = shift;
    return $services_to_classes->{ $service };
  }
 
  sub service_to_class {
    my $service = shift;
    my $class = maybe_service_to_class($service);
    die "No class for $service" if (not defined $class);
    return $class;
  }

  sub services {
    keys %$services_to_classes;
  }

  sub classes {
    grep { defined $_ } values %$services_to_classes;
  }
1;
