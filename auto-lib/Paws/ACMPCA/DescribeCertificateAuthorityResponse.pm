
package Paws::ACMPCA::DescribeCertificateAuthorityResponse;
  use Moose;
  has CertificateAuthority => (is => 'ro', isa => 'Paws::ACMPCA::CertificateAuthority');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DescribeCertificateAuthorityResponse

=head1 ATTRIBUTES


=head2 CertificateAuthority => L<Paws::ACMPCA::CertificateAuthority>

A CertificateAuthority structure that contains information about your
private CA.


=head2 _request_id => Str


=cut

1;