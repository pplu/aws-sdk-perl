
package Paws::EC2::CreateTrafficMirrorFilterRuleResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_TrafficMirrorFilterRule/;
  has ClientToken => (is => 'ro', isa => Str);
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
                                },
               'ClientToken' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'TrafficMirrorFilterRule' => 'trafficMirrorFilterRule',
                       'ClientToken' => 'clientToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTrafficMirrorFilterRuleResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 TrafficMirrorFilterRule => EC2_TrafficMirrorFilterRule

The Traffic Mirror rule.


=head2 _request_id => Str


=cut

