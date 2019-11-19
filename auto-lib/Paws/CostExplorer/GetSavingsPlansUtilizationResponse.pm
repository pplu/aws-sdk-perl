# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetSavingsPlansUtilizationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_SavingsPlansUtilizationByTime CostExplorer_SavingsPlansUtilizationAggregates/;
  has SavingsPlansUtilizationsByTime => (is => 'ro', isa => ArrayRef[CostExplorer_SavingsPlansUtilizationByTime]);
  has Total => (is => 'ro', isa => CostExplorer_SavingsPlansUtilizationAggregates, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SavingsPlansUtilizationsByTime' => {
                                                     'type' => 'ArrayRef[CostExplorer_SavingsPlansUtilizationByTime]',
                                                     'class' => 'Paws::CostExplorer::SavingsPlansUtilizationByTime'
                                                   },
               'Total' => {
                            'class' => 'Paws::CostExplorer::SavingsPlansUtilizationAggregates',
                            'type' => 'CostExplorer_SavingsPlansUtilizationAggregates'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Total' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetSavingsPlansUtilizationResponse

=head1 ATTRIBUTES


=head2 SavingsPlansUtilizationsByTime => ArrayRef[CostExplorer_SavingsPlansUtilizationByTime]

The amount of cost/commitment you used your Savings Plans. This allows
you to specify date ranges.


=head2 B<REQUIRED> Total => CostExplorer_SavingsPlansUtilizationAggregates

The total amount of cost/commitment that you used your Savings Plans,
regardless of date ranges.


=head2 _request_id => Str


=cut

1;