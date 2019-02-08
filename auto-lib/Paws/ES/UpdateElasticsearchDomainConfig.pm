
package Paws::ES::UpdateElasticsearchDomainConfig;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptions');
  has CognitoOptions => (is => 'ro', isa => 'Paws::ES::CognitoOptions');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptions');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfig');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::ES::LogPublishingOptions');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptions');
  has VPCOptions => (is => 'ro', isa => 'Paws::ES::VPCOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateElasticsearchDomainConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::UpdateElasticsearchDomainConfigResponse');
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



=head2 AdvancedOptions => L<Paws::ES::AdvancedOptions>

Modifies the advanced option to allow references to indices in an HTTP
request body. Must be C<false> when configuring access to individual
sub-resources. By default, the value is C<true>. See Configuration
Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options)
for more information.



=head2 CognitoOptions => L<Paws::ES::CognitoOptions>

Options to specify the Cognito user and identity pools for Kibana
authentication. For more information, see Amazon Cognito Authentication
for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).



=head2 B<REQUIRED> DomainName => Str

The name of the Elasticsearch domain that you are updating.



=head2 EBSOptions => L<Paws::ES::EBSOptions>

Specify the type and size of the EBS volume that you want to use.



=head2 ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>

The type and number of instances to instantiate for the domain cluster.



=head2 LogPublishingOptions => L<Paws::ES::LogPublishingOptions>

Map of C<LogType> and C<LogPublishingOption>, each containing options
to publish a given type of Elasticsearch log.



=head2 SnapshotOptions => L<Paws::ES::SnapshotOptions>

Option to set the time, in UTC format, for the daily automated
snapshot. Default value is C<0> hours.



=head2 VPCOptions => L<Paws::ES::VPCOptions>

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

