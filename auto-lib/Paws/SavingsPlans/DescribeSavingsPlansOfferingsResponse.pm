
package Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SavingsPlans::Types qw/SavingsPlans_SavingsPlanOffering/;
  has NextToken => (is => 'ro', isa => Str);
  has SearchResults => (is => 'ro', isa => ArrayRef[SavingsPlans_SavingsPlanOffering]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SearchResults' => {
                                    'type' => 'ArrayRef[SavingsPlans_SavingsPlanOffering]',
                                    'class' => 'Paws::SavingsPlans::SavingsPlanOffering'
                                  }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SearchResults' => 'searchResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SavingsPlans::DescribeSavingsPlansOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
null when there are no more results to return.


=head2 SearchResults => ArrayRef[SavingsPlans_SavingsPlanOffering]

Information about the Savings Plans offerings.


=head2 _request_id => Str


=cut

