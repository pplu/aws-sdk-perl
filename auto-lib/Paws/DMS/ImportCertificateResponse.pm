
package Paws::DMS::ImportCertificateResponse;
  use Moose;
  has Certificate => (is => 'ro', isa => 'Paws::DMS::Certificate');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ImportCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => L<Paws::DMS::Certificate>

The certificate to be uploaded.


=head2 _request_id => Str


=cut

1;