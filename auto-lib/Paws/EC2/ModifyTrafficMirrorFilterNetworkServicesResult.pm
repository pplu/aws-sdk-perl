
package Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorFilter/;
  has TrafficMirrorFilter => (is => 'ro', isa => EC2_TrafficMirrorFilter);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'TrafficMirrorFilter' => 'trafficMirrorFilter'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficMirrorFilter' => {
                                          'type' => 'EC2_TrafficMirrorFilter',
                                          'class' => 'Paws::EC2::TrafficMirrorFilter'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilter => EC2_TrafficMirrorFilter

The Traffic Mirror filter that the network service is associated with.


=head2 _request_id => Str


=cut

