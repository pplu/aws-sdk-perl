
package Paws::ECRPublic::PutRegistryCatalogDataResponse;
  use Moose;
  has RegistryCatalogData => (is => 'ro', isa => 'Paws::ECRPublic::RegistryCatalogData', traits => ['NameInRequest'], request_name => 'registryCatalogData' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::PutRegistryCatalogDataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistryCatalogData => L<Paws::ECRPublic::RegistryCatalogData>

The catalog data for the public registry.


=head2 _request_id => Str


=cut

1;