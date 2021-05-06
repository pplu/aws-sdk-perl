
package Paws::EC2::DeleteTrafficMirrorTargetResult;
  use Moose;
  has TrafficMirrorTargetId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorTargetId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorTargetResult

=head1 ATTRIBUTES


=head2 TrafficMirrorTargetId => Str

The ID of the deleted Traffic Mirror target.


=head2 _request_id => Str


=cut

