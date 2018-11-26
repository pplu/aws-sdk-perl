
package Paws::Transfer::CreateUserResponse;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateUserResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The ID of the SFTP server that the user is attached to.


=head2 B<REQUIRED> UserName => Str

A unique string that identifies a user account associated with an SFTP
server.


=head2 _request_id => Str


=cut

1;