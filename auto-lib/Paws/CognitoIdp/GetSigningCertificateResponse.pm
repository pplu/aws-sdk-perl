
package Paws::CognitoIdp::GetSigningCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetSigningCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The signing certificate.


=head2 _request_id => Str


=cut

1;