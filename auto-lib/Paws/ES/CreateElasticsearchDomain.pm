
package Paws::ES::CreateElasticsearchDomain;
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str');
  has AdvancedOptions => (is => 'ro', isa => 'Paws::ES::AdvancedOptions');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has EBSOptions => (is => 'ro', isa => 'Paws::ES::EBSOptions');
  has ElasticsearchClusterConfig => (is => 'ro', isa => 'Paws::ES::ElasticsearchClusterConfig');
  has ElasticsearchVersion => (is => 'ro', isa => 'Str');
  has LogPublishingOptions => (is => 'ro', isa => 'Paws::ES::LogPublishingOptions');
  has SnapshotOptions => (is => 'ro', isa => 'Paws::ES::SnapshotOptions');
  has VPCOptions => (is => 'ro', isa => 'Paws::ES::VPCOptions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateElasticsearchDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::CreateElasticsearchDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateElasticsearchDomain - Arguments for method CreateElasticsearchDomain on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateElasticsearchDomain on the 
Amazon Elasticsearch Service service. Use the attributes of this class
as arguments to method CreateElasticsearchDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateElasticsearchDomain.

As an example:

  $service_obj->CreateElasticsearchDomain(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AccessPolicies => Str

IAM access policy as a JSON-formatted string.



=head2 AdvancedOptions => L<Paws::ES::AdvancedOptions>

Option to allow references to indices in an HTTP request body. Must be
C<false> when configuring access to individual sub-resources. By
default, the value is C<true>. See Configuration Advanced Options for
more information.



=head2 B<REQUIRED> DomainName => Str

The name of the Elasticsearch domain that you are creating. Domain
names are unique across the domains owned by an account within an AWS
region. Domain names must start with a letter or number and can contain
the following characters: a-z (lowercase), 0-9, and - (hyphen).



=head2 EBSOptions => L<Paws::ES::EBSOptions>

Options to enable, disable and specify the type and size of EBS storage
volumes.



=head2 ElasticsearchClusterConfig => L<Paws::ES::ElasticsearchClusterConfig>

Configuration options for an Elasticsearch domain. Specifies the
instance type and number of instances in the domain cluster.



=head2 ElasticsearchVersion => Str

String of format X.Y to specify version for the Elasticsearch domain
eg. "1.5" or "2.3". For more information, see Creating Elasticsearch
Domains in the I<Amazon Elasticsearch Service Developer Guide>.



=head2 LogPublishingOptions => L<Paws::ES::LogPublishingOptions>

Map of C<LogType> and C<LogPublishingOption>, each containing options
to publish a given type of Elasticsearch log.



=head2 SnapshotOptions => L<Paws::ES::SnapshotOptions>

Option to set time, in UTC format, of the daily automated snapshot.
Default value is 0 hours.



=head2 VPCOptions => L<Paws::ES::VPCOptions>

Options to specify the subnets and security groups for VPC endpoint.
For more information, see Creating a VPC in I<VPC Endpoints for Amazon
Elasticsearch Service Domains>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateElasticsearchDomain in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

