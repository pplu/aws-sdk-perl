
package Paws::EC2::DeleteTrafficMirrorFilterRuleResult;
  use Moose;
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => 'Str', request_name => 'trafficMirrorFilterRuleId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorFilterRuleResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterRuleId => Str

The ID of the deleted Traffic Mirror rule.


=head2 _request_id => Str


=cut

