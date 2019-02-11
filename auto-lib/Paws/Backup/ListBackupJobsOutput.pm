
package Paws::Backup::ListBackupJobsOutput;
  use Moose;
  has BackupJobs => (is => 'ro', isa => 'ArrayRef[Paws::Backup::BackupJob]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListBackupJobsOutput

=head1 ATTRIBUTES


=head2 BackupJobs => ArrayRef[L<Paws::Backup::BackupJob>]

An array of structures containing metadata about your backup jobs
returned in JSON format.


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 _request_id => Str


=cut

