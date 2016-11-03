
package Paws::CodeCommit::GetRepositoryOutput;
  use Moose;
  has RepositoryMetadata => (is => 'ro', isa => 'Paws::CodeCommit::RepositoryMetadata', traits => ['NameInRequest'], request_name => 'repositoryMetadata' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryMetadata => L<Paws::CodeCommit::RepositoryMetadata>

Information about the repository.




=cut

1;