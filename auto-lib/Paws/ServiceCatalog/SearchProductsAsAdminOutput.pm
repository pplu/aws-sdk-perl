
package Paws::ServiceCatalog::SearchProductsAsAdminOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has ProductViewDetails => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::ProductViewDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProductsAsAdminOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 ProductViewDetails => ArrayRef[L<Paws::ServiceCatalog::ProductViewDetail>]

List of detailed product view information objects.


=head2 _request_id => Str


=cut

1;