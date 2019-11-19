
package Paws::IoT::GetTopicRuleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_TopicRule/;
  has Rule => (is => 'ro', isa => IoT_TopicRule);
  has RuleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RuleArn' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Rule' => {
                           'type' => 'IoT_TopicRule',
                           'class' => 'Paws::IoT::TopicRule'
                         }
             },
  'NameInRequest' => {
                       'RuleArn' => 'ruleArn',
                       'Rule' => 'rule'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetTopicRuleResponse

=head1 ATTRIBUTES


=head2 Rule => IoT_TopicRule

The rule.


=head2 RuleArn => Str

The rule ARN.


=head2 _request_id => Str


=cut

