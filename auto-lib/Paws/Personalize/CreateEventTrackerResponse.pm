
package Paws::Personalize::CreateEventTrackerResponse;
  use Moose;
  has EventTrackerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTrackerArn' );
  has TrackingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackingId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateEventTrackerResponse

=head1 ATTRIBUTES


=head2 EventTrackerArn => Str

The ARN of the event tracker.


=head2 TrackingId => Str

The ID of the event tracker. Include this ID in requests to the
PutEvents
(https://docs.aws.amazon.com/personalize/latest/dg/API_UBS_PutEvents.html)
API.


=head2 _request_id => Str


=cut

1;