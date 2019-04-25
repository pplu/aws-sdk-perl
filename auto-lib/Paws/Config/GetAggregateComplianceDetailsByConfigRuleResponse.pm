
package Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse;
  use Moose;
  has AggregateEvaluationResults => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateEvaluationResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateComplianceDetailsByConfigRuleResponse

=head1 ATTRIBUTES


=head2 AggregateEvaluationResults => ArrayRef[L<Paws::Config::AggregateEvaluationResult>]

Returns an AggregateEvaluationResults object.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;