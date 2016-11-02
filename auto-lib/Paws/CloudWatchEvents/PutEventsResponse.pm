
package Paws::CloudWatchEvents::PutEventsResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PutEventsResultEntry]');
  has FailedEntryCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEventsResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[L<Paws::CloudWatchEvents::PutEventsResultEntry>]

A list of successfully and unsuccessfully ingested events results. If
the ingestion was successful, the entry will have the event ID in it.
If not, then the ErrorCode and ErrorMessage can be used to identify the
problem with the entry.


=head2 FailedEntryCount => Int

The number of failed entries.


=head2 _request_id => Str


=cut

1;