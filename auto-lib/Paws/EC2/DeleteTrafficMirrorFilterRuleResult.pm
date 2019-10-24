
package Paws::EC2::DeleteTrafficMirrorFilterRuleResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has TrafficMirrorFilterRuleId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrafficMirrorFilterRuleId' => {
                                                'type' => 'Str'
                                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TrafficMirrorFilterRuleId' => 'trafficMirrorFilterRuleId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteTrafficMirrorFilterRuleResult

=head1 ATTRIBUTES


=head2 TrafficMirrorFilterRuleId => Str

The ID of the deleted Traffic Mirror rule.


=head2 _request_id => Str


=cut

