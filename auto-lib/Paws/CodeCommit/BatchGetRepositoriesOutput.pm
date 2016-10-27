
package Paws::CodeCommit::BatchGetRepositoriesOutput;
  use Moose;
  has Repositories => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryMetadata]', traits => ['Unwrapped'], xmlname => 'repositories' );
  has RepositoriesNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['Unwrapped'], xmlname => 'repositoriesNotFound' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchGetRepositoriesOutput

=head1 ATTRIBUTES


=head2 Repositories => ArrayRef[L<Paws::CodeCommit::RepositoryMetadata>]

A list of repositories returned by the batch get repositories
operation.



=head2 RepositoriesNotFound => ArrayRef[Str|Undef]

Returns a list of repository names for which information could not be
found.




=cut

1;