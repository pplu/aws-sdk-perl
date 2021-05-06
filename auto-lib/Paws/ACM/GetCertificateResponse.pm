
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

String that contains the ACM certificate represented by the ARN
specified at input.


=head2 CertificateChain => Str

The certificate chain that contains the root certificate issued by the
certificate authority (CA).


=head2 _request_id => Str


=cut

1;