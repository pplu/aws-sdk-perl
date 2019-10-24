# Generated from json/callresult_class.tt

package Paws::CloudTrail::PutEventSelectorsResponse;
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

Paws::CloudTrail::PutEventSelectorsResponse

=head1 ATTRIBUTES


=head2 EventSelectors => ArrayRef[CloudTrail_EventSelector]

Specifies the event selectors configured for your trail.


=head2 TrailARN => Str

Specifies the ARN of the trail that was updated with event selectors.
The format of a trail ARN is:

C<arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail>


=head2 _request_id => Str


=cut

1;