
package Paws::Backup::ListRecoveryPointsByBackupVaultOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RecoveryPoints => (is => 'ro', isa => 'ArrayRef[Paws::Backup::RecoveryPointByBackupVault]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRecoveryPointsByBackupVaultOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 RecoveryPoints => ArrayRef[L<Paws::Backup::RecoveryPointByBackupVault>]

An array of objects that contain detailed information about recovery
points saved in a backup vault.


=head2 _request_id => Str


=cut

