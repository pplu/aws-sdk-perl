
package Paws::CostExplorer::DeleteCostCategoryDefinitionResponse;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str');
  has EffectiveEnd => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DeleteCostCategoryDefinitionResponse

=head1 ATTRIBUTES


=head2 CostCategoryArn => Str

The unique identifier for your Cost Category.


=head2 EffectiveEnd => Str

The effective end date of the Cost Category as a result of deleting it.
No costs after this date will be categorized by the deleted Cost
Category.


=head2 _request_id => Str


=cut

1;