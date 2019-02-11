package Paws::CodeDeploy::ECSTaskSet;
  use Moose;
  has DesiredCount => (is => 'ro', isa => 'Int', request_name => 'desiredCount', traits => ['NameInRequest']);
  has Identifer => (is => 'ro', isa => 'Str', request_name => 'identifer', traits => ['NameInRequest']);
  has PendingCount => (is => 'ro', isa => 'Int', request_name => 'pendingCount', traits => ['NameInRequest']);
  has RunningCount => (is => 'ro', isa => 'Int', request_name => 'runningCount', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has TargetGroup => (is => 'ro', isa => 'Paws::CodeDeploy::TargetGroupInfo', request_name => 'targetGroup', traits => ['NameInRequest']);
  has TaskSetLabel => (is => 'ro', isa => 'Str', request_name => 'taskSetLabel', traits => ['NameInRequest']);
  has TrafficWeight => (is => 'ro', isa => 'Num', request_name => 'trafficWeight', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ECSTaskSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::ECSTaskSet object:

  $service_obj->Method(Att1 => { DesiredCount => $value, ..., TrafficWeight => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::ECSTaskSet object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredCount

=head1 DESCRIPTION

Information about a set of Amazon ECS tasks in an AWS CodeDeploy
deployment. An Amazon ECS task set includes details such as the desired
number of tasks, how many tasks are running, and whether the task set
serves production traffic. An AWS CodeDeploy application that uses the
Amazon ECS compute platform deploys a containerized application in an
Amazon ECS service as a task set.

=head1 ATTRIBUTES


=head2 DesiredCount => Int

  The number of tasks in a task set. During a deployment that uses the
Amazon ECS compute type, CodeDeploy instructs Amazon ECS to create a
new task set and uses this value to determine how many tasks to create.
After the updated task set is created, CodeDeploy shifts traffic to the
new task set.


=head2 Identifer => Str

  A unique ID of an C<ECSTaskSet>.


=head2 PendingCount => Int

  The number of tasks in the task set that are in the C<PENDING> status
during an Amazon ECS deployment. A task in the C<PENDING> state is
preparing to enter the C<RUNNING> state. A task set enters the
C<PENDING> status when it launches for the first time, or when it is
restarted after being in the C<STOPPED> state.


=head2 RunningCount => Int

  The number of tasks in the task set that are in the C<RUNNING> status
during an Amazon ECS deployment. A task in the C<RUNNING> state is
running and ready for use.


=head2 Status => Str

  The status of the task set. There are three valid task set statuses:

=over

=item *

C<PRIMARY>: Indicates the task set is serving production traffic.

=item *

C<ACTIVE>: Indicates the task set is not serving production traffic.

=item *

C<DRAINING>: Indicates the tasks in the task set are being stopped and
their corresponding targets are being deregistered from their target
group.

=back



=head2 TargetGroup => L<Paws::CodeDeploy::TargetGroupInfo>

  The target group associated with the task set. The target group is used
by AWS CodeDeploy to manage traffic to a task set.


=head2 TaskSetLabel => Str

  A label that identifies whether the ECS task set is an original target
(C<BLUE>) or a replacement target (C<GREEN>).


=head2 TrafficWeight => Num

  The percentage of traffic served by this task set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

