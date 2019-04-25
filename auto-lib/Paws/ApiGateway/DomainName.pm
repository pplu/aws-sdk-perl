
package Paws::ApiGateway::DomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificateUploadDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateUploadDate');
  has DistributionDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionDomainName');
  has DistributionHostedZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionHostedZoneId');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has EndpointConfiguration => (is => 'ro', isa => 'Paws::ApiGateway::EndpointConfiguration', traits => ['NameInRequest'], request_name => 'endpointConfiguration');
  has RegionalCertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateArn');
  has RegionalCertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalCertificateName');
  has RegionalDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalDomainName');
  has RegionalHostedZoneId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'regionalHostedZoneId');

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
distributions, see the Amazon CloudFront documentation
(https://aws.amazon.com/documentation/cloudfront/).


=head2 DistributionHostedZoneId => Str

The region-agnostic Amazon Route 53 Hosted Zone ID of the
edge-optimized endpoint. The valid value is C<Z2FDTNDATAQYW2> for all
the regions. For more information, see Set up a Regional Custom Domain
Name
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html)
and AWS Regions and Endpoints for API Gateway
(https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region).


=head2 DomainName => Str

The custom domain name as an API host name, for example,
C<my-api.example.com>.


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
regional domain name is returned by API Gateway when you create a
regional endpoint.


=head2 RegionalHostedZoneId => Str

The region-specific Amazon Route 53 Hosted Zone ID of the regional
endpoint. For more information, see Set up a Regional Custom Domain
Name
(https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-regional-api-custom-domain-create.html)
and AWS Regions and Endpoints for API Gateway
(https://docs.aws.amazon.com/general/latest/gr/rande.html#apigateway_region).


=head2 _request_id => Str


=cut

