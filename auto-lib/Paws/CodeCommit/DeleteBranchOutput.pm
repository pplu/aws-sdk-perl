
package Paws::CodeCommit::DeleteBranchOutput;
  use Moose;
  has DeletedBranch => (is => 'ro', isa => 'Paws::CodeCommit::BranchInfo', traits => ['NameInRequest'], request_name => 'deletedBranch' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteBranchOutput

=head1 ATTRIBUTES


=head2 DeletedBranch => L<Paws::CodeCommit::BranchInfo>

Information about the branch deleted by the operation, including the
branch name and the commit ID that was the tip of the branch.


=head2 _request_id => Str


=cut

1;