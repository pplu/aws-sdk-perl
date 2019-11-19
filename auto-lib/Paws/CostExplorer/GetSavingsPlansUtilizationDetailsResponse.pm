# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_DateInterval CostExplorer_SavingsPlansUtilizationAggregates CostExplorer_SavingsPlansUtilizationDetail/;
  has NextToken => (is => 'ro', isa => Str);
  has SavingsPlansUtilizationDetails => (is => 'ro', isa => ArrayRef[CostExplorer_SavingsPlansUtilizationDetail], required => 1);
  has TimePeriod => (is => 'ro', isa => CostExplorer_DateInterval, required => 1);
  has Total => (is => 'ro', isa => CostExplorer_SavingsPlansUtilizationAggregates);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SavingsPlansUtilizationDetails' => 1,
                    'TimePeriod' => 1
                  },
  'types' => {
               'TimePeriod' => {
                                 'type' => 'CostExplorer_DateInterval',
                                 'class' => 'Paws::CostExplorer::DateInterval'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Total' => {
                            'type' => 'CostExplorer_SavingsPlansUtilizationAggregates',
                            'class' => 'Paws::CostExplorer::SavingsPlansUtilizationAggregates'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SavingsPlansUtilizationDetails' => {
                                                     'type' => 'ArrayRef[CostExplorer_SavingsPlansUtilizationDetail]',
                                                     'class' => 'Paws::CostExplorer::SavingsPlansUtilizationDetail'
                                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilizationDetailsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 B<REQUIRED> SavingsPlansUtilizationDetails => ArrayRef[CostExplorer_SavingsPlansUtilizationDetail]

Retrieves a single daily or monthly Savings Plans utilization rate and
details for your account.


=head2 B<REQUIRED> TimePeriod => CostExplorer_DateInterval




=head2 Total => CostExplorer_SavingsPlansUtilizationAggregates

The total Savings Plans utilization, regardless of time period.


=head2 _request_id => Str


=cut

1;