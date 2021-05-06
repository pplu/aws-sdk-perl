
package Paws::DMS::DeleteCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::DMS::Certificate');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::DMS::Certificate>

The Secure Sockets Layer (SSL) certificate.


=head2 _request_id => Str


=cut

1;