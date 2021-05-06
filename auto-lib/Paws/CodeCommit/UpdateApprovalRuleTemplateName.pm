
package Paws::CodeCommit::UpdateApprovalRuleTemplateName;
  use Moose;
  has NewApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newApprovalRuleTemplateName' , required => 1);
  has OldApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'oldApprovalRuleTemplateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApprovalRuleTemplateName');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdateApprovalRuleTemplateNameOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateApprovalRuleTemplateName - Arguments for method UpdateApprovalRuleTemplateName on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApprovalRuleTemplateName on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateApprovalRuleTemplateName.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApprovalRuleTemplateName.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdateApprovalRuleTemplateNameOutput =
      $codecommit->UpdateApprovalRuleTemplateName(
      NewApprovalRuleTemplateName => 'MyApprovalRuleTemplateName',
      OldApprovalRuleTemplateName => 'MyApprovalRuleTemplateName',

      );

    # Results:
    my $ApprovalRuleTemplate =
      $UpdateApprovalRuleTemplateNameOutput->ApprovalRuleTemplate;

   # Returns a L<Paws::CodeCommit::UpdateApprovalRuleTemplateNameOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateApprovalRuleTemplateName>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NewApprovalRuleTemplateName => Str

The new name you want to apply to the approval rule template.



=head2 B<REQUIRED> OldApprovalRuleTemplateName => Str

The current name of the approval rule template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApprovalRuleTemplateName in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

