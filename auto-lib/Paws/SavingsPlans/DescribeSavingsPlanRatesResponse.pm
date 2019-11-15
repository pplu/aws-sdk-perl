
package Paws::SavingsPlans::DescribeSavingsPlanRatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SavingsPlanId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsPlanId');
  has SearchResults => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlanRate]', traits => ['NameInRequest'], request_name => 'searchResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlanRatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SavingsPlanId => Str

The ID of the Savings Plan.


=head2 SearchResults => ArrayRef[L<Paws::SavingsPlans::SavingsPlanRate>]

Information about the Savings Plans rates.


=head2 _request_id => Str


=cut

