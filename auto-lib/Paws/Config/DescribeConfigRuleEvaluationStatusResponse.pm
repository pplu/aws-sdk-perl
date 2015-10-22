
package Paws::Config::DescribeConfigRuleEvaluationStatusResponse;
  use Moose;
  has ConfigRulesEvaluationStatus => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConfigRuleEvaluationStatus]');


### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConfigRuleEvaluationStatusResponse

=head1 ATTRIBUTES

=head2 ConfigRulesEvaluationStatus => ArrayRef[L<Paws::Config::ConfigRuleEvaluationStatus>]

  Status information about your AWS managed Config rules.


=cut

1;