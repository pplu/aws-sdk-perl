package Paws::SSM::ComplianceItem;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Paws::SSM::ComplianceItemDetails');
  has ExecutionSummary => (is => 'ro', isa => 'Paws::SSM::ComplianceExecutionSummary');
  has Id => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ComplianceItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ComplianceItem object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ComplianceItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

Information about the compliance as defined by the resource type. For
example, for a patch resource type, C<Items> includes information about
the PatchSeverity, Classification, etc.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  The compliance type. For example, Association (for a State Manager
association), Patch, or Custom:C<string> are all valid compliance
types.


=head2 Details => L<Paws::SSM::ComplianceItemDetails>

  A "Key": "Value" tag combination for the compliance item.


=head2 ExecutionSummary => L<Paws::SSM::ComplianceExecutionSummary>

  A summary for the compliance item. The summary includes an execution
ID, the execution type (for example, command), and the execution time.


=head2 Id => Str

  An ID for the compliance item. For example, if the compliance item is a
Windows patch, the ID could be the number of the KB article; for
example: KB4010320.


=head2 ResourceId => Str

  An ID for the resource. For a managed instance, this is the instance
ID.


=head2 ResourceType => Str

  The type of resource. C<ManagedInstance> is currently the only
supported resource type.


=head2 Severity => Str

  The severity of the compliance status. Severity can be one of the
following: Critical, High, Medium, Low, Informational, Unspecified.


=head2 Status => Str

  The status of the compliance item. An item is either COMPLIANT or
NON_COMPLIANT.


=head2 Title => Str

  A title for the compliance item. For example, if the compliance item is
a Windows patch, the title could be the title of the KB article for the
patch; for example: Security Update for Active Directory Federation
Services.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

