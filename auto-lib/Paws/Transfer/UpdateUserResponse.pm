
package Paws::Transfer::UpdateUserResponse;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server instance that
the user account is assigned to.


=head2 B<REQUIRED> UserName => Str

The unique identifier for a user that is assigned to the SFTP server
instance that was specified in the request.


=head2 _request_id => Str


=cut

1;