package Paws::IoT::AuditTaskMetadata;
  use Moose;
  has TaskId => (is => 'ro', isa => 'Str', request_name => 'taskId', traits => ['NameInRequest']);
  has TaskStatus => (is => 'ro', isa => 'Str', request_name => 'taskStatus', traits => ['NameInRequest']);
  has TaskType => (is => 'ro', isa => 'Str', request_name => 'taskType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuditTaskMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuditTaskMetadata object:

  $service_obj->Method(Att1 => { TaskId => $value, ..., TaskType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuditTaskMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->TaskId

=head1 DESCRIPTION

The audits that were performed.

=head1 ATTRIBUTES


=head2 TaskId => Str

  The ID of this audit.


=head2 TaskStatus => Str

  The status of this audit: one of "IN_PROGRESS", "COMPLETED", "FAILED"
or "CANCELED".


=head2 TaskType => Str

  The type of this audit: one of "ON_DEMAND_AUDIT_TASK" or
"SCHEDULED_AUDIT_TASK".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

