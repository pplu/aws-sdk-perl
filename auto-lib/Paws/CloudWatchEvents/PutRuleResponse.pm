
package Paws::CloudWatchEvents::PutRuleResponse;
  use Moose;
  has RuleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutRuleResponse

=head1 ATTRIBUTES


=head2 RuleArn => Str

The Amazon Resource Name (ARN) that identifies the rule.


=head2 _request_id => Str


=cut

1;