
package Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SavingsPlansUtilizationDetails => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SavingsPlansUtilizationDetail]', required => 1);
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansUtilizationAggregates');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 B<REQUIRED> SavingsPlansUtilizationDetails => ArrayRef[L<Paws::CostExplorer::SavingsPlansUtilizationDetail>]

Retrieves a single daily or monthly Savings Plans utilization rate and
details for your account.


=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>




=head2 Total => L<Paws::CostExplorer::SavingsPlansUtilizationAggregates>

The total Savings Plans utilization, regardless of time period.


=head2 _request_id => Str


=cut

1;