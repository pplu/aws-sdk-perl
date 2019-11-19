
package Paws::EC2::DeleteTrafficMirrorFilterResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has TrafficMirrorFilterId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TrafficMirrorFilterId' => 'trafficMirrorFilterId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorFilterId' => {
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

Paws::EC2::DeleteTrafficMirrorFilterResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.


=head2 _request_id => Str


=cut

