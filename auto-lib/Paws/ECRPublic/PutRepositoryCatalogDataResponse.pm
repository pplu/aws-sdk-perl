
package Paws::ECRPublic::PutRepositoryCatalogDataResponse;
  use Moose;
  has CatalogData => (is => 'ro', isa => 'Paws::ECRPublic::RepositoryCatalogData', traits => ['NameInRequest'], request_name => 'catalogData' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutRepositoryCatalogDataResponse

=head1 ATTRIBUTES


=head2 CatalogData => L<Paws::ECRPublic::RepositoryCatalogData>

The catalog data for the repository.


=head2 _request_id => Str


=cut

1;