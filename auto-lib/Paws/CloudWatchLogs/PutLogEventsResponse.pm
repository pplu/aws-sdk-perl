
package Paws::CloudWatchLogs::PutLogEventsResponse;
  use Moose;
  has NextSequenceToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextSequenceToken' );
  has RejectedLogEventsInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::RejectedLogEventsInfo', traits => ['Unwrapped'], xmlname => 'rejectedLogEventsInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES


=head2 NextSequenceToken => Str





=head2 RejectedLogEventsInfo => L<Paws::CloudWatchLogs::RejectedLogEventsInfo>






=cut

1;