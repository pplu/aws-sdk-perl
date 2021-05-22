
package Paws::SecurityHub::BatchImportFindings;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFinding]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchImportFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchImportFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchImportFindings - Arguments for method BatchImportFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchImportFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchImportFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchImportFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchImportFindingsResponse = $securityhub->BatchImportFindings(
      Findings => [
        {
          AwsAccountId => 'MyNonEmptyString',
          CreatedAt    => 'MyNonEmptyString',
          Description  => 'MyNonEmptyString',
          GeneratorId  => 'MyNonEmptyString',
          Id           => 'MyNonEmptyString',
          ProductArn   => 'MyNonEmptyString',
          Resources    => [
            {
              Id                 => 'MyNonEmptyString',
              Type               => 'MyNonEmptyString',
              DataClassification => {
                DetailedResultsLocation => 'MyNonEmptyString',
                Result                  => {
                  AdditionalOccurrences => 1,    # OPTIONAL
                  CustomDataIdentifiers => {
                    Detections => [
                      {
                        Arn         => 'MyNonEmptyString',
                        Count       => 1,                    # OPTIONAL
                        Name        => 'MyNonEmptyString',
                        Occurrences => {
                          Cells => [
                            {
                              CellReference => 'MyNonEmptyString',
                              Column        => 1,                    # OPTIONAL
                              ColumnName    => 'MyNonEmptyString',
                              Row           => 1,                    # OPTIONAL
                            },
                            ...
                          ],                                         # OPTIONAL
                          LineRanges => [
                            {
                              End         => 1,                      # OPTIONAL
                              Start       => 1,                      # OPTIONAL
                              StartColumn => 1,                      # OPTIONAL
                            },
                            ...
                          ],                                         # OPTIONAL
                          OffsetRanges => [
                            {
                              End         => 1,                      # OPTIONAL
                              Start       => 1,                      # OPTIONAL
                              StartColumn => 1,                      # OPTIONAL
                            },
                            ...
                          ],                                         # OPTIONAL
                          Pages => [
                            {
                              LineRange => {
                                End         => 1,                    # OPTIONAL
                                Start       => 1,                    # OPTIONAL
                                StartColumn => 1,                    # OPTIONAL
                              },
                              OffsetRange => {
                                End         => 1,                    # OPTIONAL
                                Start       => 1,                    # OPTIONAL
                                StartColumn => 1,                    # OPTIONAL
                              },
                              PageNumber => 1,                       # OPTIONAL
                            },
                            ...
                          ],                                         # OPTIONAL
                          Records => [
                            {
                              JsonPath    => 'MyNonEmptyString',
                              RecordIndex => 1,                      # OPTIONAL
                            },
                            ...
                          ],                                         # OPTIONAL
                        },    # OPTIONAL
                      },
                      ...
                    ],        # OPTIONAL
                    TotalCount => 1,    # OPTIONAL
                  },    # OPTIONAL
                  MimeType      => 'MyNonEmptyString',
                  SensitiveData => [
                    {
                      Category   => 'MyNonEmptyString',
                      Detections => [
                        {
                          Count       => 1,    # OPTIONAL
                          Occurrences => {
                            Cells => [
                              {
                                CellReference => 'MyNonEmptyString',
                                Column        => 1,                   # OPTIONAL
                                ColumnName    => 'MyNonEmptyString',
                                Row           => 1,                   # OPTIONAL
                              },
                              ...
                            ],                                        # OPTIONAL
                            LineRanges => [
                              {
                                End         => 1,                     # OPTIONAL
                                Start       => 1,                     # OPTIONAL
                                StartColumn => 1,                     # OPTIONAL
                              },
                              ...
                            ],                                        # OPTIONAL
                            OffsetRanges => [
                              {
                                End         => 1,                     # OPTIONAL
                                Start       => 1,                     # OPTIONAL
                                StartColumn => 1,                     # OPTIONAL
                              },
                              ...
                            ],                                        # OPTIONAL
                            Pages => [
                              {
                                LineRange => {
                                  End         => 1,                   # OPTIONAL
                                  Start       => 1,                   # OPTIONAL
                                  StartColumn => 1,                   # OPTIONAL
                                },
                                OffsetRange => {
                                  End         => 1,                   # OPTIONAL
                                  Start       => 1,                   # OPTIONAL
                                  StartColumn => 1,                   # OPTIONAL
                                },
                                PageNumber => 1,                      # OPTIONAL
                              },
                              ...
                            ],                                        # OPTIONAL
                            Records => [
                              {
                                JsonPath    => 'MyNonEmptyString',
                                RecordIndex => 1,                     # OPTIONAL
                              },
                              ...
                            ],                                        # OPTIONAL
                          },    # OPTIONAL
                          Type => 'MyNonEmptyString',
                        },
                        ...
                      ],        # OPTIONAL
                      TotalCount => 1,    # OPTIONAL
                    },
                    ...
                  ],                      # OPTIONAL
                  SizeClassified => 1,    # OPTIONAL
                  Status         => {
                    Code   => 'MyNonEmptyString',
                    Reason => 'MyNonEmptyString',
                  },                      # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Details => {
                AwsApiGatewayRestApi => {
                  ApiKeySource     => 'MyNonEmptyString',
                  BinaryMediaTypes => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  CreatedDate      => 'MyNonEmptyString',
                  Description      => 'MyNonEmptyString',
                  EndpointConfiguration => {
                    Types => [ 'MyNonEmptyString', ... ],             # OPTIONAL
                  },    # OPTIONAL
                  Id                     => 'MyNonEmptyString',
                  MinimumCompressionSize => 1,
                  Name                   => 'MyNonEmptyString',
                  Version                => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayStage => {
                  AccessLogSettings => {
                    DestinationArn => 'MyNonEmptyString',
                    Format         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  CacheClusterEnabled => 1,                    # OPTIONAL
                  CacheClusterSize    => 'MyNonEmptyString',
                  CacheClusterStatus  => 'MyNonEmptyString',
                  CanarySettings      => {
                    DeploymentId   => 'MyNonEmptyString',
                    PercentTraffic => 1,                       # OPTIONAL
                    StageVariableOverrides =>
                      { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
                    UseStageCache => 1,                               # OPTIONAL
                  },    # OPTIONAL
                  ClientCertificateId  => 'MyNonEmptyString',
                  CreatedDate          => 'MyNonEmptyString',
                  DeploymentId         => 'MyNonEmptyString',
                  Description          => 'MyNonEmptyString',
                  DocumentationVersion => 'MyNonEmptyString',
                  LastUpdatedDate      => 'MyNonEmptyString',
                  MethodSettings       => [
                    {
                      CacheDataEncrypted => 1,                    # OPTIONAL
                      CacheTtlInSeconds  => 1,
                      CachingEnabled     => 1,                    # OPTIONAL
                      DataTraceEnabled   => 1,                    # OPTIONAL
                      HttpMethod         => 'MyNonEmptyString',
                      LoggingLevel       => 'MyNonEmptyString',
                      MetricsEnabled     => 1,                    # OPTIONAL
                      RequireAuthorizationForCacheControl => 1,   # OPTIONAL
                      ResourcePath         => 'MyNonEmptyString',
                      ThrottlingBurstLimit => 1,
                      ThrottlingRateLimit  => 1,                    # OPTIONAL
                      UnauthorizedCacheControlHeaderStrategy =>
                        'MyNonEmptyString',
                    },
                    ...
                  ],                                                # OPTIONAL
                  StageName      => 'MyNonEmptyString',
                  TracingEnabled => 1,                              # OPTIONAL
                  Variables => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                  ,                                                 # OPTIONAL
                  WebAclArn => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayV2Api => {
                  ApiEndpoint               => 'MyNonEmptyString',
                  ApiId                     => 'MyNonEmptyString',
                  ApiKeySelectionExpression => 'MyNonEmptyString',
                  CorsConfiguration         => {
                    AllowCredentials => 1,                            # OPTIONAL
                    AllowHeaders     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    AllowMethods     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    AllowOrigins     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    ExposeHeaders    => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    MaxAge           => 1,
                  },    # OPTIONAL
                  CreatedDate              => 'MyNonEmptyString',
                  Description              => 'MyNonEmptyString',
                  Name                     => 'MyNonEmptyString',
                  ProtocolType             => 'MyNonEmptyString',
                  RouteSelectionExpression => 'MyNonEmptyString',
                  Version                  => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayV2Stage => {
                  AccessLogSettings => {
                    DestinationArn => 'MyNonEmptyString',
                    Format         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  ApiGatewayManaged    => 1,                    # OPTIONAL
                  AutoDeploy           => 1,                    # OPTIONAL
                  CreatedDate          => 'MyNonEmptyString',
                  DefaultRouteSettings => {
                    DataTraceEnabled       => 1,                    # OPTIONAL
                    DetailedMetricsEnabled => 1,                    # OPTIONAL
                    LoggingLevel           => 'MyNonEmptyString',
                    ThrottlingBurstLimit   => 1,
                    ThrottlingRateLimit    => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  DeploymentId                => 'MyNonEmptyString',
                  Description                 => 'MyNonEmptyString',
                  LastDeploymentStatusMessage => 'MyNonEmptyString',
                  LastUpdatedDate             => 'MyNonEmptyString',
                  RouteSettings               => {
                    DataTraceEnabled       => 1,                    # OPTIONAL
                    DetailedMetricsEnabled => 1,                    # OPTIONAL
                    LoggingLevel           => 'MyNonEmptyString',
                    ThrottlingBurstLimit   => 1,
                    ThrottlingRateLimit    => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  StageName => 'MyNonEmptyString',
                  StageVariables =>
                    { 'MyNonEmptyString' => 'MyNonEmptyString', },    # OPTIONAL
                },    # OPTIONAL
                AwsAutoScalingAutoScalingGroup => {
                  CreatedTime             => 'MyNonEmptyString',
                  HealthCheckGracePeriod  => 1,
                  HealthCheckType         => 'MyNonEmptyString',
                  LaunchConfigurationName => 'MyNonEmptyString',
                  LoadBalancerNames => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                },    # OPTIONAL
                AwsCertificateManagerCertificate => {
                  CertificateAuthorityArn => 'MyNonEmptyString',
                  CreatedAt               => 'MyNonEmptyString',
                  DomainName              => 'MyNonEmptyString',
                  DomainValidationOptions => [
                    {
                      DomainName     => 'MyNonEmptyString',
                      ResourceRecord => {
                        Name  => 'MyNonEmptyString',
                        Type  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },    # OPTIONAL
                      ValidationDomain => 'MyNonEmptyString',
                      ValidationEmails => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      ValidationMethod => 'MyNonEmptyString',
                      ValidationStatus => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  ExtendedKeyUsages => [
                    {
                      Name => 'MyNonEmptyString',
                      OId  => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  FailureReason => 'MyNonEmptyString',
                  ImportedAt    => 'MyNonEmptyString',
                  InUseBy       => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  IssuedAt      => 'MyNonEmptyString',
                  Issuer        => 'MyNonEmptyString',
                  KeyAlgorithm  => 'MyNonEmptyString',
                  KeyUsages => [ { Name => 'MyNonEmptyString', }, ... ]
                  ,                                                # OPTIONAL
                  NotAfter  => 'MyNonEmptyString',
                  NotBefore => 'MyNonEmptyString',
                  Options   => {
                    CertificateTransparencyLoggingPreference =>
                      'MyNonEmptyString',
                  },                                               # OPTIONAL
                  RenewalEligibility => 'MyNonEmptyString',
                  RenewalSummary     => {
                    DomainValidationOptions => [
                      {
                        DomainName     => 'MyNonEmptyString',
                        ResourceRecord => {
                          Name  => 'MyNonEmptyString',
                          Type  => 'MyNonEmptyString',
                          Value => 'MyNonEmptyString',
                        },                                         # OPTIONAL
                        ValidationDomain => 'MyNonEmptyString',
                        ValidationEmails => [ 'MyNonEmptyString', ... ]
                        ,                                          # OPTIONAL
                        ValidationMethod => 'MyNonEmptyString',
                        ValidationStatus => 'MyNonEmptyString',
                      },
                      ...
                    ],                                             # OPTIONAL
                    RenewalStatus       => 'MyNonEmptyString',
                    RenewalStatusReason => 'MyNonEmptyString',
                    UpdatedAt           => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Serial                  => 'MyNonEmptyString',
                  SignatureAlgorithm      => 'MyNonEmptyString',
                  Status                  => 'MyNonEmptyString',
                  Subject                 => 'MyNonEmptyString',
                  SubjectAlternativeNames => [ 'MyNonEmptyString', ... ]
                  ,     # OPTIONAL
                  Type => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCloudFrontDistribution => {
                  CacheBehaviors => {
                    Items =>
                      [ { ViewerProtocolPolicy => 'MyNonEmptyString', }, ... ]
                    ,    # OPTIONAL
                  },    # OPTIONAL
                  DefaultCacheBehavior =>
                    { ViewerProtocolPolicy => 'MyNonEmptyString', },  # OPTIONAL
                  DefaultRootObject => 'MyNonEmptyString',
                  DomainName        => 'MyNonEmptyString',
                  ETag              => 'MyNonEmptyString',
                  LastModifiedTime  => 'MyNonEmptyString',
                  Logging           => {
                    Bucket         => 'MyNonEmptyString',
                    Enabled        => 1,                              # OPTIONAL
                    IncludeCookies => 1,                              # OPTIONAL
                    Prefix         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  OriginGroups => {
                    Items => [
                      {
                        FailoverCriteria => {
                          StatusCodes => {
                            Items    => [ 1, ... ],    # OPTIONAL
                            Quantity => 1,
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },
                      ...
                    ],        # OPTIONAL
                  },    # OPTIONAL
                  Origins => {
                    Items => [
                      {
                        DomainName => 'MyNonEmptyString',
                        Id         => 'MyNonEmptyString',
                        OriginPath => 'MyNonEmptyString',
                        S3OriginConfig =>
                          { OriginAccessIdentity => 'MyNonEmptyString', }
                        ,    # OPTIONAL
                      },
                      ...
                    ],       # OPTIONAL
                  },    # OPTIONAL
                  Status   => 'MyNonEmptyString',
                  WebAclId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCloudTrailTrail => {
                  CloudWatchLogsLogGroupArn  => 'MyNonEmptyString',
                  CloudWatchLogsRoleArn      => 'MyNonEmptyString',
                  HasCustomEventSelectors    => 1,                    # OPTIONAL
                  HomeRegion                 => 'MyNonEmptyString',
                  IncludeGlobalServiceEvents => 1,                    # OPTIONAL
                  IsMultiRegionTrail         => 1,                    # OPTIONAL
                  IsOrganizationTrail        => 1,                    # OPTIONAL
                  KmsKeyId                   => 'MyNonEmptyString',
                  LogFileValidationEnabled   => 1,                    # OPTIONAL
                  Name                       => 'MyNonEmptyString',
                  S3BucketName               => 'MyNonEmptyString',
                  S3KeyPrefix                => 'MyNonEmptyString',
                  SnsTopicArn                => 'MyNonEmptyString',
                  SnsTopicName               => 'MyNonEmptyString',
                  TrailArn                   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCodeBuildProject => {
                  EncryptionKey => 'MyNonEmptyString',
                  Environment   => {
                    Certificate              => 'MyNonEmptyString',
                    ImagePullCredentialsType => 'MyNonEmptyString',
                    RegistryCredential       => {
                      Credential         => 'MyNonEmptyString',
                      CredentialProvider => 'MyNonEmptyString',
                    },    # OPTIONAL
                    Type => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Name        => 'MyNonEmptyString',
                  ServiceRole => 'MyNonEmptyString',
                  Source      => {
                    GitCloneDepth => 1,
                    InsecureSsl   => 1,                    # OPTIONAL
                    Location      => 'MyNonEmptyString',
                    Type          => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VpcConfig => {
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    Subnets          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    VpcId            => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsDynamoDbTable => {
                  AttributeDefinitions => [
                    {
                      AttributeName => 'MyNonEmptyString',
                      AttributeType => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  BillingModeSummary => {
                    BillingMode                       => 'MyNonEmptyString',
                    LastUpdateToPayPerRequestDateTime => 'MyNonEmptyString',
                  },    # OPTIONAL
                  CreationDateTime       => 'MyNonEmptyString',
                  GlobalSecondaryIndexes => [
                    {
                      Backfilling    => 1,                    # OPTIONAL
                      IndexArn       => 'MyNonEmptyString',
                      IndexName      => 'MyNonEmptyString',
                      IndexSizeBytes => 1,                    # OPTIONAL
                      IndexStatus    => 'MyNonEmptyString',
                      ItemCount      => 1,
                      KeySchema      => [
                        {
                          AttributeName => 'MyNonEmptyString',
                          KeyType       => 'MyNonEmptyString',
                        },
                        ...
                      ],                                      # OPTIONAL
                      Projection => {
                        NonKeyAttributes => [ 'MyNonEmptyString', ... ]
                        ,                                     # OPTIONAL
                        ProjectionType => 'MyNonEmptyString',
                      },    # OPTIONAL
                      ProvisionedThroughput => {
                        LastDecreaseDateTime   => 'MyNonEmptyString',
                        LastIncreaseDateTime   => 'MyNonEmptyString',
                        NumberOfDecreasesToday => 1,
                        ReadCapacityUnits      => 1,
                        WriteCapacityUnits     => 1,
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                  GlobalTableVersion => 'MyNonEmptyString',
                  ItemCount          => 1,
                  KeySchema          => [
                    {
                      AttributeName => 'MyNonEmptyString',
                      KeyType       => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  LatestStreamArn       => 'MyNonEmptyString',
                  LatestStreamLabel     => 'MyNonEmptyString',
                  LocalSecondaryIndexes => [
                    {
                      IndexArn  => 'MyNonEmptyString',
                      IndexName => 'MyNonEmptyString',
                      KeySchema => [
                        {
                          AttributeName => 'MyNonEmptyString',
                          KeyType       => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      Projection => {
                        NonKeyAttributes => [ 'MyNonEmptyString', ... ]
                        ,    # OPTIONAL
                        ProjectionType => 'MyNonEmptyString',
                      },    # OPTIONAL
                    },
                    ...
                  ],        # OPTIONAL
                  ProvisionedThroughput => {
                    LastDecreaseDateTime   => 'MyNonEmptyString',
                    LastIncreaseDateTime   => 'MyNonEmptyString',
                    NumberOfDecreasesToday => 1,
                    ReadCapacityUnits      => 1,
                    WriteCapacityUnits     => 1,
                  },        # OPTIONAL
                  Replicas => [
                    {
                      GlobalSecondaryIndexes => [
                        {
                          IndexName => 'MyNonEmptyString',
                          ProvisionedThroughputOverride =>
                            { ReadCapacityUnits => 1, },    # OPTIONAL
                        },
                        ...
                      ],                                    # OPTIONAL
                      KmsMasterKeyId => 'MyNonEmptyString',
                      ProvisionedThroughputOverride =>
                        { ReadCapacityUnits => 1, },        # OPTIONAL
                      RegionName               => 'MyNonEmptyString',
                      ReplicaStatus            => 'MyNonEmptyString',
                      ReplicaStatusDescription => 'MyNonEmptyString',
                    },
                    ...
                  ],                                        # OPTIONAL
                  RestoreSummary => {
                    RestoreDateTime   => 'MyNonEmptyString',
                    RestoreInProgress => 1,                    # OPTIONAL
                    SourceBackupArn   => 'MyNonEmptyString',
                    SourceTableArn    => 'MyNonEmptyString',
                  },    # OPTIONAL
                  SseDescription => {
                    InaccessibleEncryptionDateTime => 'MyNonEmptyString',
                    KmsMasterKeyArn                => 'MyNonEmptyString',
                    SseType                        => 'MyNonEmptyString',
                    Status                         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  StreamSpecification => {
                    StreamEnabled  => 1,                    # OPTIONAL
                    StreamViewType => 'MyNonEmptyString',
                  },    # OPTIONAL
                  TableId        => 'MyNonEmptyString',
                  TableName      => 'MyNonEmptyString',
                  TableSizeBytes => 1,                    # OPTIONAL
                  TableStatus    => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Eip => {
                  AllocationId            => 'MyNonEmptyString',
                  AssociationId           => 'MyNonEmptyString',
                  Domain                  => 'MyNonEmptyString',
                  InstanceId              => 'MyNonEmptyString',
                  NetworkBorderGroup      => 'MyNonEmptyString',
                  NetworkInterfaceId      => 'MyNonEmptyString',
                  NetworkInterfaceOwnerId => 'MyNonEmptyString',
                  PrivateIpAddress        => 'MyNonEmptyString',
                  PublicIp                => 'MyNonEmptyString',
                  PublicIpv4Pool          => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Instance => {
                  IamInstanceProfileArn => 'MyNonEmptyString',
                  ImageId               => 'MyNonEmptyString',
                  IpV4Addresses => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  IpV6Addresses => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  KeyName       => 'MyNonEmptyString',
                  LaunchedAt    => 'MyNonEmptyString',
                  SubnetId      => 'MyNonEmptyString',
                  Type          => 'MyNonEmptyString',
                  VpcId         => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2NetworkAcl => {
                  Associations => [
                    {
                      NetworkAclAssociationId => 'MyNonEmptyString',
                      NetworkAclId            => 'MyNonEmptyString',
                      SubnetId                => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Entries => [
                    {
                      CidrBlock    => 'MyNonEmptyString',
                      Egress       => 1,                    # OPTIONAL
                      IcmpTypeCode => {
                        Code => 1,
                        Type => 1,
                      },                                    # OPTIONAL
                      Ipv6CidrBlock => 'MyNonEmptyString',
                      PortRange     => {
                        From => 1,
                        To   => 1,
                      },                                    # OPTIONAL
                      Protocol   => 'MyNonEmptyString',
                      RuleAction => 'MyNonEmptyString',
                      RuleNumber => 1,
                    },
                    ...
                  ],                                        # OPTIONAL
                  IsDefault    => 1,                        # OPTIONAL
                  NetworkAclId => 'MyNonEmptyString',
                  OwnerId      => 'MyNonEmptyString',
                  VpcId        => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2NetworkInterface => {
                  Attachment => {
                    AttachTime          => 'MyNonEmptyString',
                    AttachmentId        => 'MyNonEmptyString',
                    DeleteOnTermination => 1,                    # OPTIONAL
                    DeviceIndex         => 1,
                    InstanceId          => 'MyNonEmptyString',
                    InstanceOwnerId     => 'MyNonEmptyString',
                    Status              => 'MyNonEmptyString',
                  },    # OPTIONAL
                  IpV6Addresses =>
                    [ { IpV6Address => 'MyNonEmptyString', }, ... ],  # OPTIONAL
                  NetworkInterfaceId => 'MyNonEmptyString',
                  PrivateIpAddresses => [
                    {
                      PrivateDnsName   => 'MyNonEmptyString',
                      PrivateIpAddress => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  PublicDnsName  => 'MyNonEmptyString',
                  PublicIp       => 'MyNonEmptyString',
                  SecurityGroups => [
                    {
                      GroupId   => 'MyNonEmptyString',
                      GroupName => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  SourceDestCheck => 1,                               # OPTIONAL
                },    # OPTIONAL
                AwsEc2SecurityGroup => {
                  GroupId       => 'MyNonEmptyString',
                  GroupName     => 'MyNonEmptyString',
                  IpPermissions => [
                    {
                      FromPort   => 1,
                      IpProtocol => 'MyNonEmptyString',
                      IpRanges   => [ { CidrIp => 'MyNonEmptyString', }, ... ]
                      ,    # OPTIONAL
                      Ipv6Ranges =>
                        [ { CidrIpv6 => 'MyNonEmptyString', }, ... ], # OPTIONAL
                      PrefixListIds =>
                        [ { PrefixListId => 'MyNonEmptyString', }, ... ]
                      ,                                               # OPTIONAL
                      ToPort           => 1,
                      UserIdGroupPairs => [
                        {
                          GroupId                => 'MyNonEmptyString',
                          GroupName              => 'MyNonEmptyString',
                          PeeringStatus          => 'MyNonEmptyString',
                          UserId                 => 'MyNonEmptyString',
                          VpcId                  => 'MyNonEmptyString',
                          VpcPeeringConnectionId => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                    },
                    ...
                  ],                                                  # OPTIONAL
                  IpPermissionsEgress => [
                    {
                      FromPort   => 1,
                      IpProtocol => 'MyNonEmptyString',
                      IpRanges   => [ { CidrIp => 'MyNonEmptyString', }, ... ]
                      ,                                               # OPTIONAL
                      Ipv6Ranges =>
                        [ { CidrIpv6 => 'MyNonEmptyString', }, ... ], # OPTIONAL
                      PrefixListIds =>
                        [ { PrefixListId => 'MyNonEmptyString', }, ... ]
                      ,                                               # OPTIONAL
                      ToPort           => 1,
                      UserIdGroupPairs => [
                        {
                          GroupId                => 'MyNonEmptyString',
                          GroupName              => 'MyNonEmptyString',
                          PeeringStatus          => 'MyNonEmptyString',
                          UserId                 => 'MyNonEmptyString',
                          VpcId                  => 'MyNonEmptyString',
                          VpcPeeringConnectionId => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                    },
                    ...
                  ],                                                  # OPTIONAL
                  OwnerId => 'MyNonEmptyString',
                  VpcId   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Subnet => {
                  AssignIpv6AddressOnCreation => 1,                   # OPTIONAL
                  AvailabilityZone            => 'MyNonEmptyString',
                  AvailabilityZoneId          => 'MyNonEmptyString',
                  AvailableIpAddressCount     => 1,
                  CidrBlock                   => 'MyNonEmptyString',
                  DefaultForAz                => 1,                   # OPTIONAL
                  Ipv6CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                      Ipv6CidrBlock  => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  MapPublicIpOnLaunch => 1,                           # OPTIONAL
                  OwnerId             => 'MyNonEmptyString',
                  State               => 'MyNonEmptyString',
                  SubnetArn           => 'MyNonEmptyString',
                  SubnetId            => 'MyNonEmptyString',
                  VpcId               => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Volume => {
                  Attachments => [
                    {
                      AttachTime          => 'MyNonEmptyString',
                      DeleteOnTermination => 1,                    # OPTIONAL
                      InstanceId          => 'MyNonEmptyString',
                      Status              => 'MyNonEmptyString',
                    },
                    ...
                  ],                                               # OPTIONAL
                  CreateTime => 'MyNonEmptyString',
                  Encrypted  => 1,                                 # OPTIONAL
                  KmsKeyId   => 'MyNonEmptyString',
                  Size       => 1,
                  SnapshotId => 'MyNonEmptyString',
                  Status     => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Vpc => {
                  CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlock      => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  DhcpOptionsId               => 'MyNonEmptyString',
                  Ipv6CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                      Ipv6CidrBlock  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  State => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElasticBeanstalkEnvironment => {
                  ApplicationName  => 'MyNonEmptyString',
                  Cname            => 'MyNonEmptyString',
                  DateCreated      => 'MyNonEmptyString',
                  DateUpdated      => 'MyNonEmptyString',
                  Description      => 'MyNonEmptyString',
                  EndpointUrl      => 'MyNonEmptyString',
                  EnvironmentArn   => 'MyNonEmptyString',
                  EnvironmentId    => 'MyNonEmptyString',
                  EnvironmentLinks => [
                    {
                      EnvironmentName => 'MyNonEmptyString',
                      LinkName        => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  EnvironmentName => 'MyNonEmptyString',
                  OptionSettings  => [
                    {
                      Namespace    => 'MyNonEmptyString',
                      OptionName   => 'MyNonEmptyString',
                      ResourceName => 'MyNonEmptyString',
                      Value        => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  PlatformArn       => 'MyNonEmptyString',
                  SolutionStackName => 'MyNonEmptyString',
                  Status            => 'MyNonEmptyString',
                  Tier              => {
                    Name    => 'MyNonEmptyString',
                    Type    => 'MyNonEmptyString',
                    Version => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VersionLabel => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElasticsearchDomain => {
                  AccessPolicies        => 'MyNonEmptyString',
                  DomainEndpointOptions => {
                    EnforceHTTPS      => 1,                    # OPTIONAL
                    TLSSecurityPolicy => 'MyNonEmptyString',
                  },    # OPTIONAL
                  DomainId                => 'MyNonEmptyString',
                  DomainName              => 'MyNonEmptyString',
                  ElasticsearchVersion    => 'MyNonEmptyString',
                  EncryptionAtRestOptions => {
                    Enabled  => 1,                    # OPTIONAL
                    KmsKeyId => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Endpoint  => 'MyNonEmptyString',
                  Endpoints => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                  ,     # OPTIONAL
                  NodeToNodeEncryptionOptions => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  VPCOptions => {
                    AvailabilityZones => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    SecurityGroupIds  => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    SubnetIds         => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    VPCId             => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsElbLoadBalancer => {
                  AvailabilityZones => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  BackendServerDescriptions => [
                    {
                      InstancePort => 1,
                      PolicyNames  => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    },
                    ...
                  ],                                                  # OPTIONAL
                  CanonicalHostedZoneName   => 'MyNonEmptyString',
                  CanonicalHostedZoneNameID => 'MyNonEmptyString',
                  CreatedTime               => 'MyNonEmptyString',
                  DnsName                   => 'MyNonEmptyString',
                  HealthCheck               => {
                    HealthyThreshold   => 1,
                    Interval           => 1,
                    Target             => 'MyNonEmptyString',
                    Timeout            => 1,
                    UnhealthyThreshold => 1,
                  },                                                  # OPTIONAL
                  Instances => [ { InstanceId => 'MyNonEmptyString', }, ... ]
                  ,                                                   # OPTIONAL
                  ListenerDescriptions => [
                    {
                      Listener => {
                        InstancePort     => 1,
                        InstanceProtocol => 'MyNonEmptyString',
                        LoadBalancerPort => 1,
                        Protocol         => 'MyNonEmptyString',
                        SslCertificateId => 'MyNonEmptyString',
                      },                                              # OPTIONAL
                      PolicyNames => [ 'MyNonEmptyString', ... ],     # OPTIONAL
                    },
                    ...
                  ],                                                  # OPTIONAL
                  LoadBalancerAttributes => {
                    AccessLog => {
                      EmitInterval   => 1,
                      Enabled        => 1,                            # OPTIONAL
                      S3BucketName   => 'MyNonEmptyString',
                      S3BucketPrefix => 'MyNonEmptyString',
                    },    # OPTIONAL
                    ConnectionDraining => {
                      Enabled => 1,    # OPTIONAL
                      Timeout => 1,
                    },    # OPTIONAL
                    ConnectionSettings     => { IdleTimeout => 1, },  # OPTIONAL
                    CrossZoneLoadBalancing => {
                      Enabled => 1,                                   # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  LoadBalancerName => 'MyNonEmptyString',
                  Policies         => {
                    AppCookieStickinessPolicies => [
                      {
                        CookieName => 'MyNonEmptyString',
                        PolicyName => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    LbCookieStickinessPolicies => [
                      {
                        CookieExpirationPeriod => 1,                  # OPTIONAL
                        PolicyName             => 'MyNonEmptyString',
                      },
                      ...
                    ],                                                # OPTIONAL
                    OtherPolicies => [ 'MyNonEmptyString', ... ],     # OPTIONAL
                  },    # OPTIONAL
                  Scheme              => 'MyNonEmptyString',
                  SecurityGroups      => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  SourceSecurityGroup => {
                    GroupName  => 'MyNonEmptyString',
                    OwnerAlias => 'MyNonEmptyString',
                  },                                                  # OPTIONAL
                  Subnets => [ 'MyNonEmptyString', ... ],             # OPTIONAL
                  VpcId   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElbv2LoadBalancer => {
                  AvailabilityZones => [
                    {
                      SubnetId => 'MyNonEmptyString',
                      ZoneName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CanonicalHostedZoneId => 'MyNonEmptyString',
                  CreatedTime           => 'MyNonEmptyString',
                  DNSName               => 'MyNonEmptyString',
                  IpAddressType         => 'MyNonEmptyString',
                  Scheme                => 'MyNonEmptyString',
                  SecurityGroups => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  State          => {
                    Code   => 'MyNonEmptyString',
                    Reason => 'MyNonEmptyString',
                  },                                                # OPTIONAL
                  Type  => 'MyNonEmptyString',
                  VpcId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamAccessKey => {
                  AccessKeyId    => 'MyNonEmptyString',
                  AccountId      => 'MyNonEmptyString',
                  CreatedAt      => 'MyNonEmptyString',
                  PrincipalId    => 'MyNonEmptyString',
                  PrincipalName  => 'MyNonEmptyString',
                  PrincipalType  => 'MyNonEmptyString',
                  SessionContext => {
                    Attributes => {
                      CreationDate     => 'MyNonEmptyString',
                      MfaAuthenticated => 1,                    # OPTIONAL
                    },    # OPTIONAL
                    SessionIssuer => {
                      AccountId   => 'MyNonEmptyString',
                      Arn         => 'MyNonEmptyString',
                      PrincipalId => 'MyNonEmptyString',
                      Type        => 'MyNonEmptyString',
                      UserName    => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Status => 'Active',    # values: Active, Inactive; OPTIONAL
                  UserName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamGroup => {
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate => 'MyNonEmptyString',
                  GroupId    => 'MyNonEmptyString',
                  GroupName  => 'MyNonEmptyString',
                  GroupPolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                  Path => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamPolicy => {
                  AttachmentCount               => 1,
                  CreateDate                    => 'MyNonEmptyString',
                  DefaultVersionId              => 'MyNonEmptyString',
                  Description                   => 'MyNonEmptyString',
                  IsAttachable                  => 1,                 # OPTIONAL
                  Path                          => 'MyNonEmptyString',
                  PermissionsBoundaryUsageCount => 1,
                  PolicyId                      => 'MyNonEmptyString',
                  PolicyName                    => 'MyNonEmptyString',
                  PolicyVersionList             => [
                    {
                      CreateDate       => 'MyNonEmptyString',
                      IsDefaultVersion => 1,                          # OPTIONAL
                      VersionId        => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  UpdateDate => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamRole => {
                  AssumeRolePolicyDocument =>
                    'MyAwsIamRoleAssumeRolePolicyDocument'
                  ,    # min: 1, max: 131072; OPTIONAL
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate          => 'MyNonEmptyString',
                  InstanceProfileList => [
                    {
                      Arn                 => 'MyNonEmptyString',
                      CreateDate          => 'MyNonEmptyString',
                      InstanceProfileId   => 'MyNonEmptyString',
                      InstanceProfileName => 'MyNonEmptyString',
                      Path                => 'MyNonEmptyString',
                      Roles               => [
                        {
                          Arn => 'MyNonEmptyString',
                          AssumeRolePolicyDocument =>
                            'MyAwsIamRoleAssumeRolePolicyDocument'
                          ,    # min: 1, max: 131072; OPTIONAL
                          CreateDate => 'MyNonEmptyString',
                          Path       => 'MyNonEmptyString',
                          RoleId     => 'MyNonEmptyString',
                          RoleName   => 'MyNonEmptyString',
                        },
                        ...
                      ],       # OPTIONAL
                    },
                    ...
                  ],           # OPTIONAL
                  MaxSessionDuration  => 1,
                  Path                => 'MyNonEmptyString',
                  PermissionsBoundary => {
                    PermissionsBoundaryArn  => 'MyNonEmptyString',
                    PermissionsBoundaryType => 'MyNonEmptyString',
                  },           # OPTIONAL
                  RoleId   => 'MyNonEmptyString',
                  RoleName => 'MyNonEmptyString',
                  RolePolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                },    # OPTIONAL
                AwsIamUser => {
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate          => 'MyNonEmptyString',
                  GroupList           => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  Path                => 'MyNonEmptyString',
                  PermissionsBoundary => {
                    PermissionsBoundaryArn  => 'MyNonEmptyString',
                    PermissionsBoundaryType => 'MyNonEmptyString',
                  },                                                  # OPTIONAL
                  UserId   => 'MyNonEmptyString',
                  UserName => 'MyNonEmptyString',
                  UserPolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                },    # OPTIONAL
                AwsKmsKey => {
                  AWSAccountId => 'MyNonEmptyString',
                  CreationDate => 1,                    # OPTIONAL
                  Description  => 'MyNonEmptyString',
                  KeyId        => 'MyNonEmptyString',
                  KeyManager   => 'MyNonEmptyString',
                  KeyState     => 'MyNonEmptyString',
                  Origin       => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsLambdaFunction => {
                  Code => {
                    S3Bucket        => 'MyNonEmptyString',
                    S3Key           => 'MyNonEmptyString',
                    S3ObjectVersion => 'MyNonEmptyString',
                    ZipFile         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  CodeSha256       => 'MyNonEmptyString',
                  DeadLetterConfig => { TargetArn => 'MyNonEmptyString', }
                  ,     # OPTIONAL
                  Environment => {
                    Error => {
                      ErrorCode => 'MyNonEmptyString',
                      Message   => 'MyNonEmptyString',
                    },    # OPTIONAL
                    Variables => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                    ,     # OPTIONAL
                  },    # OPTIONAL
                  FunctionName => 'MyNonEmptyString',
                  Handler      => 'MyNonEmptyString',
                  KmsKeyArn    => 'MyNonEmptyString',
                  LastModified => 'MyNonEmptyString',
                  Layers       => [
                    {
                      Arn      => 'MyNonEmptyString',
                      CodeSize => 1,
                    },
                    ...
                  ],    # OPTIONAL
                  MasterArn     => 'MyNonEmptyString',
                  MemorySize    => 1,
                  RevisionId    => 'MyNonEmptyString',
                  Role          => 'MyNonEmptyString',
                  Runtime       => 'MyNonEmptyString',
                  Timeout       => 1,
                  TracingConfig => { Mode => 'MyNonEmptyString', },   # OPTIONAL
                  Version       => 'MyNonEmptyString',
                  VpcConfig     => {
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    SubnetIds        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    VpcId            => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsLambdaLayerVersion => {
                  CompatibleRuntimes => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  CreatedDate        => 'MyNonEmptyString',
                  Version            => 1,                            # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbCluster => {
                  ActivityStreamStatus => 'MyNonEmptyString',
                  AllocatedStorage     => 1,
                  AssociatedRoles      => [
                    {
                      RoleArn => 'MyNonEmptyString',
                      Status  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  AvailabilityZones => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  BackupRetentionPeriod => 1,
                  ClusterCreateTime     => 'MyNonEmptyString',
                  CopyTagsToSnapshot    => 1,                         # OPTIONAL
                  CrossAccountClone     => 1,                         # OPTIONAL
                  CustomEndpoints     => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  DatabaseName        => 'MyNonEmptyString',
                  DbClusterIdentifier => 'MyNonEmptyString',
                  DbClusterMembers    => [
                    {
                      DbClusterParameterGroupStatus => 'MyNonEmptyString',
                      DbInstanceIdentifier          => 'MyNonEmptyString',
                      IsClusterWriter => 1,                           # OPTIONAL
                      PromotionTier   => 1,
                    },
                    ...
                  ],                                                  # OPTIONAL
                  DbClusterOptionGroupMemberships => [
                    {
                      DbClusterOptionGroupName => 'MyNonEmptyString',
                      Status                   => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  DbClusterParameterGroup => 'MyNonEmptyString',
                  DbClusterResourceId     => 'MyNonEmptyString',
                  DbSubnetGroup           => 'MyNonEmptyString',
                  DeletionProtection      => 1,                       # OPTIONAL
                  DomainMemberships       => [
                    {
                      Domain      => 'MyNonEmptyString',
                      Fqdn        => 'MyNonEmptyString',
                      IamRoleName => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  EnabledCloudWatchLogsExports => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  Endpoint            => 'MyNonEmptyString',
                  Engine              => 'MyNonEmptyString',
                  EngineMode          => 'MyNonEmptyString',
                  EngineVersion       => 'MyNonEmptyString',
                  HostedZoneId        => 'MyNonEmptyString',
                  HttpEndpointEnabled => 1,                           # OPTIONAL
                  IamDatabaseAuthenticationEnabled => 1,              # OPTIONAL
                  KmsKeyId                   => 'MyNonEmptyString',
                  MasterUsername             => 'MyNonEmptyString',
                  MultiAz                    => 1,                    # OPTIONAL
                  Port                       => 1,
                  PreferredBackupWindow      => 'MyNonEmptyString',
                  PreferredMaintenanceWindow => 'MyNonEmptyString',
                  ReadReplicaIdentifiers => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  ReaderEndpoint    => 'MyNonEmptyString',
                  Status            => 'MyNonEmptyString',
                  StorageEncrypted  => 1,                             # OPTIONAL
                  VpcSecurityGroups => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbClusterSnapshot => {
                  AllocatedStorage    => 1,
                  AvailabilityZones   => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  ClusterCreateTime   => 'MyNonEmptyString',
                  DbClusterIdentifier => 'MyNonEmptyString',
                  DbClusterSnapshotIdentifier => 'MyNonEmptyString',
                  Engine                      => 'MyNonEmptyString',
                  EngineVersion               => 'MyNonEmptyString',
                  IamDatabaseAuthenticationEnabled => 1,              # OPTIONAL
                  KmsKeyId           => 'MyNonEmptyString',
                  LicenseModel       => 'MyNonEmptyString',
                  MasterUsername     => 'MyNonEmptyString',
                  PercentProgress    => 1,
                  Port               => 1,
                  SnapshotCreateTime => 'MyNonEmptyString',
                  SnapshotType       => 'MyNonEmptyString',
                  Status             => 'MyNonEmptyString',
                  StorageEncrypted   => 1,                            # OPTIONAL
                  VpcId              => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRdsDbInstance => {
                  AllocatedStorage => 1,
                  AssociatedRoles  => [
                    {
                      FeatureName => 'MyNonEmptyString',
                      RoleArn     => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  AutoMinorVersionUpgrade => 1,                    # OPTIONAL
                  AvailabilityZone        => 'MyNonEmptyString',
                  BackupRetentionPeriod   => 1,
                  CACertificateIdentifier => 'MyNonEmptyString',
                  CharacterSetName        => 'MyNonEmptyString',
                  CopyTagsToSnapshot      => 1,                    # OPTIONAL
                  DBClusterIdentifier     => 'MyNonEmptyString',
                  DBInstanceClass         => 'MyNonEmptyString',
                  DBInstanceIdentifier    => 'MyNonEmptyString',
                  DBName                  => 'MyNonEmptyString',
                  DbInstancePort          => 1,
                  DbInstanceStatus        => 'MyNonEmptyString',
                  DbParameterGroups       => [
                    {
                      DbParameterGroupName => 'MyNonEmptyString',
                      ParameterApplyStatus => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  DbSecurityGroups => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  DbSubnetGroup    => {
                    DbSubnetGroupArn         => 'MyNonEmptyString',
                    DbSubnetGroupDescription => 'MyNonEmptyString',
                    DbSubnetGroupName        => 'MyNonEmptyString',
                    SubnetGroupStatus        => 'MyNonEmptyString',
                    Subnets                  => [
                      {
                        SubnetAvailabilityZone =>
                          { Name => 'MyNonEmptyString', },            # OPTIONAL
                        SubnetIdentifier => 'MyNonEmptyString',
                        SubnetStatus     => 'MyNonEmptyString',
                      },
                      ...
                    ],                                                # OPTIONAL
                    VpcId => 'MyNonEmptyString',
                  },    # OPTIONAL
                  DbiResourceId      => 'MyNonEmptyString',
                  DeletionProtection => 1,                    # OPTIONAL
                  DomainMemberships  => [
                    {
                      Domain      => 'MyNonEmptyString',
                      Fqdn        => 'MyNonEmptyString',
                      IamRoleName => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                          # OPTIONAL
                  EnabledCloudWatchLogsExports => [ 'MyNonEmptyString', ... ]
                  ,                                           # OPTIONAL
                  Endpoint => {
                    Address      => 'MyNonEmptyString',
                    HostedZoneId => 'MyNonEmptyString',
                    Port         => 1,
                  },                                          # OPTIONAL
                  Engine                        => 'MyNonEmptyString',
                  EngineVersion                 => 'MyNonEmptyString',
                  EnhancedMonitoringResourceArn => 'MyNonEmptyString',
                  IAMDatabaseAuthenticationEnabled => 1,      # OPTIONAL
                  InstanceCreateTime   => 'MyNonEmptyString',
                  Iops                 => 1,
                  KmsKeyId             => 'MyNonEmptyString',
                  LatestRestorableTime => 'MyNonEmptyString',
                  LicenseModel         => 'MyNonEmptyString',
                  ListenerEndpoint     => {
                    Address      => 'MyNonEmptyString',
                    HostedZoneId => 'MyNonEmptyString',
                    Port         => 1,
                  },                                          # OPTIONAL
                  MasterUsername         => 'MyNonEmptyString',
                  MaxAllocatedStorage    => 1,
                  MonitoringInterval     => 1,
                  MonitoringRoleArn      => 'MyNonEmptyString',
                  MultiAz                => 1,                    # OPTIONAL
                  OptionGroupMemberships => [
                    {
                      OptionGroupName => 'MyNonEmptyString',
                      Status          => 'MyNonEmptyString',
                    },
                    ...
                  ],                                              # OPTIONAL
                  PendingModifiedValues => {
                    AllocatedStorage        => 1,
                    BackupRetentionPeriod   => 1,
                    CaCertificateIdentifier => 'MyNonEmptyString',
                    DbInstanceClass         => 'MyNonEmptyString',
                    DbInstanceIdentifier    => 'MyNonEmptyString',
                    DbSubnetGroupName       => 'MyNonEmptyString',
                    EngineVersion           => 'MyNonEmptyString',
                    Iops                    => 1,
                    LicenseModel            => 'MyNonEmptyString',
                    MasterUserPassword      => 'MyNonEmptyString',
                    MultiAZ                 => 1,                    # OPTIONAL
                    PendingCloudWatchLogsExports => {
                      LogTypesToDisable => [ 'MyNonEmptyString', ... ]
                      ,                                              # OPTIONAL
                      LogTypesToEnable => [ 'MyNonEmptyString', ... ]
                      ,                                              # OPTIONAL
                    },    # OPTIONAL
                    Port              => 1,
                    ProcessorFeatures => [
                      {
                        Name  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    StorageType => 'MyNonEmptyString',
                  },    # OPTIONAL
                  PerformanceInsightsEnabled  => 1,                   # OPTIONAL
                  PerformanceInsightsKmsKeyId => 'MyNonEmptyString',
                  PerformanceInsightsRetentionPeriod => 1,
                  PreferredBackupWindow              => 'MyNonEmptyString',
                  PreferredMaintenanceWindow         => 'MyNonEmptyString',
                  ProcessorFeatures                  => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  PromotionTier      => 1,
                  PubliclyAccessible => 1,                            # OPTIONAL
                  ReadReplicaDBClusterIdentifiers =>
                    [ 'MyNonEmptyString', ... ],                      # OPTIONAL
                  ReadReplicaDBInstanceIdentifiers =>
                    [ 'MyNonEmptyString', ... ],                      # OPTIONAL
                  ReadReplicaSourceDBInstanceIdentifier => 'MyNonEmptyString',
                  SecondaryAvailabilityZone             => 'MyNonEmptyString',
                  StatusInfos                           => [
                    {
                      Message    => 'MyNonEmptyString',
                      Normal     => 1,                                # OPTIONAL
                      Status     => 'MyNonEmptyString',
                      StatusType => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  StorageEncrypted  => 1,                             # OPTIONAL
                  StorageType       => 'MyNonEmptyString',
                  TdeCredentialArn  => 'MyNonEmptyString',
                  Timezone          => 'MyNonEmptyString',
                  VpcSecurityGroups => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbSnapshot => {
                  AllocatedStorage     => 1,
                  AvailabilityZone     => 'MyNonEmptyString',
                  DbInstanceIdentifier => 'MyNonEmptyString',
                  DbSnapshotIdentifier => 'MyNonEmptyString',
                  DbiResourceId        => 'MyNonEmptyString',
                  Encrypted            => 1,                    # OPTIONAL
                  Engine               => 'MyNonEmptyString',
                  EngineVersion        => 'MyNonEmptyString',
                  IamDatabaseAuthenticationEnabled => 1,        # OPTIONAL
                  InstanceCreateTime => 'MyNonEmptyString',
                  Iops               => 1,
                  KmsKeyId           => 'MyNonEmptyString',
                  LicenseModel       => 'MyNonEmptyString',
                  MasterUsername     => 'MyNonEmptyString',
                  OptionGroupName    => 'MyNonEmptyString',
                  PercentProgress    => 1,
                  Port               => 1,
                  ProcessorFeatures  => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  SnapshotCreateTime         => 'MyNonEmptyString',
                  SnapshotType               => 'MyNonEmptyString',
                  SourceDbSnapshotIdentifier => 'MyNonEmptyString',
                  SourceRegion               => 'MyNonEmptyString',
                  Status                     => 'MyNonEmptyString',
                  StorageType                => 'MyNonEmptyString',
                  TdeCredentialArn           => 'MyNonEmptyString',
                  Timezone                   => 'MyNonEmptyString',
                  VpcId                      => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRedshiftCluster => {
                  AllowVersionUpgrade              => 1,    # OPTIONAL
                  AutomatedSnapshotRetentionPeriod => 1,
                  AvailabilityZone          => 'MyNonEmptyString',
                  ClusterAvailabilityStatus => 'MyNonEmptyString',
                  ClusterCreateTime         => 'MyNonEmptyString',
                  ClusterIdentifier         => 'MyNonEmptyString',
                  ClusterNodes              => [
                    {
                      NodeRole         => 'MyNonEmptyString',
                      PrivateIpAddress => 'MyNonEmptyString',
                      PublicIpAddress  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ClusterParameterGroups => [
                    {
                      ClusterParameterStatusList => [
                        {
                          ParameterApplyErrorDescription => 'MyNonEmptyString',
                          ParameterApplyStatus           => 'MyNonEmptyString',
                          ParameterName                  => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      ParameterApplyStatus => 'MyNonEmptyString',
                      ParameterGroupName   => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  ClusterPublicKey      => 'MyNonEmptyString',
                  ClusterRevisionNumber => 'MyNonEmptyString',
                  ClusterSecurityGroups => [
                    {
                      ClusterSecurityGroupName => 'MyNonEmptyString',
                      Status                   => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  ClusterSnapshotCopyStatus => {
                    DestinationRegion             => 'MyNonEmptyString',
                    ManualSnapshotRetentionPeriod => 1,
                    RetentionPeriod               => 1,
                    SnapshotCopyGrantName         => 'MyNonEmptyString',
                  },        # OPTIONAL
                  ClusterStatus              => 'MyNonEmptyString',
                  ClusterSubnetGroupName     => 'MyNonEmptyString',
                  ClusterVersion             => 'MyNonEmptyString',
                  DBName                     => 'MyNonEmptyString',
                  DeferredMaintenanceWindows => [
                    {
                      DeferMaintenanceEndTime    => 'MyNonEmptyString',
                      DeferMaintenanceIdentifier => 'MyNonEmptyString',
                      DeferMaintenanceStartTime  => 'MyNonEmptyString',
                    },
                    ...
                  ],        # OPTIONAL
                  ElasticIpStatus => {
                    ElasticIp => 'MyNonEmptyString',
                    Status    => 'MyNonEmptyString',
                  },        # OPTIONAL
                  ElasticResizeNumberOfNodeOptions => 'MyNonEmptyString',
                  Encrypted => 1,    # OPTIONAL
                  Endpoint  => {
                    Address => 'MyNonEmptyString',
                    Port    => 1,
                  },                 # OPTIONAL
                  EnhancedVpcRouting => 1,    # OPTIONAL
                  ExpectedNextSnapshotScheduleTime       => 'MyNonEmptyString',
                  ExpectedNextSnapshotScheduleTimeStatus => 'MyNonEmptyString',
                  HsmStatus                              => {
                    HsmClientCertificateIdentifier => 'MyNonEmptyString',
                    HsmConfigurationIdentifier     => 'MyNonEmptyString',
                    Status                         => 'MyNonEmptyString',
                  },                          # OPTIONAL
                  IamRoles => [
                    {
                      ApplyStatus => 'MyNonEmptyString',
                      IamRoleArn  => 'MyNonEmptyString',
                    },
                    ...
                  ],                          # OPTIONAL
                  KmsKeyId                       => 'MyNonEmptyString',
                  MaintenanceTrackName           => 'MyNonEmptyString',
                  ManualSnapshotRetentionPeriod  => 1,
                  MasterUsername                 => 'MyNonEmptyString',
                  NextMaintenanceWindowStartTime => 'MyNonEmptyString',
                  NodeType                       => 'MyNonEmptyString',
                  NumberOfNodes                  => 1,
                  PendingActions => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PendingModifiedValues => {
                    AutomatedSnapshotRetentionPeriod => 1,
                    ClusterIdentifier                => 'MyNonEmptyString',
                    ClusterType                      => 'MyNonEmptyString',
                    ClusterVersion                   => 'MyNonEmptyString',
                    EncryptionType                   => 'MyNonEmptyString',
                    EnhancedVpcRouting   => 1,                      # OPTIONAL
                    MaintenanceTrackName => 'MyNonEmptyString',
                    MasterUserPassword   => 'MyNonEmptyString',
                    NodeType             => 'MyNonEmptyString',
                    NumberOfNodes        => 1,
                    PubliclyAccessible   => 1,                      # OPTIONAL
                  },    # OPTIONAL
                  PreferredMaintenanceWindow => 'MyNonEmptyString',
                  PubliclyAccessible         => 1,                    # OPTIONAL
                  ResizeInfo                 => {
                    AllowCancelResize => 1,                           # OPTIONAL
                    ResizeType        => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RestoreStatus => {
                    CurrentRestoreRateInMegaBytesPerSecond => 1,    # OPTIONAL
                    ElapsedTimeInSeconds                   => 1,    # OPTIONAL
                    EstimatedTimeToCompletionInSeconds     => 1,    # OPTIONAL
                    ProgressInMegaBytes                    => 1,    # OPTIONAL
                    SnapshotSizeInMegaBytes                => 1,    # OPTIONAL
                    Status => 'MyNonEmptyString',
                  },    # OPTIONAL
                  SnapshotScheduleIdentifier => 'MyNonEmptyString',
                  SnapshotScheduleState      => 'MyNonEmptyString',
                  VpcId                      => 'MyNonEmptyString',
                  VpcSecurityGroups          => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsS3AccountPublicAccessBlock => {
                  BlockPublicAcls       => 1,    # OPTIONAL
                  BlockPublicPolicy     => 1,    # OPTIONAL
                  IgnorePublicAcls      => 1,    # OPTIONAL
                  RestrictPublicBuckets => 1,    # OPTIONAL
                },    # OPTIONAL
                AwsS3Bucket => {
                  CreatedAt                      => 'MyNonEmptyString',
                  OwnerId                        => 'MyNonEmptyString',
                  OwnerName                      => 'MyNonEmptyString',
                  PublicAccessBlockConfiguration => {
                    BlockPublicAcls       => 1,    # OPTIONAL
                    BlockPublicPolicy     => 1,    # OPTIONAL
                    IgnorePublicAcls      => 1,    # OPTIONAL
                    RestrictPublicBuckets => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ServerSideEncryptionConfiguration => {
                    Rules => [
                      {
                        ApplyServerSideEncryptionByDefault => {
                          KMSMasterKeyID => 'MyNonEmptyString',
                          SSEAlgorithm   => 'MyNonEmptyString',
                        },    # OPTIONAL
                      },
                      ...
                    ],        # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsS3Object => {
                  ContentType          => 'MyNonEmptyString',
                  ETag                 => 'MyNonEmptyString',
                  LastModified         => 'MyNonEmptyString',
                  SSEKMSKeyId          => 'MyNonEmptyString',
                  ServerSideEncryption => 'MyNonEmptyString',
                  VersionId            => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSecretsManagerSecret => {
                  Deleted           => 1,                    # OPTIONAL
                  Description       => 'MyNonEmptyString',
                  KmsKeyId          => 'MyNonEmptyString',
                  Name              => 'MyNonEmptyString',
                  RotationEnabled   => 1,                    # OPTIONAL
                  RotationLambdaArn => 'MyNonEmptyString',
                  RotationOccurredWithinFrequency => 1,      # OPTIONAL
                  RotationRules => { AutomaticallyAfterDays => 1, },  # OPTIONAL
                },    # OPTIONAL
                AwsSnsTopic => {
                  KmsMasterKeyId => 'MyNonEmptyString',
                  Owner          => 'MyNonEmptyString',
                  Subscription   => [
                    {
                      Endpoint => 'MyNonEmptyString',
                      Protocol => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  TopicName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSqsQueue => {
                  DeadLetterTargetArn          => 'MyNonEmptyString',
                  KmsDataKeyReusePeriodSeconds => 1,
                  KmsMasterKeyId               => 'MyNonEmptyString',
                  QueueName                    => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSsmPatchCompliance => {
                  Patch => {
                    ComplianceSummary => {
                      ComplianceType                 => 'MyNonEmptyString',
                      CompliantCriticalCount         => 1,
                      CompliantHighCount             => 1,
                      CompliantInformationalCount    => 1,
                      CompliantLowCount              => 1,
                      CompliantMediumCount           => 1,
                      CompliantUnspecifiedCount      => 1,
                      ExecutionType                  => 'MyNonEmptyString',
                      NonCompliantCriticalCount      => 1,
                      NonCompliantHighCount          => 1,
                      NonCompliantInformationalCount => 1,
                      NonCompliantLowCount           => 1,
                      NonCompliantMediumCount        => 1,
                      NonCompliantUnspecifiedCount   => 1,
                      OverallSeverity                => 'MyNonEmptyString',
                      PatchBaselineId                => 'MyNonEmptyString',
                      PatchGroup                     => 'MyNonEmptyString',
                      Status                         => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsWafWebAcl => {
                  DefaultAction => 'MyNonEmptyString',
                  Name          => 'MyNonEmptyString',
                  Rules         => [
                    {
                      Action => { Type => 'MyNonEmptyString', },    # OPTIONAL
                      ExcludedRules =>
                        [ { RuleId => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                      OverrideAction => { Type => 'MyNonEmptyString', }
                      ,                                               # OPTIONAL
                      Priority => 1,
                      RuleId   => 'MyNonEmptyString',
                      Type     => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  WebAclId => 'MyNonEmptyString',
                },    # OPTIONAL
                Container => {
                  ImageId    => 'MyNonEmptyString',
                  ImageName  => 'MyNonEmptyString',
                  LaunchedAt => 'MyNonEmptyString',
                  Name       => 'MyNonEmptyString',
                },    # OPTIONAL
                Other => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                ,     # OPTIONAL
              },    # OPTIONAL
              Partition => 'aws',    # values: aws, aws-cn, aws-us-gov; OPTIONAL
              Region       => 'MyNonEmptyString',
              ResourceRole => 'MyNonEmptyString',
              Tags => { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
            },
            ...
          ],
          SchemaVersion => 'MyNonEmptyString',
          Title         => 'MyNonEmptyString',
          UpdatedAt     => 'MyNonEmptyString',
          Action        => {
            ActionType       => 'MyNonEmptyString',
            AwsApiCallAction => {
              AffectedResources =>
                { 'MyNonEmptyString' => 'MyNonEmptyString', },        # OPTIONAL
              Api             => 'MyNonEmptyString',
              CallerType      => 'MyNonEmptyString',
              DomainDetails   => { Domain => 'MyNonEmptyString', },   # OPTIONAL
              FirstSeen       => 'MyNonEmptyString',
              LastSeen        => 'MyNonEmptyString',
              RemoteIpDetails => {
                City    => { CityName => 'MyNonEmptyString', },       # OPTIONAL
                Country => {
                  CountryCode => 'MyNonEmptyString',
                  CountryName => 'MyNonEmptyString',
                },                                                    # OPTIONAL
                GeoLocation => {
                  Lat => 1,                                           # OPTIONAL
                  Lon => 1,                                           # OPTIONAL
                },    # OPTIONAL
                IpAddressV4  => 'MyNonEmptyString',
                Organization => {
                  Asn    => 1,
                  AsnOrg => 'MyNonEmptyString',
                  Isp    => 'MyNonEmptyString',
                  Org    => 'MyNonEmptyString',
                },    # OPTIONAL
              },    # OPTIONAL
              ServiceName => 'MyNonEmptyString',
            },    # OPTIONAL
            DnsRequestAction => {
              Blocked  => 1,                    # OPTIONAL
              Domain   => 'MyNonEmptyString',
              Protocol => 'MyNonEmptyString',
            },    # OPTIONAL
            NetworkConnectionAction => {
              Blocked             => 1,                    # OPTIONAL
              ConnectionDirection => 'MyNonEmptyString',
              LocalPortDetails    => {
                Port     => 1,
                PortName => 'MyNonEmptyString',
              },                                           # OPTIONAL
              Protocol        => 'MyNonEmptyString',
              RemoteIpDetails => {
                City    => { CityName => 'MyNonEmptyString', },    # OPTIONAL
                Country => {
                  CountryCode => 'MyNonEmptyString',
                  CountryName => 'MyNonEmptyString',
                },                                                 # OPTIONAL
                GeoLocation => {
                  Lat => 1,                                        # OPTIONAL
                  Lon => 1,                                        # OPTIONAL
                },    # OPTIONAL
                IpAddressV4  => 'MyNonEmptyString',
                Organization => {
                  Asn    => 1,
                  AsnOrg => 'MyNonEmptyString',
                  Isp    => 'MyNonEmptyString',
                  Org    => 'MyNonEmptyString',
                },    # OPTIONAL
              },    # OPTIONAL
              RemotePortDetails => {
                Port     => 1,
                PortName => 'MyNonEmptyString',
              },    # OPTIONAL
            },    # OPTIONAL
            PortProbeAction => {
              Blocked          => 1,    # OPTIONAL
              PortProbeDetails => [
                {
                  LocalIpDetails => { IpAddressV4 => 'MyNonEmptyString', }
                  ,                     # OPTIONAL
                  LocalPortDetails => {
                    Port     => 1,
                    PortName => 'MyNonEmptyString',
                  },                    # OPTIONAL
                  RemoteIpDetails => {
                    City    => { CityName => 'MyNonEmptyString', },   # OPTIONAL
                    Country => {
                      CountryCode => 'MyNonEmptyString',
                      CountryName => 'MyNonEmptyString',
                    },                                                # OPTIONAL
                    GeoLocation => {
                      Lat => 1,                                       # OPTIONAL
                      Lon => 1,                                       # OPTIONAL
                    },    # OPTIONAL
                    IpAddressV4  => 'MyNonEmptyString',
                    Organization => {
                      Asn    => 1,
                      AsnOrg => 'MyNonEmptyString',
                      Isp    => 'MyNonEmptyString',
                      Org    => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],        # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Compliance => {
            RelatedRequirements => [ 'MyNonEmptyString', ... ],    # OPTIONAL
            Status              => 'PASSED'
            ,    # values: PASSED, WARNING, FAILED, NOT_AVAILABLE; OPTIONAL
            StatusReasons => [
              {
                ReasonCode  => 'MyNonEmptyString',
                Description => 'MyNonEmptyString',
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Confidence            => 1,
          Criticality           => 1,
          FindingProviderFields => {
            Confidence      => 1,    # max: 100; OPTIONAL
            Criticality     => 1,    # max: 100; OPTIONAL
            RelatedFindings => [
              {
                Id         => 'MyNonEmptyString',
                ProductArn => 'MyNonEmptyString',

              },
              ...
            ],                       # OPTIONAL
            Severity => {
              Label => 'INFORMATIONAL'
              ,   # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
              Original => 'MyNonEmptyString',
            },    # OPTIONAL
            Types => [ 'MyNonEmptyString', ... ],    # OPTIONAL
          },    # OPTIONAL
          FirstObservedAt => 'MyNonEmptyString',
          LastObservedAt  => 'MyNonEmptyString',
          Malware         => [
            {
              Name  => 'MyNonEmptyString',
              Path  => 'MyNonEmptyString',
              State => 'OBSERVED'
              ,    # values: OBSERVED, REMOVAL_FAILED, REMOVED; OPTIONAL
              Type => 'ADWARE'
              , # values: ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Network => {
            DestinationDomain => 'MyNonEmptyString',
            DestinationIpV4   => 'MyNonEmptyString',
            DestinationIpV6   => 'MyNonEmptyString',
            DestinationPort   => 1,
            Direction         => 'IN',               # values: IN, OUT; OPTIONAL
            OpenPortRange     => {
              Begin => 1,
              End   => 1,
            },
            Protocol     => 'MyNonEmptyString',
            SourceDomain => 'MyNonEmptyString',
            SourceIpV4   => 'MyNonEmptyString',
            SourceIpV6   => 'MyNonEmptyString',
            SourceMac    => 'MyNonEmptyString',
            SourcePort   => 1,
          },    # OPTIONAL
          NetworkPath => [
            {
              ComponentId   => 'MyNonEmptyString',
              ComponentType => 'MyNonEmptyString',
              Egress        => {
                Destination => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,
                      End   => 1,
                    },
                    ...
                  ],                                            # OPTIONAL
                },    # OPTIONAL
                Protocol => 'MyNonEmptyString',
                Source   => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,
                      End   => 1,
                    },
                    ...
                  ],                                            # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Ingress => {
                Destination => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,
                      End   => 1,
                    },
                    ...
                  ],                                            # OPTIONAL
                },    # OPTIONAL
                Protocol => 'MyNonEmptyString',
                Source   => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,
                      End   => 1,
                    },
                    ...
                  ],                                            # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          Note => {
            Text      => 'MyNonEmptyString',
            UpdatedAt => 'MyNonEmptyString',
            UpdatedBy => 'MyNonEmptyString',

          },        # OPTIONAL
          PatchSummary => {
            Id                     => 'MyNonEmptyString',
            FailedCount            => 1,
            InstalledCount         => 1,
            InstalledOtherCount    => 1,
            InstalledPendingReboot => 1,
            InstalledRejectedCount => 1,
            MissingCount           => 1,
            Operation              => 'MyNonEmptyString',
            OperationEndTime       => 'MyNonEmptyString',
            OperationStartTime     => 'MyNonEmptyString',
            RebootOption           => 'MyNonEmptyString',
          },    # OPTIONAL
          Process => {
            LaunchedAt   => 'MyNonEmptyString',
            Name         => 'MyNonEmptyString',
            ParentPid    => 1,
            Path         => 'MyNonEmptyString',
            Pid          => 1,
            TerminatedAt => 'MyNonEmptyString',
          },    # OPTIONAL
          ProductFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,     # OPTIONAL
          RecordState     => 'ACTIVE',    # values: ACTIVE, ARCHIVED; OPTIONAL
          RelatedFindings => [
            {
              Id         => 'MyNonEmptyString',
              ProductArn => 'MyNonEmptyString',

            },
            ...
          ],                              # OPTIONAL
          Remediation => {
            Recommendation => {
              Text => 'MyNonEmptyString',
              Url  => 'MyNonEmptyString',
            },                            # OPTIONAL
          },    # OPTIONAL
          Severity => {
            Label => 'INFORMATIONAL'
            ,    # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
            Normalized => 1,
            Original   => 'MyNonEmptyString',
            Product    => 1,                    # OPTIONAL
          },    # OPTIONAL
          SourceUrl             => 'MyNonEmptyString',
          ThreatIntelIndicators => [
            {
              Category => 'BACKDOOR'
              , # values: BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER; OPTIONAL
              LastObservedAt => 'MyNonEmptyString',
              Source         => 'MyNonEmptyString',
              SourceUrl      => 'MyNonEmptyString',
              Type           => 'DOMAIN'
              , # values: DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL; OPTIONAL
              Value => 'MyNonEmptyString',
            },
            ...
          ],    # OPTIONAL
          Types => [ 'MyNonEmptyString', ... ],    # OPTIONAL
          UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,                                        # OPTIONAL
          VerificationState => 'UNKNOWN'
          , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
          Vulnerabilities => [
            {
              Id   => 'MyNonEmptyString',
              Cvss => [
                {
                  BaseScore  => 1,                    # OPTIONAL
                  BaseVector => 'MyNonEmptyString',
                  Version    => 'MyNonEmptyString',
                },
                ...
              ],                                      # OPTIONAL
              ReferenceUrls          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
              RelatedVulnerabilities => [ 'MyNonEmptyString', ... ],  # OPTIONAL
              Vendor                 => {
                Name            => 'MyNonEmptyString',
                Url             => 'MyNonEmptyString',
                VendorCreatedAt => 'MyNonEmptyString',
                VendorSeverity  => 'MyNonEmptyString',
                VendorUpdatedAt => 'MyNonEmptyString',
              },                                                      # OPTIONAL
              VulnerablePackages => [
                {
                  Architecture => 'MyNonEmptyString',
                  Epoch        => 'MyNonEmptyString',
                  Name         => 'MyNonEmptyString',
                  Release      => 'MyNonEmptyString',
                  Version      => 'MyNonEmptyString',
                },
                ...
              ],                                                      # OPTIONAL
            },
            ...
          ],                                                          # OPTIONAL
          Workflow => {
            Status =>
              'NEW',    # values: NEW, NOTIFIED, RESOLVED, SUPPRESSED; OPTIONAL
          },    # OPTIONAL
          WorkflowState => 'NEW'
          ,   # values: NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedCount    = $BatchImportFindingsResponse->FailedCount;
    my $FailedFindings = $BatchImportFindingsResponse->FailedFindings;
    my $SuccessCount   = $BatchImportFindingsResponse->SuccessCount;

    # Returns a L<Paws::SecurityHub::BatchImportFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchImportFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]

A list of findings to import. To successfully import a finding, it must
follow the AWS Security Finding Format
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html).
Maximum of 100 findings per request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchImportFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

