
package Paws::ECRPublic::CreateRepositoryResponse;
  use Moose;
  has CatalogData => (is => 'ro', isa => 'Paws::ECRPublic::RepositoryCatalogData', traits => ['NameInRequest'], request_name => 'catalogData' );
  has Repository => (is => 'ro', isa => 'Paws::ECRPublic::Repository', traits => ['NameInRequest'], request_name => 'repository' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::CreateRepositoryResponse

=head1 ATTRIBUTES


=head2 CatalogData => L<Paws::ECRPublic::RepositoryCatalogData>




=head2 Repository => L<Paws::ECRPublic::Repository>

The repository that was created.


=head2 _request_id => Str


=cut

1;