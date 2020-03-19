
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
              Id      => 'MyNonEmptyString',
              Type    => 'MyNonEmptyString',
              Details => {
                AwsCloudFrontDistribution => {
                  DomainName       => 'MyNonEmptyString',
                  ETag             => 'MyNonEmptyString',
                  LastModifiedTime => 'MyNonEmptyString',
                  Logging          => {
                    Bucket         => 'MyNonEmptyString',
                    Enabled        => 1,                    # OPTIONAL
                    IncludeCookies => 1,                    # OPTIONAL
                    Prefix         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Origins => {
                    Items => [
                      {
                        DomainName => 'MyNonEmptyString',
                        Id         => 'MyNonEmptyString',
                        OriginPath => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Status   => 'MyNonEmptyString',
                  WebAclId => 'MyNonEmptyString',
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
                  NetworkInterfaceId => 'MyNonEmptyString',
                  SecurityGroups     => [
                    {
                      GroupId   => 'MyNonEmptyString',
                      GroupName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  SourceDestCheck => 1,    # OPTIONAL
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
                  CreatedAt     => 'MyNonEmptyString',
                  PrincipalId   => 'MyNonEmptyString',
                  PrincipalName => 'MyNonEmptyString',
                  PrincipalType => 'MyNonEmptyString',
                  Status => 'Active',    # values: Active, Inactive; OPTIONAL
                  UserName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamRole => {
                  AssumeRolePolicyDocument =>
                    'MyAwsIamRoleAssumeRolePolicyDocument'
                  ,    # min: 1, max: 131072; OPTIONAL
                  CreateDate         => 'MyNonEmptyString',
                  MaxSessionDuration => 1,
                  Path               => 'MyNonEmptyString',
                  RoleId             => 'MyNonEmptyString',
                  RoleName           => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsKmsKey => {
                  AWSAccountId => 'MyNonEmptyString',
                  CreationDate => 1,                    # OPTIONAL
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
                AwsRdsDbInstance => {
                  AssociatedRoles => [
                    {
                      FeatureName => 'MyNonEmptyString',
                      RoleArn     => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CACertificateIdentifier => 'MyNonEmptyString',
                  DBClusterIdentifier     => 'MyNonEmptyString',
                  DBInstanceClass         => 'MyNonEmptyString',
                  DBInstanceIdentifier    => 'MyNonEmptyString',
                  DBName                  => 'MyNonEmptyString',
                  DbInstancePort          => 1,
                  DbiResourceId           => 'MyNonEmptyString',
                  DeletionProtection      => 1,                    # OPTIONAL
                  Endpoint                => {
                    Address      => 'MyNonEmptyString',
                    HostedZoneId => 'MyNonEmptyString',
                    Port         => 1,
                  },                                               # OPTIONAL
                  Engine        => 'MyNonEmptyString',
                  EngineVersion => 'MyNonEmptyString',
                  IAMDatabaseAuthenticationEnabled => 1,           # OPTIONAL
                  InstanceCreateTime => 'MyNonEmptyString',
                  KmsKeyId           => 'MyNonEmptyString',
                  PubliclyAccessible => 1,                         # OPTIONAL
                  StorageEncrypted   => 1,                         # OPTIONAL
                  TdeCredentialArn   => 'MyNonEmptyString',
                  VpcSecurityGroups  => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],                                               # OPTIONAL
                },    # OPTIONAL
                AwsS3Bucket => {
                  OwnerId   => 'MyNonEmptyString',
                  OwnerName => 'MyNonEmptyString',
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
              Region => 'MyNonEmptyString',
              Tags => { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
            },
            ...
          ],
          SchemaVersion => 'MyNonEmptyString',
          Severity      => {
            Normalized => 1,
            Product    => 1,                                          # OPTIONAL
          },
          Title      => 'MyNonEmptyString',
          Types      => [ 'MyNonEmptyString', ... ],
          UpdatedAt  => 'MyNonEmptyString',
          Compliance => {
            RelatedRequirements => [ 'MyNonEmptyString', ... ],       # OPTIONAL
            Status => 'PASSED'
            ,    # values: PASSED, WARNING, FAILED, NOT_AVAILABLE; OPTIONAL
          },    # OPTIONAL
          Confidence      => 1,
          Criticality     => 1,
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
            Protocol          => 'MyNonEmptyString',
            SourceDomain      => 'MyNonEmptyString',
            SourceIpV4        => 'MyNonEmptyString',
            SourceIpV6        => 'MyNonEmptyString',
            SourceMac         => 'MyNonEmptyString',
            SourcePort        => 1,
          },    # OPTIONAL
          Note => {
            Text      => 'MyNonEmptyString',
            UpdatedAt => 'MyNonEmptyString',
            UpdatedBy => 'MyNonEmptyString',

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
          UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,     # OPTIONAL
          VerificationState => 'UNKNOWN'
          , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
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

