
package Paws::MigrationHub::ListProgressUpdateStreamsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProgressUpdateStreamSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHub::ProgressUpdateStreamSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListProgressUpdateStreamsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more streams created than the max result, return the next
token to be passed to the next call as a bookmark of where to start
from.


=head2 ProgressUpdateStreamSummaryList => ArrayRef[L<Paws::MigrationHub::ProgressUpdateStreamSummary>]

List of progress update streams up to the max number of results passed
in the input.


=head2 _request_id => Str


=cut

1;