
package Paws::ApiGateway::DomainName;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn');
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName');
  has CertificateUploadDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateUploadDate');
  has DistributionDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionDomainName');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainName

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The reference to an AWS-managed certificate. AWS Certificate Manager is
the only supported source.


=head2 CertificateName => Str

The name of the certificate.


=head2 CertificateUploadDate => Str

The timestamp when the certificate was uploaded.


=head2 DistributionDomainName => Str

The domain name of the Amazon CloudFront distribution. For more
information, see the Amazon CloudFront documentation
(http://aws.amazon.com/documentation/cloudfront/).


=head2 DomainName => Str

The name of the DomainName resource.


=head2 _request_id => Str


=cut

