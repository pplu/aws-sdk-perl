
package Paws::Transfer::ImportSshPublicKeyResponse;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has SshPublicKeyId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ImportSshPublicKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for an SFTP server.


=head2 B<REQUIRED> SshPublicKeyId => Str

This identifier is the name given to a public key by the system that
was imported.


=head2 B<REQUIRED> UserName => Str

A user name assigned to the C<ServerID> value that you specified.


=head2 _request_id => Str


=cut

1;