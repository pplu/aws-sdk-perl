
package Paws::EC2::ModifyTrafficMirrorSessionResult;
  use Moose;
  has TrafficMirrorSession => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorSession', request_name => 'trafficMirrorSession', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorSessionResult

=head1 ATTRIBUTES


=head2 TrafficMirrorSession => L<Paws::EC2::TrafficMirrorSession>

Information about the Traffic Mirror session.


=head2 _request_id => Str


=cut

