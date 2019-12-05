
package Paws::CodeCommit::EvaluatePullRequestApprovalRulesOutput;
  use Moose;
  has Evaluation => (is => 'ro', isa => 'Paws::CodeCommit::Evaluation', traits => ['NameInRequest'], request_name => 'evaluation' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::EvaluatePullRequestApprovalRulesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Evaluation => L<Paws::CodeCommit::Evaluation>

The result of the evaluation, including the names of the rules whose
conditions have been met (if any), the names of the rules whose
conditions have not been met (if any), whether the pull request is in
the approved state, and whether the pull request approval rule has been
set aside by an override.


=head2 _request_id => Str


=cut

1;