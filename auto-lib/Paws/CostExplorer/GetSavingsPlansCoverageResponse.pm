
package Paws::CostExplorer::GetSavingsPlansCoverageResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SavingsPlansCoverages => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SavingsPlansCoverage]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansCoverageResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 B<REQUIRED> SavingsPlansCoverages => ArrayRef[L<Paws::CostExplorer::SavingsPlansCoverage>]

The amount of spend that your Savings Plans covered.


=head2 _request_id => Str


=cut

1;