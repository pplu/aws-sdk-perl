
package Paws::CostExplorer::GetSavingsPlansUtilizationResponse;
  use Moose;
  has SavingsPlansUtilizationsByTime => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SavingsPlansUtilizationByTime]');
  has Total => (is => 'ro', isa => 'Paws::CostExplorer::SavingsPlansUtilizationAggregates', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilizationResponse

=head1 ATTRIBUTES


=head2 SavingsPlansUtilizationsByTime => ArrayRef[L<Paws::CostExplorer::SavingsPlansUtilizationByTime>]

The amount of cost/commitment you used your Savings Plans. This allows
you to specify date ranges.


=head2 B<REQUIRED> Total => L<Paws::CostExplorer::SavingsPlansUtilizationAggregates>

The total amount of cost/commitment that you used your Savings Plans,
regardless of date ranges.


=head2 _request_id => Str


=cut

1;