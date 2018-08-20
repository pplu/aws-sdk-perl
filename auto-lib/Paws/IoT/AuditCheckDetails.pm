package Paws::IoT::AuditCheckDetails;
  use Moose;
  has CheckCompliant => (is => 'ro', isa => 'Bool', request_name => 'checkCompliant', traits => ['NameInRequest']);
  has CheckRunStatus => (is => 'ro', isa => 'Str', request_name => 'checkRunStatus', traits => ['NameInRequest']);
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has NonCompliantResourcesCount => (is => 'ro', isa => 'Int', request_name => 'nonCompliantResourcesCount', traits => ['NameInRequest']);
  has TotalResourcesCount => (is => 'ro', isa => 'Int', request_name => 'totalResourcesCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditCheckDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditCheckDetails object:

  $service_obj->Method(Att1 => { CheckCompliant => $value, ..., TotalResourcesCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditCheckDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckCompliant

=head1 DESCRIPTION

Information about the audit check.

=head1 ATTRIBUTES


=head2 CheckCompliant => Bool

  True if the check completed and found all resources compliant.


=head2 CheckRunStatus => Str

  The completion status of this check, one of "IN_PROGRESS",
"WAITING_FOR_DATA_COLLECTION", "CANCELED", "COMPLETED_COMPLIANT",
"COMPLETED_NON_COMPLIANT", or "FAILED".


=head2 ErrorCode => Str

  The code of any error encountered when performing this check during
this audit. One of "INSUFFICIENT_PERMISSIONS", or
"AUDIT_CHECK_DISABLED".


=head2 Message => Str

  The message associated with any error encountered when performing this
check during this audit.


=head2 NonCompliantResourcesCount => Int

  The number of resources that the check found non-compliant.


=head2 TotalResourcesCount => Int

  The number of resources on which the check was performed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

