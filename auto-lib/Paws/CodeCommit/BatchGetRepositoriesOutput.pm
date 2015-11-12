
package Paws::CodeCommit::BatchGetRepositoriesOutput;
  use Moose;
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryMetadata]', traits => ['Unwrapped'], xmlname => 'repositories' );
  has RepositoriesNotFound => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'repositoriesNotFound' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetRepositoriesOutput

=head1 ATTRIBUTES


=head2 Repositories => ArrayRef[L<Paws::CodeCommit::RepositoryMetadata>]

  A list of repositories returned by the batch get repositories
operation.

=head2 RepositoriesNotFound => ArrayRef[Str]

  Returns a list of repository names for which information could not be
found.


=cut

1;