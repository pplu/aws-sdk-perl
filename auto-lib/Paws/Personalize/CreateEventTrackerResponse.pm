# Generated from json/callresult_class.tt

package Paws::Personalize::CreateEventTrackerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has EventTrackerArn => (is => 'ro', isa => Str);
  has TrackingId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'EventTrackerArn' => 'eventTrackerArn',
                       'TrackingId' => 'trackingId'
                     },
  'types' => {
               'TrackingId' => {
                                 'type' => 'Str'
                               },
               'EventTrackerArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


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