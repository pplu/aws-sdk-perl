
package Paws::CodeCommit::GetCommitOutput;
  use Moose;
  has Commit => (is => 'ro', isa => 'Paws::CodeCommit::Commit', traits => ['NameInRequest'], request_name => 'commit' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommitOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Commit => L<Paws::CodeCommit::Commit>

A commit data type object that contains information about the specified
commit.


=head2 _request_id => Str


=cut

1;