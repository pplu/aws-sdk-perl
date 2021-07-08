
package Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatusOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::GetSagemakerServicecatalogPortfolioStatusOutput

=head1 ATTRIBUTES


=head2 Status => Str

Whether Service Catalog is enabled or disabled in SageMaker.

Valid values are: C<"Enabled">, C<"Disabled">
=head2 _request_id => Str


=cut

1;