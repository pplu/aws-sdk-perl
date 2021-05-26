
package Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplateOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'repositoryNames' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplateOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the next
results of the operation.


=head2 RepositoryNames => ArrayRef[Str|Undef]

A list of repository names that are associated with the specified
approval rule template.


=head2 _request_id => Str


=cut

1;