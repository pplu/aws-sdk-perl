
package Paws::CodeCommit::UpdateApprovalRuleTemplateContent;
  use Moose;
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateName' , required => 1);
  has ExistingRuleContentSha256 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'existingRuleContentSha256' );
  has NewRuleContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newRuleContent' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApprovalRuleTemplateContent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdateApprovalRuleTemplateContentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateApprovalRuleTemplateContent - Arguments for method UpdateApprovalRuleTemplateContent on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApprovalRuleTemplateContent on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateApprovalRuleTemplateContent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApprovalRuleTemplateContent.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdateApprovalRuleTemplateContentOutput =
      $codecommit->UpdateApprovalRuleTemplateContent(
      ApprovalRuleTemplateName  => 'MyApprovalRuleTemplateName',
      NewRuleContent            => 'MyApprovalRuleTemplateContent',
      ExistingRuleContentSha256 => 'MyRuleContentSha256',             # OPTIONAL
      );

    # Results:
    my $ApprovalRuleTemplate =
      $UpdateApprovalRuleTemplateContentOutput->ApprovalRuleTemplate;

# Returns a L<Paws::CodeCommit::UpdateApprovalRuleTemplateContentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateApprovalRuleTemplateContent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateName => Str

The name of the approval rule template where you want to update the
content of the rule.



=head2 ExistingRuleContentSha256 => Str

The SHA-256 hash signature for the content of the approval rule. You
can retrieve this information by using GetPullRequest.



=head2 B<REQUIRED> NewRuleContent => Str

The content that replaces the existing content of the rule. Content
statements must be complete. You cannot provide only the changes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApprovalRuleTemplateContent in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

