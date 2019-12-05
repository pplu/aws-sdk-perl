
package Paws::CodeCommit::CreatePullRequestApprovalRule;
  use Moose;
  has ApprovalRuleContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleContent' , required => 1);
  has ApprovalRuleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleName' , required => 1);
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePullRequestApprovalRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::CreatePullRequestApprovalRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreatePullRequestApprovalRule - Arguments for method CreatePullRequestApprovalRule on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePullRequestApprovalRule on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreatePullRequestApprovalRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePullRequestApprovalRule.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $CreatePullRequestApprovalRuleOutput =
      $codecommit->CreatePullRequestApprovalRule(
      ApprovalRuleContent => 'MyApprovalRuleContent',
      ApprovalRuleName    => 'MyApprovalRuleName',
      PullRequestId       => 'MyPullRequestId',

      );

    # Results:
    my $ApprovalRule = $CreatePullRequestApprovalRuleOutput->ApprovalRule;

    # Returns a L<Paws::CodeCommit::CreatePullRequestApprovalRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreatePullRequestApprovalRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleContent => Str

The content of the approval rule, including the number of approvals
needed and the structure of an approval pool defined for approvals, if
any. For more information about approval pools, see the AWS CodeCommit
User Guide.

When you create the content of the approval rule, you can specify
approvers in an approval pool in one of two ways:

=over

=item *

B<CodeCommitApprovers>: This option only requires an AWS account and a
resource. It can be used for both IAM users and federated access users
whose name matches the provided resource name. This is a very powerful
option that offers a great deal of flexibility. For example, if you
specify the AWS account I<123456789012> and I<Mary_Major>, all of the
following would be counted as approvals coming from that user:

=over

=item *

An IAM user in the account
(arn:aws:iam::I<123456789012>:user/I<Mary_Major>)

=item *

A federated user identified in IAM as Mary_Major
(arn:aws:sts::I<123456789012>:federated-user/I<Mary_Major>)

=back

This option does not recognize an active session of someone assuming
the role of CodeCommitReview with a role session name of I<Mary_Major>
(arn:aws:sts::I<123456789012>:assumed-role/CodeCommitReview/I<Mary_Major>)
unless you include a wildcard (*Mary_Major).

=item *

B<Fully qualified ARN>: This option allows you to specify the fully
qualified Amazon Resource Name (ARN) of the IAM user or role.

=back

For more information about IAM ARNs, wildcards, and formats, see IAM
Identifiers
(https://docs.aws.amazon.com/iam/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>.



=head2 B<REQUIRED> ApprovalRuleName => Str

The name for the approval rule.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request for which you want to
create the approval rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePullRequestApprovalRule in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

