
package Paws::CodeCommit::GetCommitOutput;
  use Moose;
  has Commit => (is => 'ro', isa => 'Paws::CodeCommit::Commit', traits => ['Unwrapped'], xmlname => 'commit' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetCommitOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Commit => L<Paws::CodeCommit::Commit>

Information about the specified commit.




=cut

1;