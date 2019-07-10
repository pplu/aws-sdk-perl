
package Paws::EC2::DeleteTrafficMirrorFilterResult;
  use Moose;
  has TrafficMirrorFilterId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorFilterId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorFilterResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterId => Str

The ID of the Traffic Mirror filter.


=head2 _request_id => Str


=cut

