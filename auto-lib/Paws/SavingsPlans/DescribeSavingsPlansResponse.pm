
package Paws::SavingsPlans::DescribeSavingsPlansResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlan/;
  has NextToken => (is => 'ro', isa => Str);
  has SavingsPlans => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlan]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SavingsPlans' => 'savingsPlans',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'SavingsPlans' => {
                                   'class' => 'Paws::SavingsPlans::SavingsPlan',
                                   'type' => 'ArrayRef[SavingsPlans_SavingsPlan]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
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

Paws::SavingsPlans::DescribeSavingsPlansResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SavingsPlans => ArrayRef[SavingsPlans_SavingsPlan]

Information about the Savings Plans.


=head2 _request_id => Str


=cut

