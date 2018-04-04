
package Paws::ACMPCA::GetCertificateAuthorityCsrResponse;
  use Moose;
  has Csr => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetCertificateAuthorityCsrResponse

=head1 ATTRIBUTES


=head2 Csr => Str

The base64 PEM-encoded certificate signing request (CSR) for your
private CA certificate.


=head2 _request_id => Str


=cut

1;