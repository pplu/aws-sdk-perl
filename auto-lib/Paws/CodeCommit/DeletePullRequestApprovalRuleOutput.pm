
package Paws::CodeCommit::DeletePullRequestApprovalRuleOutput;
  use Moose;
  has ApprovalRuleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeletePullRequestApprovalRuleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleId => Str

The ID of the deleted approval rule.

If the approval rule was deleted in an earlier API call, the response
is 200 OK without content.


=head2 _request_id => Str


=cut

1;