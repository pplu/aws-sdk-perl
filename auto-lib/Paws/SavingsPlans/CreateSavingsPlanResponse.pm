
package Paws::SavingsPlans::CreateSavingsPlanResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SavingsPlans::Types qw//;
  has SavingsPlanId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SavingsPlanId' => 'savingsPlanId'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SavingsPlanId' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::CreateSavingsPlanResponse

=head1 ATTRIBUTES


=head2 SavingsPlanId => Str

The ID of the Savings Plan.


=head2 _request_id => Str


=cut

