
package Paws::CodeArtifact::GetRepositoryEndpointResult;
  use Moose;
  has RepositoryEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryEndpoint');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::GetRepositoryEndpointResult

=head1 ATTRIBUTES


=head2 RepositoryEndpoint => Str

A string that specifies the URL of the returned endpoint.


=head2 _request_id => Str


=cut

