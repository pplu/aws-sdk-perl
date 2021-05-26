
package Paws::CodeCommit::DeleteApprovalRuleTemplateOutput;
  use Moose;
  has ApprovalRuleTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateId' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteApprovalRuleTemplateOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateId => Str

The system-generated ID of the deleted approval rule template. If the
template has been previously deleted, the only response is a 200 OK.


=head2 _request_id => Str


=cut

1;