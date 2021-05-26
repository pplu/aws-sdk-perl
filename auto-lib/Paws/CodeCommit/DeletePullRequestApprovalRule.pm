
package Paws::CodeCommit::DeletePullRequestApprovalRule;
  use Moose;
  has ApprovalRuleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleName' , required => 1);
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePullRequestApprovalRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::DeletePullRequestApprovalRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeletePullRequestApprovalRule - Arguments for method DeletePullRequestApprovalRule on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePullRequestApprovalRule on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method DeletePullRequestApprovalRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePullRequestApprovalRule.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $DeletePullRequestApprovalRuleOutput =
      $codecommit->DeletePullRequestApprovalRule(
      ApprovalRuleName => 'MyApprovalRuleName',
      PullRequestId    => 'MyPullRequestId',

      );

    # Results:
    my $ApprovalRuleId = $DeletePullRequestApprovalRuleOutput->ApprovalRuleId;

    # Returns a L<Paws::CodeCommit::DeletePullRequestApprovalRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/DeletePullRequestApprovalRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleName => Str

The name of the approval rule you want to delete.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request that contains the approval
rule you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePullRequestApprovalRule in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

