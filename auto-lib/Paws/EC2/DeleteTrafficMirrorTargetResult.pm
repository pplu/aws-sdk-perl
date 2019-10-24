
package Paws::EC2::DeleteTrafficMirrorTargetResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has TrafficMirrorTargetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficMirrorTargetId' => {
                                            'type' => 'Str'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TrafficMirrorTargetId' => 'trafficMirrorTargetId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorTargetResult

=head1 ATTRIBUTES


=head2 TrafficMirrorTargetId => Str

The ID of the deleted Traffic Mirror target.


=head2 _request_id => Str


=cut

