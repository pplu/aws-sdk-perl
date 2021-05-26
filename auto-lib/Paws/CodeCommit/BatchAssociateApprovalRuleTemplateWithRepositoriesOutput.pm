
package Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput;
  use Moose;
  has AssociatedRepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'associatedRepositoryNames' , required => 1);
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError]', traits => ['NameInRequest'], request_name => 'errors' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociatedRepositoryNames => ArrayRef[Str|Undef]

A list of names of the repositories that have been associated with the
template.


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesError>]

A list of any errors that might have occurred while attempting to
create the association between the template and the repositories.


=head2 _request_id => Str


=cut

1;