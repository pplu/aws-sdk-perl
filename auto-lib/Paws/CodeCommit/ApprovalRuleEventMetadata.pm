package Paws::CodeCommit::ApprovalRuleEventMetadata;
  use Moose;
  has ApprovalRuleContent => (is => 'ro', isa => 'Str', request_name => 'approvalRuleContent', traits => ['NameInRequest']);
  has ApprovalRuleId => (is => 'ro', isa => 'Str', request_name => 'approvalRuleId', traits => ['NameInRequest']);
  has ApprovalRuleName => (is => 'ro', isa => 'Str', request_name => 'approvalRuleName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ApprovalRuleEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ApprovalRuleEventMetadata object:

  $service_obj->Method(Att1 => { ApprovalRuleContent => $value, ..., ApprovalRuleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ApprovalRuleEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalRuleContent

=head1 DESCRIPTION

Returns information about an event for an approval rule.

=head1 ATTRIBUTES


=head2 ApprovalRuleContent => Str

  The content of the approval rule.


=head2 ApprovalRuleId => Str

  The system-generated ID of the approval rule.


=head2 ApprovalRuleName => Str

  The name of the approval rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

