
package Paws::ES::UpdateElasticsearchDomainConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchClusterConfig ES_SnapshotOptions ES_EBSOptions ES_CognitoOptions ES_VPCOptions ES_AdvancedOptions ES_LogPublishingOptions/;
  has AccessPolicies => (is => 'ro', isa => Str, predicate => 1);
  has AdvancedOptions => (is => 'ro', isa => ES_AdvancedOptions, predicate => 1);
  has CognitoOptions => (is => 'ro', isa => ES_CognitoOptions, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EBSOptions => (is => 'ro', isa => ES_EBSOptions, predicate => 1);
  has ElasticsearchClusterConfig => (is => 'ro', isa => ES_ElasticsearchClusterConfig, predicate => 1);
  has LogPublishingOptions => (is => 'ro', isa => ES_LogPublishingOptions, predicate => 1);
  has SnapshotOptions => (is => 'ro', isa => ES_SnapshotOptions, predicate => 1);
  has VPCOptions => (is => 'ro', isa => ES_VPCOptions, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateElasticsearchDomainConfig');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/config');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ES::UpdateElasticsearchDomainConfigResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticsearchClusterConfig' => {
                                                 'class' => 'Paws::ES::ElasticsearchClusterConfig',
                                                 'type' => 'ES_ElasticsearchClusterConfig'
                                               },
               'AccessPolicies' => {
                                     'type' => 'Str'
                                   },
               'LogPublishingOptions' => {
                                           'class' => 'Paws::ES::LogPublishingOptions',
                                           'type' => 'ES_LogPublishingOptions'
                                         },
               'VPCOptions' => {
                                 'class' => 'Paws::ES::VPCOptions',
                                 'type' => 'ES_VPCOptions'
                               },
               'SnapshotOptions' => {
                                      'class' => 'Paws::ES::SnapshotOptions',
                                      'type' => 'ES_SnapshotOptions'
                                    },
               'CognitoOptions' => {
                                     'class' => 'Paws::ES::CognitoOptions',
                                     'type' => 'ES_CognitoOptions'
                                   },
               'EBSOptions' => {
                                 'class' => 'Paws::ES::EBSOptions',
                                 'type' => 'ES_EBSOptions'
                               },
               'AdvancedOptions' => {
                                      'class' => 'Paws::ES::AdvancedOptions',
                                      'type' => 'ES_AdvancedOptions'
                                    },
               'DomainName' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'DomainName' => 'DomainName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdateElasticsearchDomainConfig - Arguments for method UpdateElasticsearchDomainConfig on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateElasticsearchDomainConfig on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method UpdateElasticsearchDomainConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateElasticsearchDomainConfig.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $UpdateElasticsearchDomainConfigResponse =
      $es->UpdateElasticsearchDomainConfig(
      DomainName      => 'MyDomainName',
      AccessPolicies  => 'MyPolicyDocument',               # OPTIONAL
      AdvancedOptions => { 'MyString' => 'MyString', },    # OPTIONAL
      CognitoOptions  => {
        Enabled        => 1,                     # OPTIONAL
        IdentityPoolId => 'MyIdentityPoolId',    # min: 1, max: 55; OPTIONAL
        RoleArn        => 'MyRoleArn',           # min: 20, max: 2048; OPTIONAL
        UserPoolId     => 'MyUserPoolId',        # min: 1, max: 55; OPTIONAL
      },    # OPTIONAL
      EBSOptions => {
        EBSEnabled => 1,             # OPTIONAL
        Iops       => 1,             # OPTIONAL
        VolumeSize => 1,             # OPTIONAL
        VolumeType => 'standard',    # values: standard, gp2, io1; OPTIONAL
      },    # OPTIONAL
      ElasticsearchClusterConfig => {
        DedicatedMasterCount   => 1,                          # OPTIONAL
        DedicatedMasterEnabled => 1,                          # OPTIONAL
        DedicatedMasterType    => 'm3.medium.elasticsearch'
        , # values: m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch; OPTIONAL
        InstanceCount => 1,                          # OPTIONAL
        InstanceType  => 'm3.medium.elasticsearch'
        , # values: m3.medium.elasticsearch, m3.large.elasticsearch, m3.xlarge.elasticsearch, m3.2xlarge.elasticsearch, m4.large.elasticsearch, m4.xlarge.elasticsearch, m4.2xlarge.elasticsearch, m4.4xlarge.elasticsearch, m4.10xlarge.elasticsearch, t2.micro.elasticsearch, t2.small.elasticsearch, t2.medium.elasticsearch, r3.large.elasticsearch, r3.xlarge.elasticsearch, r3.2xlarge.elasticsearch, r3.4xlarge.elasticsearch, r3.8xlarge.elasticsearch, i2.xlarge.elasticsearch, i2.2xlarge.elasticsearch, d2.xlarge.elasticsearch, d2.2xlarge.elasticsearch, d2.4xlarge.elasticsearch, d2.8xlarge.elasticsearch, c4.large.elasticsearch, c4.xlarge.elasticsearch, c4.2xlarge.elasticsearch, c4.4xlarge.elasticsearch, c4.8xlarge.elasticsearch, r4.large.elasticsearch, r4.xlarge.elasticsearch, r4.2xlarge.elasticsearch, r4.4xlarge.elasticsearch, r4.8xlarge.elasticsearch, r4.16xlarge.elasticsearch, i3.large.elasticsearch, i3.xlarge.elasticsearch, i3.2xlarge.elasticsearch, i3.4xlarge.elasticsearch, i3.8xlarge.elasticsearch, i3.16xlarge.elasticsearch; OPTIONAL
        ZoneAwarenessConfig => {
          AvailabilityZoneCount => 1,    # OPTIONAL
        },    # OPTIONAL
        ZoneAwarenessEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      LogPublishingOptions => {
        'INDEX_SLOW_LOGS' => {
          CloudWatchLogsLogGroupArn => 'MyCloudWatchLogsLogGroupArn', # OPTIONAL
          Enabled                   => 1,                             # OPTIONAL
        }, # key: values: INDEX_SLOW_LOGS, SEARCH_SLOW_LOGS, ES_APPLICATION_LOGS
      },    # OPTIONAL
      SnapshotOptions => {
        AutomatedSnapshotStartHour => 1,    # OPTIONAL
      },    # OPTIONAL
      VPCOptions => {
        SecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
        SubnetIds        => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $DomainConfig = $UpdateElasticsearchDomainConfigResponse->DomainConfig;

    # Returns a L<Paws::ES::UpdateElasticsearchDomainConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/UpdateElasticsearchDomainConfig>

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

IAM access policy as a JSON-formatted string.



=head2 AdvancedOptions => ES_AdvancedOptions

Modifies the advanced option to allow references to indices in an HTTP
request body. Must be C<false> when configuring access to individual
sub-resources. By default, the value is C<true>. See Configuration
Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options)
for more information.



=head2 CognitoOptions => ES_CognitoOptions

Options to specify the Cognito user and identity pools for Kibana
authentication. For more information, see Amazon Cognito Authentication
for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).



=head2 B<REQUIRED> DomainName => Str

The name of the Elasticsearch domain that you are updating.



=head2 EBSOptions => ES_EBSOptions

Specify the type and size of the EBS volume that you want to use.



=head2 ElasticsearchClusterConfig => ES_ElasticsearchClusterConfig

The type and number of instances to instantiate for the domain cluster.



=head2 LogPublishingOptions => ES_LogPublishingOptions

Map of C<LogType> and C<LogPublishingOption>, each containing options
to publish a given type of Elasticsearch log.



=head2 SnapshotOptions => ES_SnapshotOptions

Option to set the time, in UTC format, for the daily automated
snapshot. Default value is C<0> hours.



=head2 VPCOptions => ES_VPCOptions

Options to specify the subnets and security groups for VPC endpoint.
For more information, see Creating a VPC
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc)
in I<VPC Endpoints for Amazon Elasticsearch Service Domains>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateElasticsearchDomainConfig in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

