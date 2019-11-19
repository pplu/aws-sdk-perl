
package Paws::EC2::DeleteTrafficMirrorSessionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has TrafficMirrorSessionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TrafficMirrorSessionId' => 'trafficMirrorSessionId'
                     },
  'types' => {
               'TrafficMirrorSessionId' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorSessionResult

=head1 ATTRIBUTES


=head2 TrafficMirrorSessionId => Str

The ID of the deleted Traffic Mirror session.


=head2 _request_id => Str


=cut

