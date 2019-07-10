
package Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult;
  use Moose;
  has TrafficMirrorFilter => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorFilter', request_name => 'trafficMirrorFilter', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterNetworkServicesResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilter => L<Paws::EC2::TrafficMirrorFilter>

The Traffic Mirror filter that the network service is associated with.


=head2 _request_id => Str


=cut

