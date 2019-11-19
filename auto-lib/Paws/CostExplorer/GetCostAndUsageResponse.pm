# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetCostAndUsageResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ResultByTime CostExplorer_GroupDefinition/;
  has GroupDefinitions => (is => 'ro', isa => ArrayRef[CostExplorer_GroupDefinition]);
  has NextPageToken => (is => 'ro', isa => Str);
  has ResultsByTime => (is => 'ro', isa => ArrayRef[CostExplorer_ResultByTime]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResultsByTime' => {
                                    'class' => 'Paws::CostExplorer::ResultByTime',
                                    'type' => 'ArrayRef[CostExplorer_ResultByTime]'
                                  },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'GroupDefinitions' => {
                                       'class' => 'Paws::CostExplorer::GroupDefinition',
                                       'type' => 'ArrayRef[CostExplorer_GroupDefinition]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostAndUsageResponse

=head1 ATTRIBUTES


=head2 GroupDefinitions => ArrayRef[CostExplorer_GroupDefinition]

The groups that are specified by the C<Filter> or C<GroupBy> parameters
in the request.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 ResultsByTime => ArrayRef[CostExplorer_ResultByTime]

The time period that is covered by the results in the response.


=head2 _request_id => Str


=cut

1;