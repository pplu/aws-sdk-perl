
package Paws::Config::GetAggregateConformancePackComplianceSummaryResponse;
  use Moose;
  has AggregateConformancePackComplianceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Config::AggregateConformancePackComplianceSummary]');
  has GroupByKey => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateConformancePackComplianceSummaryResponse

=head1 ATTRIBUTES


=head2 AggregateConformancePackComplianceSummaries => ArrayRef[L<Paws::Config::AggregateConformancePackComplianceSummary>]

Returns a list of C<AggregateConformancePackComplianceSummary> object.


=head2 GroupByKey => Str

Groups the result based on AWS Account ID or AWS Region.


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;