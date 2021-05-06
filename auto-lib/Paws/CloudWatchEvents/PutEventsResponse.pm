
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

The successfully and unsuccessfully ingested events results. If the
ingestion was successful, the entry has the event ID in it. Otherwise,
you can use the error code and error message to identify the problem
with the entry.


=head2 FailedEntryCount => Int

The number of failed entries.


=head2 _request_id => Str


=cut

1;