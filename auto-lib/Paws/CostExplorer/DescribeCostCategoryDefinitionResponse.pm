
package Paws::CostExplorer::DescribeCostCategoryDefinitionResponse;
  use Moose;
  has CostCategory => (is => 'ro', isa => 'Paws::CostExplorer::CostCategory');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DescribeCostCategoryDefinitionResponse

=head1 ATTRIBUTES


=head2 CostCategory => L<Paws::CostExplorer::CostCategory>




=head2 _request_id => Str


=cut

1;