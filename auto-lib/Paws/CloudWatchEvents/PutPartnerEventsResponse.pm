
package Paws::CloudWatchEvents::PutPartnerEventsResponse;
  use Moose;
  has Entries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchEvents::PutPartnerEventsResultEntry]');
  has FailedEntryCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutPartnerEventsResponse

=head1 ATTRIBUTES


=head2 Entries => ArrayRef[L<Paws::CloudWatchEvents::PutPartnerEventsResultEntry>]

The list of events from this operation that were successfully written
to the partner event bus.


=head2 FailedEntryCount => Int

The number of events from this operation that couldn't be written to
the partner event bus.


=head2 _request_id => Str


=cut

1;