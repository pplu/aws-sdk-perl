
package Paws::CodeCommit::CreateApprovalRuleTemplate;
  use Moose;
  has ApprovalRuleTemplateContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateContent' , required => 1);
  has ApprovalRuleTemplateDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateDescription' );
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApprovalRuleTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::CreateApprovalRuleTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::CreateApprovalRuleTemplate - Arguments for method CreateApprovalRuleTemplate on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApprovalRuleTemplate on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method CreateApprovalRuleTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApprovalRuleTemplate.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $CreateApprovalRuleTemplateOutput =
      $codecommit->CreateApprovalRuleTemplate(
      ApprovalRuleTemplateContent => 'MyApprovalRuleTemplateContent',
      ApprovalRuleTemplateName    => 'MyApprovalRuleTemplateName',
      ApprovalRuleTemplateDescription =>
        'MyApprovalRuleTemplateDescription',    # OPTIONAL
      );

    # Results:
    my $ApprovalRuleTemplate =
      $CreateApprovalRuleTemplateOutput->ApprovalRuleTemplate;

    # Returns a L<Paws::CodeCommit::CreateApprovalRuleTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/CreateApprovalRuleTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateContent => Str

The content of the approval rule that is created on pull requests in
associated repositories. If you specify one or more destination
references (branches), approval rules are created in an associated
repository only if their destination references (branches) match those
specified in the template.

When you create the content of the approval rule template, you can
specify approvers in an approval pool in one of two ways:

=over

=item *

B<CodeCommitApprovers>: This option only requires an AWS account and a
resource. It can be used for both IAM users and federated access users
whose name matches the provided resource name. This is a very powerful
option that offers a great deal of flexibility. For example, if you
specify the AWS account I<123456789012> and I<Mary_Major>, all of the
following are counted as approvals coming from that user:

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
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>.



=head2 ApprovalRuleTemplateDescription => Str

The description of the approval rule template. Consider providing a
description that explains what this template does and when it might be
appropriate to associate it with repositories.



=head2 B<REQUIRED> ApprovalRuleTemplateName => Str

The name of the approval rule template. Provide descriptive names,
because this name is applied to the approval rules created
automatically in associated repositories.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApprovalRuleTemplate in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

