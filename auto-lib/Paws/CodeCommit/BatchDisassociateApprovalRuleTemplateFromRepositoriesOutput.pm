
package Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput;
  use Moose;
  has DisassociatedRepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'disassociatedRepositoryNames' , required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositoriesError]', traits => ['NameInRequest'], request_name => 'errors' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisassociatedRepositoryNames => ArrayRef[Str|Undef]

A list of repository names that have had their association with the
template removed.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::CodeCommit::BatchDisassociateApprovalRuleTemplateFromRepositoriesError>]

A list of any errors that might have occurred while attempting to
remove the association between the template and the repositories.


=head2 _request_id => Str


=cut

1;