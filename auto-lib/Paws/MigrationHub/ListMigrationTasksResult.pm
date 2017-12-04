
package Paws::MigrationHub::ListMigrationTasksResult;
  use Moose;
  has MigrationTaskSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::MigrationTaskSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListMigrationTasksResult

=head1 ATTRIBUTES


=head2 MigrationTaskSummaryList => ArrayRef[L<Paws::MigrationHub::MigrationTaskSummary>]

Lists the migration task's summary which includes:
C<MigrationTaskName>, C<ProgressPercent>, C<ProgressUpdateStream>,
C<Status>, and the C<UpdateDateTime> for each task.


=head2 NextToken => Str

If there are more migration tasks than the max result, return the next
token to be passed to the next call as a bookmark of where to start
from.


=head2 _request_id => Str


=cut

1;