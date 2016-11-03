
package Paws::CloudWatchLogs::PutLogEventsResponse;
  use Moose;
  has NextSequenceToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextSequenceToken' );
  has RejectedLogEventsInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::RejectedLogEventsInfo', traits => ['NameInRequest'], request_name => 'rejectedLogEventsInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES


=head2 NextSequenceToken => Str





=head2 RejectedLogEventsInfo => L<Paws::CloudWatchLogs::RejectedLogEventsInfo>






=cut

1;