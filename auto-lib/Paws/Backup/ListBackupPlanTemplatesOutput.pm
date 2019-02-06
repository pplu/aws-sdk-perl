
package Paws::Backup::ListBackupPlanTemplatesOutput;
  use Moose;
  has BackupPlanTemplatesList => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupPlanTemplatesListMember]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupPlanTemplatesOutput

=head1 ATTRIBUTES


=head2 BackupPlanTemplatesList => ArrayRef[L<Paws::Backup::BackupPlanTemplatesListMember>]

An array of template list items containing metadata about your saved
templates.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

