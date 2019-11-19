# Generated from json/callresult_class.tt

package Paws::Personalize::ListEventTrackersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_EventTrackerSummary/;
  has EventTrackers => (is => 'ro', isa => ArrayRef[Personalize_EventTrackerSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventTrackers' => {
                                    'class' => 'Paws::Personalize::EventTrackerSummary',
                                    'type' => 'ArrayRef[Personalize_EventTrackerSummary]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'EventTrackers' => 'eventTrackers'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListEventTrackersResponse

=head1 ATTRIBUTES


=head2 EventTrackers => ArrayRef[Personalize_EventTrackerSummary]

A list of event trackers.


=head2 NextToken => Str

A token for getting the next set of event trackers (if they exist).


=head2 _request_id => Str


=cut

1;