
package Paws::CodeCommit::CreateRepositoryOutput;
  use Moose;
  has RepositoryMetadata => (is => 'ro', isa => 'Paws::CodeCommit::RepositoryMetadata', traits => ['Unwrapped'], xmlname => 'repositoryMetadata' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryMetadata => L<Paws::CodeCommit::RepositoryMetadata>

Information about the newly created repository.




=cut

1;