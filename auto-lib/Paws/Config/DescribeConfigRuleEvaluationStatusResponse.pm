
package Paws::Config::DescribeConfigRuleEvaluationStatusResponse;
  use Moose;
  has ConfigRulesEvaluationStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigRuleEvaluationStatus]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRuleEvaluationStatusResponse

=head1 ATTRIBUTES


=head2 ConfigRulesEvaluationStatus => ArrayRef[L<Paws::Config::ConfigRuleEvaluationStatus>]

Status information about your AWS managed Config rules.


=head2 _request_id => Str


=cut

1;