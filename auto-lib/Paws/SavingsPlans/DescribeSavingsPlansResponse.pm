
package Paws::SavingsPlans::DescribeSavingsPlansResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SavingsPlans => (is => 'ro', isa => 'ArrayRef[Paws::SavingsPlans::SavingsPlan]', traits => ['NameInRequest'], request_name => 'savingsPlans');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SavingsPlans => ArrayRef[L<Paws::SavingsPlans::SavingsPlan>]

Information about the Savings Plans.


=head2 _request_id => Str


=cut

