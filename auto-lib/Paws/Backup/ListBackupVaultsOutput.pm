
package Paws::Backup::ListBackupVaultsOutput;
  use Moose;
  has BackupVaultList => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupVaultListMember]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupVaultsOutput

=head1 ATTRIBUTES


=head2 BackupVaultList => ArrayRef[L<Paws::Backup::BackupVaultListMember>]

An array of backup vault list members containing vault metadata,
including Amazon Resource Name (ARN), display name, creation date,
number of saved recovery points, and encryption information if the
resources saved in the backup vault are encrypted.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

