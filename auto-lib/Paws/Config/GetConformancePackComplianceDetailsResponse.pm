
package Paws::Config::GetConformancePackComplianceDetailsResponse;
  use Moose;
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackRuleEvaluationResults => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackEvaluationResult]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetConformancePackComplianceDetailsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.


=head2 ConformancePackRuleEvaluationResults => ArrayRef[L<Paws::Config::ConformancePackEvaluationResult>]

Returns a list of C<ConformancePackEvaluationResult> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;