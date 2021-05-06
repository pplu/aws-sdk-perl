
package Paws::CodeCommit::UpdateApprovalRuleTemplateNameOutput;
  use Moose;
  has ApprovalRuleTemplate => (is => 'ro', isa => 'Paws::CodeCommit::ApprovalRuleTemplate', traits => ['NameInRequest'], request_name => 'approvalRuleTemplate' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateApprovalRuleTemplateNameOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplate => L<Paws::CodeCommit::ApprovalRuleTemplate>

The structure and content of the updated approval rule template.


=head2 _request_id => Str


=cut

1;