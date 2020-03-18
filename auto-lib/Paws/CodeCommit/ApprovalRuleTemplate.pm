package Paws::CodeCommit::ApprovalRuleTemplate;
  use Moose;
  has ApprovalRuleTemplateContent => (is => 'ro', isa => 'Str', request_name => 'approvalRuleTemplateContent', traits => ['NameInRequest']);
  has ApprovalRuleTemplateDescription => (is => 'ro', isa => 'Str', request_name => 'approvalRuleTemplateDescription', traits => ['NameInRequest']);
  has ApprovalRuleTemplateId => (is => 'ro', isa => 'Str', request_name => 'approvalRuleTemplateId', traits => ['NameInRequest']);
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', request_name => 'approvalRuleTemplateName', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has LastModifiedUser => (is => 'ro', isa => 'Str', request_name => 'lastModifiedUser', traits => ['NameInRequest']);
  has RuleContentSha256 => (is => 'ro', isa => 'Str', request_name => 'ruleContentSha256', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ApprovalRuleTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ApprovalRuleTemplate object:

  $service_obj->Method(Att1 => { ApprovalRuleTemplateContent => $value, ..., RuleContentSha256 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ApprovalRuleTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalRuleTemplateContent

=head1 DESCRIPTION

Returns information about an approval rule template.

=head1 ATTRIBUTES


=head2 ApprovalRuleTemplateContent => Str

  The content of the approval rule template.


=head2 ApprovalRuleTemplateDescription => Str

  The description of the approval rule template.


=head2 ApprovalRuleTemplateId => Str

  The system-generated ID of the approval rule template.


=head2 ApprovalRuleTemplateName => Str

  The name of the approval rule template.


=head2 CreationDate => Str

  The date the approval rule template was created, in timestamp format.


=head2 LastModifiedDate => Str

  The date the approval rule template was most recently changed, in
timestamp format.


=head2 LastModifiedUser => Str

  The Amazon Resource Name (ARN) of the user who made the most recent
changes to the approval rule template.


=head2 RuleContentSha256 => Str

  The SHA-256 hash signature for the content of the approval rule
template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

