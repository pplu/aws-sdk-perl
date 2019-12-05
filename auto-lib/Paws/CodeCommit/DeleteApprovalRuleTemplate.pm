
package Paws::CodeCommit::DeleteApprovalRuleTemplate;
  use Moose;
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApprovalRuleTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::DeleteApprovalRuleTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteApprovalRuleTemplate - Arguments for method DeleteApprovalRuleTemplate on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApprovalRuleTemplate on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method DeleteApprovalRuleTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApprovalRuleTemplate.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $DeleteApprovalRuleTemplateOutput =
      $codecommit->DeleteApprovalRuleTemplate(
      ApprovalRuleTemplateName => 'MyApprovalRuleTemplateName',

      );

    # Results:
    my $ApprovalRuleTemplateId =
      $DeleteApprovalRuleTemplateOutput->ApprovalRuleTemplateId;

    # Returns a L<Paws::CodeCommit::DeleteApprovalRuleTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/DeleteApprovalRuleTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateName => Str

The name of the approval rule template to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApprovalRuleTemplate in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

