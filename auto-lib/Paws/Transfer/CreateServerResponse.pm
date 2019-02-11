
package Paws::Transfer::CreateServerResponse;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateServerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The service-assigned ID of the SFTP server that is created.


=head2 _request_id => Str


=cut

1;