package Paws::ES::ElasticsearchDomainStatus;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptions');
  has ARN => (is => 'ro', isa => 'Str', required => 1);
  has CognitoOptions => (is => 'ro', isa => 'Paws::ES::CognitoOptions');
  has Created => (is => 'ro', isa => 'Bool');
  has Deleted => (is => 'ro', isa => 'Bool');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptions');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfig', required => 1);
  has ElasticsearchVersion => (is => 'ro', isa => 'Str');
  has EncryptionAtRestOptions => (is => 'ro', isa => 'Paws::ES::EncryptionAtRestOptions');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Endpoints => (is => 'ro', isa => 'Paws::ES::EndpointsMap');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::ES::LogPublishingOptions');
  has NodeToNodeEncryptionOptions => (is => 'ro', isa => 'Paws::ES::NodeToNodeEncryptionOptions');
  has Processing => (is => 'ro', isa => 'Bool');
  has ServiceSoftwareOptions => (is => 'ro', isa => 'Paws::ES::ServiceSoftwareOptions');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptions');
  has UpgradeProcessing => (is => 'ro', isa => 'Bool');
  has VPCOptions => (is => 'ro', isa => 'Paws::ES::VPCDerivedInfo');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ElasticsearchDomainStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ElasticsearchDomainStatus object:

  $service_obj->Method(Att1 => { AccessPolicies => $value, ..., VPCOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ElasticsearchDomainStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPolicies

=head1 DESCRIPTION

The current status of an Elasticsearch domain.

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

  IAM access policy as a JSON-formatted string.


=head2 AdvancedOptions => L<Paws::ES::AdvancedOptions>

  Specifies the status of the C<AdvancedOptions>


=head2 B<REQUIRED> ARN => Str

  The Amazon resource name (ARN) of an Elasticsearch domain. See
Identifiers for IAM Entities
(http://docs.aws.amazon.com/IAM/latest/UserGuide/index.html?Using_Identifiers.html)
in I<Using AWS Identity and Access Management> for more information.


=head2 CognitoOptions => L<Paws::ES::CognitoOptions>

  The C<CognitoOptions> for the specified domain. For more information,
see Amazon Cognito Authentication for Kibana
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html).


=head2 Created => Bool

  The domain creation status. C<True> if the creation of an Elasticsearch
domain is complete. C<False> if domain creation is still in progress.


=head2 Deleted => Bool

  The domain deletion status. C<True> if a delete request has been
received for the domain but resource cleanup is still in progress.
C<False> if the domain has not been deleted. Once domain deletion is
complete, the status of the domain is no longer returned.


=head2 B<REQUIRED> DomainId => Str

  The unique identifier for the specified Elasticsearch domain.


=head2 B<REQUIRED> DomainName => Str

  The name of an Elasticsearch domain. Domain names are unique across the
domains owned by an account within an AWS region. Domain names start
with a letter or number and can contain the following characters: a-z
(lowercase), 0-9, and - (hyphen).


=head2 EBSOptions => L<Paws::ES::EBSOptions>

  The C<EBSOptions> for the specified domain. See Configuring EBS-based
Storage
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-ebs)
for more information.


=head2 B<REQUIRED> ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>

  The type and number of instances in the domain cluster.


=head2 ElasticsearchVersion => Str

  


=head2 EncryptionAtRestOptions => L<Paws::ES::EncryptionAtRestOptions>

  Specifies the status of the C<EncryptionAtRestOptions>.


=head2 Endpoint => Str

  The Elasticsearch domain endpoint that you use to submit index and
search requests.


=head2 Endpoints => L<Paws::ES::EndpointsMap>

  Map containing the Elasticsearch domain endpoints used to submit index
and search requests. Example C<key, value>:
C<'vpc','vpc-endpoint-h2dsd34efgyghrtguk5gt6j2foh4.us-east-1.es.amazonaws.com'>.


=head2 LogPublishingOptions => L<Paws::ES::LogPublishingOptions>

  Log publishing options for the given domain.


=head2 NodeToNodeEncryptionOptions => L<Paws::ES::NodeToNodeEncryptionOptions>

  Specifies the status of the C<NodeToNodeEncryptionOptions>.


=head2 Processing => Bool

  The status of the Elasticsearch domain configuration. C<True> if Amazon
Elasticsearch Service is processing configuration changes. C<False> if
the configuration is active.


=head2 ServiceSoftwareOptions => L<Paws::ES::ServiceSoftwareOptions>

  The current status of the Elasticsearch domain's service software.


=head2 SnapshotOptions => L<Paws::ES::SnapshotOptions>

  Specifies the status of the C<SnapshotOptions>


=head2 UpgradeProcessing => Bool

  The status of an Elasticsearch domain version upgrade. C<True> if
Amazon Elasticsearch Service is undergoing a version upgrade. C<False>
if the configuration is active.


=head2 VPCOptions => L<Paws::ES::VPCDerivedInfo>

  The C<VPCOptions> for the specified domain. For more information, see
VPC Endpoints for Amazon Elasticsearch Service Domains
(http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

