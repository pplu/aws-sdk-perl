
package Paws::CostExplorer::GetCostAndUsageResponse;
  use Moose;
  has GroupDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::GroupDefinition]');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ResultsByTime => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::ResultByTime]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostAndUsageResponse

=head1 ATTRIBUTES


=head2 GroupDefinitions => ArrayRef[L<Paws::CostExplorer::GroupDefinition>]

The groups that are specified by the C<Filter> or C<GroupBy> parameters
in the request.


=head2 NextPageToken => Str

The token for the next set of retrievable results. AWS provides the
token when the response from a previous call has more results than the
maximum page size.


=head2 ResultsByTime => ArrayRef[L<Paws::CostExplorer::ResultByTime>]

The time period that is covered by the results in the response.


=head2 _request_id => Str


=cut

1;