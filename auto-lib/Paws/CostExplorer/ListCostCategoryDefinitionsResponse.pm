
package Paws::CostExplorer::ListCostCategoryDefinitionsResponse;
  use Moose;
  has CostCategoryReferences => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostCategoryReference]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCostCategoryDefinitionsResponse

=head1 ATTRIBUTES


=head2 CostCategoryReferences => ArrayRef[L<Paws::CostExplorer::CostCategoryReference>]

A reference to a Cost Category containing enough information to
identify the Cost Category.


=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.


=head2 _request_id => Str


=cut

1;