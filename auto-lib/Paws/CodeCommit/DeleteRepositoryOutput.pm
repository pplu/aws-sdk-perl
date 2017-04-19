
package Paws::CodeCommit::DeleteRepositoryOutput;
  use Moose;
  has RepositoryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryId => Str

The ID of the repository that was deleted.


=head2 _request_id => Str


=cut

1;