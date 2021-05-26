
package Paws::CostExplorer::UpdateCostCategoryDefinitionResponse;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str');
  has EffectiveStart => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateCostCategoryDefinitionResponse

=head1 ATTRIBUTES


=head2 CostCategoryArn => Str

The unique identifier for your Cost Category.


=head2 EffectiveStart => Str

The Cost Category's effective start date.


=head2 _request_id => Str


=cut

1;