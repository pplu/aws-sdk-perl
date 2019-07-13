
package Paws::EC2::ModifyTrafficMirrorFilterRuleResult;
  use Moose;
  has TrafficMirrorFilterRule => (is => 'ro', isa => 'Paws::EC2::TrafficMirrorFilterRule', request_name => 'trafficMirrorFilterRule', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterRuleResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterRule => L<Paws::EC2::TrafficMirrorFilterRule>

Modifies a Traffic Mirror rule.


=head2 _request_id => Str


=cut

