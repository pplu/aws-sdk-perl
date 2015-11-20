
package Paws::CodeCommit::DeleteRepositoryOutput;
  use Moose;
  has RepositoryId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'repositoryId' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryId => Str

  The ID of the repository that was deleted.


=cut

1;