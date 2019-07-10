
package Paws::EC2::DeleteTrafficMirrorSessionResult;
  use Moose;
  has TrafficMirrorSessionId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorSessionId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorSessionResult

=head1 ATTRIBUTES


=head2 TrafficMirrorSessionId => Str

The ID of the deleted Traffic Mirror session.


=head2 _request_id => Str


=cut

