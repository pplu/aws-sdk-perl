
package Paws::ACM::GetCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');
  has CertificateChain => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ACM::GetCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The ACM-issued certificate corresponding to the ARN specified as input.


=head2 CertificateChain => Str

Certificates forming the requested certificate's chain of trust. The
chain consists of the certificate of the issuing CA and the
intermediate certificates of any other subordinate CAs.


=head2 _request_id => Str


=cut

1;