
package Paws::SavingsPlans::DescribeSavingsPlansOfferingRatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanOfferingRate/;
  has NextToken => (is => 'ro', isa => Str);
  has SearchResults => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanOfferingRate]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SearchResults' => 'searchResults',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SearchResults' => {
                                    'type' => 'ArrayRef[SavingsPlans_SavingsPlanOfferingRate]',
                                    'class' => 'Paws::SavingsPlans::SavingsPlanOfferingRate'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansOfferingRatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SearchResults => ArrayRef[SavingsPlans_SavingsPlanOfferingRate]

Information about the Savings Plans offering rates.


=head2 _request_id => Str


=cut

