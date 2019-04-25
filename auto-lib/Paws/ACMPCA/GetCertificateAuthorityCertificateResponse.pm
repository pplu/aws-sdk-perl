
package Paws::ACMPCA::GetCertificateAuthorityCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has CertificateChain => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetCertificateAuthorityCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

Base64-encoded certificate authority (CA) certificate.


=head2 CertificateChain => Str

Base64-encoded certificate chain that includes any intermediate
certificates and chains up to root on-premises certificate that you
used to sign your private CA certificate. The chain does not include
your private CA certificate.


=head2 _request_id => Str


=cut

1;