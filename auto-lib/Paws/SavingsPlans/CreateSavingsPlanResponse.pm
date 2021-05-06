
package Paws::SavingsPlans::CreateSavingsPlanResponse;
  use Moose;
  has SavingsPlanId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'savingsPlanId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::CreateSavingsPlanResponse

=head1 ATTRIBUTES


=head2 SavingsPlanId => Str

The ID of the Savings Plan.


=head2 _request_id => Str


=cut

