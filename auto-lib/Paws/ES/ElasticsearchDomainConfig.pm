package Paws::ES::ElasticsearchDomainConfig;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Paws::ES::AccessPoliciesStatus');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptionsStatus');
  has CognitoOptions => (is => 'ro', isa => 'Paws::ES::CognitoOptionsStatus');
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptionsStatus');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfigStatus');
  has ElasticsearchVersion => (is => 'ro', isa => 'Paws::ES::ElasticsearchVersionStatus');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::ES::EncryptionAtRestOptionsStatus');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::ES::LogPublishingOptionsStatus');
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => 'Paws::ES::NodeToNodeEncryptionOptionsStatus');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptionsStatus');
  has VPCOptions => (is => 'ro', isa => 'Paws::ES::VPCDerivedInfoStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchDomainConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchDomainConfig object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., VPCOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchDomainConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 DESCRIPTION

The configuration of an Elasticsearch domain.

=head1 ATTRIBUTES


=head2 AccessPolicies => L<Paws::ES::AccessPoliciesStatus>

  IAM access policy as a JSON-formatted string.


=head2 AdvancedOptions => L<Paws::ES::AdvancedOptionsStatus>

  Specifies the C<AdvancedOptions> for the domain. See Configuring
Advanced Options
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options)
for more information.


=head2 CognitoOptions => L<Paws::ES::CognitoOptionsStatus>

  The C<CognitoOptions> for the specified domain. For more information,
see Amazon Cognito Authentication for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).


=head2 EBSOptions => L<Paws::ES::EBSOptionsStatus>

  Specifies the C<EBSOptions> for the Elasticsearch domain.


=head2 ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfigStatus>

  Specifies the C<ElasticsearchClusterConfig> for the Elasticsearch
domain.


=head2 ElasticsearchVersion => L<Paws::ES::ElasticsearchVersionStatus>

  String of format X.Y to specify version for the Elasticsearch domain.


=head2 EncryptionAtRestOptions => L<Paws::ES::EncryptionAtRestOptionsStatus>

  Specifies the C<EncryptionAtRestOptions> for the Elasticsearch domain.


=head2 LogPublishingOptions => L<Paws::ES::LogPublishingOptionsStatus>

  Log publishing options for the given domain.


=head2 NodeToNodeEncryptionOptions => L<Paws::ES::NodeToNodeEncryptionOptionsStatus>

  Specifies the C<NodeToNodeEncryptionOptions> for the Elasticsearch
domain.


=head2 SnapshotOptions => L<Paws::ES::SnapshotOptionsStatus>

  Specifies the C<SnapshotOptions> for the Elasticsearch domain.


=head2 VPCOptions => L<Paws::ES::VPCDerivedInfoStatus>

  The C<VPCOptions> for the specified domain. For more information, see
VPC Endpoints for Amazon Elasticsearch Service Domains
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

