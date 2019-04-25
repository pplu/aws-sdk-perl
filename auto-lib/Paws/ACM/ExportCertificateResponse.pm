
package Paws::ACM::ExportCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has CertificateChain => (is => 'ro', isa => 'Str');
  has PrivateKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ExportCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The base64 PEM-encoded certificate.


=head2 CertificateChain => Str

The base64 PEM-encoded certificate chain. This does not include the
certificate that you are exporting.


=head2 PrivateKey => Str

The PEM-encoded private key associated with the public key in the
certificate.


=head2 _request_id => Str


=cut

1;