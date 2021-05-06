
package Paws::Config::DescribeConformancePackComplianceResponse;
  use Moose;
  has ConformancePackName => (is => 'ro', isa => 'Str', required => 1);
  has ConformancePackRuleComplianceList => (is => 'ro', isa => 'ArrayRef[Paws::Config::ConformancePackRuleCompliance]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::DescribeConformancePackComplianceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConformancePackName => Str

Name of the conformance pack.


=head2 B<REQUIRED> ConformancePackRuleComplianceList => ArrayRef[L<Paws::Config::ConformancePackRuleCompliance>]

Returns a list of C<ConformancePackRuleCompliance> objects.


=head2 NextToken => Str

The C<nextToken> string returned in a previous request that you use to
request the next page of results in a paginated response.


=head2 _request_id => Str


=cut

1;