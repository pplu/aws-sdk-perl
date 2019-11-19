# Generated from json/callresult_class.tt

package Paws::CloudTrail::GetEventSelectorsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_EventSelector/;
  has EventSelectors => (is => 'ro', isa => ArrayRef[CloudTrail_EventSelector]);
  has TrailARN => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrailARN' => {
                               'type' => 'Str'
                             },
               'EventSelectors' => {
                                     'class' => 'Paws::CloudTrail::EventSelector',
                                     'type' => 'ArrayRef[CloudTrail_EventSelector]'
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

Paws::CloudTrail::GetEventSelectorsResponse

=head1 ATTRIBUTES


=head2 EventSelectors => ArrayRef[CloudTrail_EventSelector]

The event selectors that are configured for the trail.


=head2 TrailARN => Str

The specified trail ARN that has the event selectors.


=head2 _request_id => Str


=cut

1;