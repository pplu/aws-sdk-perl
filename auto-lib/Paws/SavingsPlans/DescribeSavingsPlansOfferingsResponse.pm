
package Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SearchResults => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlanOffering]', traits => ['NameInRequest'], request_name => 'searchResults');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SearchResults => ArrayRef[L<Paws::SavingsPlans::SavingsPlanOffering>]

Information about the Savings Plans offerings.


=head2 _request_id => Str


=cut

