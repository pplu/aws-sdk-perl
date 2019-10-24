# Generated from json/callresult_class.tt

package Paws::Personalize::DescribeEventTrackerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw/Personalize_EventTracker/;
  has EventTracker => (is => 'ro', isa => Personalize_EventTracker);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventTracker' => {
                                   'class' => 'Paws::Personalize::EventTracker',
                                   'type' => 'Personalize_EventTracker'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EventTracker' => 'eventTracker'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeEventTrackerResponse

=head1 ATTRIBUTES


=head2 EventTracker => Personalize_EventTracker

An object that describes the event tracker.


=head2 _request_id => Str


=cut

1;