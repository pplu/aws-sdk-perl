
package Paws::ServiceCatalog::SearchProductsOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProductViewAggregations => (is => 'ro', isa => 'HashRef[ArrayRef[Paws::ServiceCatalog::ProductViewAggregationValue]]');
  has ProductViewSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProductViewSummary]');


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProductsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.



=head2 ProductViewAggregations => HashRef[L<ArrayRef[Paws::ServiceCatalog::ProductViewAggregationValue]>]

A list of the product view aggregation value objects.



=head2 ProductViewSummaries => ArrayRef[L<Paws::ServiceCatalog::ProductViewSummary>]

A list of the product view summary objects.




=cut

1;