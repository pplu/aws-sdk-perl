
package Paws::CodeCommit::EvaluatePullRequestApprovalRules;
  use Moose;
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluatePullRequestApprovalRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::EvaluatePullRequestApprovalRulesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::EvaluatePullRequestApprovalRules - Arguments for method EvaluatePullRequestApprovalRules on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluatePullRequestApprovalRules on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method EvaluatePullRequestApprovalRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluatePullRequestApprovalRules.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $EvaluatePullRequestApprovalRulesOutput =
      $codecommit->EvaluatePullRequestApprovalRules(
      PullRequestId => 'MyPullRequestId',
      RevisionId    => 'MyRevisionId',

      );

    # Results:
    my $Evaluation = $EvaluatePullRequestApprovalRulesOutput->Evaluation;

 # Returns a L<Paws::CodeCommit::EvaluatePullRequestApprovalRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/EvaluatePullRequestApprovalRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request you want to evaluate.



=head2 B<REQUIRED> RevisionId => Str

The system-generated ID for the pull request revision. To retrieve the
most recent revision ID for a pull request, use GetPullRequest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluatePullRequestApprovalRules in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

