package Paws::AutoScaling::ScheduledUpdateGroupActionRequest;
  use Moose;
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ScheduledUpdateGroupActionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::ScheduledUpdateGroupActionRequest object:

  $service_obj->Method(Att1 => { DesiredCapacity => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::ScheduledUpdateGroupActionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredCapacity

=head1 DESCRIPTION

Describes one or more scheduled scaling action updates for a specified
Auto Scaling group. Used in combination with
BatchPutScheduledUpdateGroupAction.

When updating a scheduled scaling action, all optional parameters are
left unchanged if not specified.

=head1 ATTRIBUTES


=head2 DesiredCapacity => Int

  The number of EC2 instances that should be running in the group.


=head2 EndTime => Str

  The time for the recurring schedule to end. Amazon EC2 Auto Scaling
does not perform the action after this time.


=head2 MaxSize => Int

  The maximum size of the group.


=head2 MinSize => Int

  The minimum size of the group.


=head2 Recurrence => Str

  The recurring schedule for the action, in Unix cron syntax format. For
more information about this format, see Crontab (http://crontab.org).


=head2 B<REQUIRED> ScheduledActionName => Str

  The name of the scaling action.


=head2 StartTime => Str

  The time for the action to start, in "YYYY-MM-DDThh:mm:ssZ" format in
UTC/GMT only (for example, C<2014-06-01T00:00:00Z>).

If you specify C<Recurrence> and C<StartTime>, Amazon EC2 Auto Scaling
performs the action at this time, and then performs the action based on
the specified recurrence.

If you try to schedule the action in the past, Amazon EC2 Auto Scaling
returns an error message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

