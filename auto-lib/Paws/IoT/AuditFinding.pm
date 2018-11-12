package Paws::IoT::AuditFinding;
  use Moose;
  has CheckName => (is => 'ro', isa => 'Str', request_name => 'checkName', traits => ['NameInRequest']);
  has FindingTime => (is => 'ro', isa => 'Str', request_name => 'findingTime', traits => ['NameInRequest']);
  has NonCompliantResource => (is => 'ro', isa => 'Paws::IoT::NonCompliantResource', request_name => 'nonCompliantResource', traits => ['NameInRequest']);
  has ReasonForNonCompliance => (is => 'ro', isa => 'Str', request_name => 'reasonForNonCompliance', traits => ['NameInRequest']);
  has ReasonForNonComplianceCode => (is => 'ro', isa => 'Str', request_name => 'reasonForNonComplianceCode', traits => ['NameInRequest']);
  has RelatedResources => (is => 'ro', isa => 'ArrayRef[Paws::IoT::RelatedResource]', request_name => 'relatedResources', traits => ['NameInRequest']);
  has Severity => (is => 'ro', isa => 'Str', request_name => 'severity', traits => ['NameInRequest']);
  has TaskId => (is => 'ro', isa => 'Str', request_name => 'taskId', traits => ['NameInRequest']);
  has TaskStartTime => (is => 'ro', isa => 'Str', request_name => 'taskStartTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditFinding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditFinding object:

  $service_obj->Method(Att1 => { CheckName => $value, ..., TaskStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditFinding object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckName

=head1 DESCRIPTION

The findings (results) of the audit.

=head1 ATTRIBUTES


=head2 CheckName => Str

  The audit check that generated this result.


=head2 FindingTime => Str

  The time the result (finding) was discovered.


=head2 NonCompliantResource => L<Paws::IoT::NonCompliantResource>

  The resource that was found to be non-compliant with the audit check.


=head2 ReasonForNonCompliance => Str

  The reason the resource was non-compliant.


=head2 ReasonForNonComplianceCode => Str

  A code which indicates the reason that the resource was non-compliant.


=head2 RelatedResources => ArrayRef[L<Paws::IoT::RelatedResource>]

  The list of related resources.


=head2 Severity => Str

  The severity of the result (finding).


=head2 TaskId => Str

  The ID of the audit that generated this result (finding)


=head2 TaskStartTime => Str

  The time the audit started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

