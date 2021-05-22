package Paws::EC2::ReplaceRootVolumeTask;
  use Moose;
  has CompleteTime => (is => 'ro', isa => 'Str', request_name => 'completeTime', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has ReplaceRootVolumeTaskId => (is => 'ro', isa => 'Str', request_name => 'replaceRootVolumeTaskId', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TaskState => (is => 'ro', isa => 'Str', request_name => 'taskState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceRootVolumeTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReplaceRootVolumeTask object:

  $service_obj->Method(Att1 => { CompleteTime => $value, ..., TaskState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReplaceRootVolumeTask object:

  $result = $service_obj->Method(...);
  $result->Att1->CompleteTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CompleteTime => Str

The time the task completed.


=head2 InstanceId => Str

The ID of the instance for which the root volume replacement task was
created.


=head2 ReplaceRootVolumeTaskId => Str

The ID of the root volume replacement task.


=head2 StartTime => Str

The time the task was started.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the task.


=head2 TaskState => Str

The state of the task. The task can be in one of the following states:

=over

=item *

C<pending> - the replacement volume is being created.

=item *

C<in-progress> - the original volume is being detached and the
replacement volume is being attached.

=item *

C<succeeded> - the replacement volume has been successfully attached to
the instance and the instance is available.

=item *

C<failing> - the replacement task is in the process of failing.

=item *

C<failed> - the replacement task has failed but the original root
volume is still attached.

=item *

C<failing-detached> - the replacement task is in the process of
failing. The instance might have no root volume attached.

=item *

C<failed-detached> - the replacement task has failed and the instance
has no root volume attached.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
