
package Paws::Backup::ListBackupPlansOutput;
  use Moose;
  has BackupPlansList => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupPlansListMember]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupPlansOutput

=head1 ATTRIBUTES


=head2 BackupPlansList => ArrayRef[L<Paws::Backup::BackupPlansListMember>]

An array of backup plan list items containing metadata about your saved
backup plans.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

