
package Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepositoryOutput;
  use Moose;
  has ApprovalRuleTemplateNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateNames' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListAssociatedApprovalRuleTemplatesForRepositoryOutput

=head1 ATTRIBUTES


=head2 ApprovalRuleTemplateNames => ArrayRef[Str|Undef]

The names of all approval rule templates associated with the
repository.


=head2 NextToken => Str

An enumeration token that allows the operation to batch the next
results of the operation.


=head2 _request_id => Str


=cut

1;