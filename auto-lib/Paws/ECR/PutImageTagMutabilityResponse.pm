
package Paws::ECR::PutImageTagMutabilityResponse;
  use Moose;
  has ImageTagMutability => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageTagMutability' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutImageTagMutabilityResponse

=head1 ATTRIBUTES


=head2 ImageTagMutability => Str

The image tag mutability setting for the repository.

Valid values are: C<"MUTABLE">, C<"IMMUTABLE">
=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;