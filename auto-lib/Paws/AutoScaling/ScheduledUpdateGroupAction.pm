package Paws::AutoScaling::ScheduledUpdateGroupAction;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionARN => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has Time => (is => 'ro', isa => 'Paws::API::TimeStamp');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ScheduledUpdateGroupAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::ScheduledUpdateGroupAction object:

  $service_obj->Method(Att1 => { AutoScalingGroupName => $value, ..., Time => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::ScheduledUpdateGroupAction object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupName

=head1 DESCRIPTION

Describes a scheduled update to an Auto Scaling group.

=head1 ATTRIBUTES


=head2 AutoScalingGroupName => Str

  The name of the group.


=head2 DesiredCapacity => Int

  The number of instances you prefer to maintain in the group.


=head2 EndTime => L<Paws::API::TimeStamp>

  The date and time that the action is scheduled to end. This date and
time can be up to one month in the future.


=head2 MaxSize => Int

  The maximum size of the group.


=head2 MinSize => Int

  The minimum size of the group.


=head2 Recurrence => Str

  The recurring schedule for the action.


=head2 ScheduledActionARN => Str

  The Amazon Resource Name (ARN) of the scheduled action.


=head2 ScheduledActionName => Str

  The name of the scheduled action.


=head2 StartTime => L<Paws::API::TimeStamp>

  The date and time that the action is scheduled to begin. This date and
time can be up to one month in the future.

When C<StartTime> and C<EndTime> are specified with C<Recurrence>, they
form the boundaries of when the recurring action will start and stop.


=head2 Time => L<Paws::API::TimeStamp>

  This parameter is deprecated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

