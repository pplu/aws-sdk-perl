
package Paws::Config::GetComplianceDetailsByConfigRuleResponse;
  use Moose;
  has EvaluationResults => (is => 'ro', isa => 'ArrayRef[Paws::Config::EvaluationResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceDetailsByConfigRuleResponse

=head1 ATTRIBUTES


=head2 EvaluationResults => ArrayRef[L<Paws::Config::EvaluationResult>]

Indicates whether the AWS resource complies with the specified AWS
Config rule.


=head2 NextToken => Str

The string that you use in a subsequent request to get the next page of
results in a paginated response.


=head2 _request_id => Str


=cut

1;