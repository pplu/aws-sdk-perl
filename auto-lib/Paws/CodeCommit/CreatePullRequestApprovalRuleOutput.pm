
package Paws::CodeCommit::CreatePullRequestApprovalRuleOutput;
  use Moose;
  has ApprovalRule => (is => 'ro', isa => 'Paws::CodeCommit::ApprovalRule', traits => ['NameInRequest'], request_name => 'approvalRule' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreatePullRequestApprovalRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRule => L<Paws::CodeCommit::ApprovalRule>

Information about the created approval rule.


=head2 _request_id => Str


=cut

1;