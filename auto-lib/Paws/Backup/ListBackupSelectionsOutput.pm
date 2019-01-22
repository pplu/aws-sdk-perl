
package Paws::Backup::ListBackupSelectionsOutput;
  use Moose;
  has BackupSelectionsList => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupSelectionsListMember]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupSelectionsOutput

=head1 ATTRIBUTES


=head2 BackupSelectionsList => ArrayRef[L<Paws::Backup::BackupSelectionsListMember>]

An array of backup selection list items containing metadata about each
resource in the list.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

