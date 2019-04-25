
package Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse;
  use Moose;
  has AggregateComplianceCounts => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateComplianceCount]');
  has GroupByKey => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateConfigRuleComplianceSummaryResponse

=head1 ATTRIBUTES


=head2 AggregateComplianceCounts => ArrayRef[L<Paws::Config::AggregateComplianceCount>]

Returns a list of AggregateComplianceCounts object.


=head2 GroupByKey => Str

Groups the result based on ACCOUNT_ID or AWS_REGION.


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;