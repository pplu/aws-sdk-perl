# Generated from json/callresult_class.tt

package Paws::CloudTrail::DescribeTrailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudTrail::Types qw/CloudTrail_Trail/;
  has TrailList => (is => 'ro', isa => ArrayRef[CloudTrail_Trail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrailList' => {
                                'class' => 'Paws::CloudTrail::Trail',
                                'type' => 'ArrayRef[CloudTrail_Trail]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TrailList' => 'trailList'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeTrailsResponse

=head1 ATTRIBUTES


=head2 TrailList => ArrayRef[CloudTrail_Trail]

The list of trail objects.


=head2 _request_id => Str


=cut

1;