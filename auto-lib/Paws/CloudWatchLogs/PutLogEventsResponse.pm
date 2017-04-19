
package Paws::CloudWatchLogs::PutLogEventsResponse;
  use Moose;
  has NextSequenceToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextSequenceToken' );
  has RejectedLogEventsInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::RejectedLogEventsInfo', traits => ['NameInRequest'], request_name => 'rejectedLogEventsInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES


=head2 NextSequenceToken => Str

The next sequence token.


=head2 RejectedLogEventsInfo => L<Paws::CloudWatchLogs::RejectedLogEventsInfo>

The rejected events.


=head2 _request_id => Str


=cut

1;