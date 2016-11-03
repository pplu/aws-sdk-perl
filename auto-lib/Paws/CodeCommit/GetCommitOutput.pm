
package Paws::CodeCommit::GetCommitOutput;
  use Moose;
  has Commit => (is => 'ro', isa => 'Paws::CodeCommit::Commit', traits => ['NameInRequest'], request_name => 'commit' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommitOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Commit => L<Paws::CodeCommit::Commit>

Information about the specified commit.




=cut

1;