
package Paws::CodeCommit::GetRepositoryOutput;
  use Moose;
  has RepositoryMetadata => (is => 'ro', isa => 'Paws::CodeCommit::RepositoryMetadata', traits => ['NameInRequest'], request_name => 'repositoryMetadata' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryMetadata => L<Paws::CodeCommit::RepositoryMetadata>

Information about the repository.


=head2 _request_id => Str


=cut

1;