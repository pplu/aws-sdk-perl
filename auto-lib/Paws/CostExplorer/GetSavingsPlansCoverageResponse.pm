# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetSavingsPlansCoverageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_SavingsPlansCoverage/;
  has NextToken => (is => 'ro', isa => Str);
  has SavingsPlansCoverages => (is => 'ro', isa => ArrayRef[CostExplorer_SavingsPlansCoverage], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SavingsPlansCoverages' => {
                                            'type' => 'ArrayRef[CostExplorer_SavingsPlansCoverage]',
                                            'class' => 'Paws::CostExplorer::SavingsPlansCoverage'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'SavingsPlansCoverages' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansCoverageResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 B<REQUIRED> SavingsPlansCoverages => ArrayRef[CostExplorer_SavingsPlansCoverage]

The amount of spend that your Savings Plans covered.


=head2 _request_id => Str


=cut

1;