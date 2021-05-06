
package Paws::FSX::DeleteBackupResponse;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteBackupResponse

=head1 ATTRIBUTES


=head2 BackupId => Str

The ID of the backup deleted.


=head2 Lifecycle => Str

The lifecycle of the backup. Should be C<DELETED>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"DELETED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;