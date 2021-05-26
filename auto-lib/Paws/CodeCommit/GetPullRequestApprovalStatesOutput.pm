
package Paws::CodeCommit::GetPullRequestApprovalStatesOutput;
  use Moose;
  has Approvals => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::Approval]', traits => ['NameInRequest'], request_name => 'approvals' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetPullRequestApprovalStatesOutput

=head1 ATTRIBUTES


=head2 Approvals => ArrayRef[L<Paws::CodeCommit::Approval>]

Information about users who have approved the pull request.


=head2 _request_id => Str


=cut

1;