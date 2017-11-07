
package Paws::ApiGateway::DomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificateUploadDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateUploadDate');
  has DistributionDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionDomainName');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has RegionalCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateArn');
  has RegionalCertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateName');
  has RegionalDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalDomainName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainName

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an AWS-managed certificate that will be used by
edge-optimized endpoint for this domain name. AWS Certificate Manager
is the only supported source.


=head2 CertificateName => Str

The name of the certificate that will be used by edge-optimized
endpoint for this domain name.


=head2 CertificateUploadDate => Str

The timestamp when the certificate that was used by edge-optimized
endpoint for this domain name was uploaded.


=head2 DistributionDomainName => Str

The domain name of the Amazon CloudFront distribution associated with
this custom domain name for an edge-optimized endpoint. You set up this
association when adding a DNS record pointing the custom domain name to
this distribution name. For more information about CloudFront
distributions, see the Amazon CloudFront documentation.


=head2 DomainName => Str

The name of the DomainName resource.


=head2 EndpointConfiguration => L<Paws::ApiGateway::EndpointConfiguration>

The endpoint configuration of this DomainName showing the endpoint
types of the domain name.


=head2 RegionalCertificateArn => Str

The reference to an AWS-managed certificate that will be used for
validating the regional domain name. AWS Certificate Manager is the
only supported source.


=head2 RegionalCertificateName => Str

The name of the certificate that will be used for validating the
regional domain name.


=head2 RegionalDomainName => Str

The domain name associated with the regional endpoint for this custom
domain name. You set up this association by adding a DNS record that
points the custom domain name to this regional domain name. The
regional domain name is returned by Amazon API Gateway when you create
a regional endpoint.


=head2 _request_id => Str


=cut

