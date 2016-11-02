
package Paws::ApiGateway::DomainName;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str');
  has CertificateUploadDate => (is => 'ro', isa => 'Str');
  has DistributionDomainName => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainName

=head1 ATTRIBUTES


=head2 CertificateName => Str

The name of the certificate.


=head2 CertificateUploadDate => Str

The date when the certificate was uploaded, in ISO 8601 format.


=head2 DistributionDomainName => Str

The domain name of the Amazon CloudFront distribution. For more
information, see the Amazon CloudFront documentation.


=head2 DomainName => Str

The name of the DomainName resource.


=head2 _request_id => Str


=cut

