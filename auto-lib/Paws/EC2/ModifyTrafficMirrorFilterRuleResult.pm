
package Paws::EC2::ModifyTrafficMirrorFilterRuleResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorFilterRule/;
  has TrafficMirrorFilterRule => (is => 'ro', isa => EC2_TrafficMirrorFilterRule);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficMirrorFilterRule' => {
                                              'class' => 'Paws::EC2::TrafficMirrorFilterRule',
                                              'type' => 'EC2_TrafficMirrorFilterRule'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TrafficMirrorFilterRule' => 'trafficMirrorFilterRule'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyTrafficMirrorFilterRuleResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterRule => EC2_TrafficMirrorFilterRule

Modifies a Traffic Mirror rule.


=head2 _request_id => Str


=cut

