
package Paws::EC2::ModifyTrafficMirrorSessionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorSession/;
  has TrafficMirrorSession => (is => 'ro', isa => EC2_TrafficMirrorSession);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TrafficMirrorSession' => 'trafficMirrorSession'
                     },
  'types' => {
               'TrafficMirrorSession' => {
                                           'type' => 'EC2_TrafficMirrorSession',
                                           'class' => 'Paws::EC2::TrafficMirrorSession'
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

Paws::EC2::ModifyTrafficMirrorSessionResult

=head1 ATTRIBUTES


=head2 TrafficMirrorSession => EC2_TrafficMirrorSession

Information about the Traffic Mirror session.


=head2 _request_id => Str


=cut

