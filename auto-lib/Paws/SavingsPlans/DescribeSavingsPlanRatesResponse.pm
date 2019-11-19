
package Paws::SavingsPlans::DescribeSavingsPlanRatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanRate/;
  has NextToken => (is => 'ro', isa => Str);
  has SavingsPlanId => (is => 'ro', isa => Str);
  has SearchResults => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanRate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SearchResults' => 'searchResults',
                       'SavingsPlanId' => 'savingsPlanId',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SavingsPlanId' => {
                                    'type' => 'Str'
                                  },
               'SearchResults' => {
                                    'type' => 'ArrayRef[SavingsPlans_SavingsPlanRate]',
                                    'class' => 'Paws::SavingsPlans::SavingsPlanRate'
                                  },
               'NextToken' => {
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

Paws::SavingsPlans::DescribeSavingsPlanRatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SavingsPlanId => Str

The ID of the Savings Plan.


=head2 SearchResults => ArrayRef[SavingsPlans_SavingsPlanRate]

Information about the Savings Plans rates.


=head2 _request_id => Str


=cut

