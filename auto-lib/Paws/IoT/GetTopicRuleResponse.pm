
package Paws::IoT::GetTopicRuleResponse;
  use Moose;
  has Rule => (is => 'ro', isa => 'Paws::IoT::TopicRule', traits => ['NameInRequest'], request_name => 'rule');
  has RuleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetTopicRuleResponse

=head1 ATTRIBUTES


=head2 Rule => L<Paws::IoT::TopicRule>

The rule.


=head2 RuleArn => Str

The rule ARN.


=head2 _request_id => Str


=cut

