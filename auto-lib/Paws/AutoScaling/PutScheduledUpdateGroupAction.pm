
package Paws::AutoScaling::PutScheduledUpdateGroupAction;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredCapacity => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has MaxSize => (is => 'ro', isa => 'Int');
  has MinSize => (is => 'ro', isa => 'Int');
  has Recurrence => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScheduledUpdateGroupAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutScheduledUpdateGroupAction - Arguments for method PutScheduledUpdateGroupAction on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScheduledUpdateGroupAction on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutScheduledUpdateGroupAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScheduledUpdateGroupAction.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To add a scheduled action to an Auto Scaling group
    # This example adds the specified scheduled action to the specified Auto
    # Scaling group.
    $autoscaling->PutScheduledUpdateGroupAction(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'DesiredCapacity'      => 4,
        'EndTime'              => '2014-05-12T08:00:00Z',
        'MaxSize'              => 6,
        'MinSize'              => 2,
        'ScheduledActionName'  => 'my-scheduled-action',
        'StartTime'            => '2014-05-12T08:00:00Z'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutScheduledUpdateGroupAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 DesiredCapacity => Int

The number of EC2 instances that should be running in the group.



=head2 EndTime => Str

The time for the recurring schedule to end. Amazon EC2 Auto Scaling
does not perform the action after this time.



=head2 MaxSize => Int

The maximum size for the Auto Scaling group.



=head2 MinSize => Int

The minimum size for the Auto Scaling group.



=head2 Recurrence => Str

The recurring schedule for this action, in Unix cron syntax format. For
more information about this format, see Crontab (http://crontab.org).



=head2 B<REQUIRED> ScheduledActionName => Str

The name of this scaling action.



=head2 StartTime => Str

The time for this action to start, in "YYYY-MM-DDThh:mm:ssZ" format in
UTC/GMT only (for example, C<2014-06-01T00:00:00Z>).

If you specify C<Recurrence> and C<StartTime>, Amazon EC2 Auto Scaling
performs the action at this time, and then performs the action based on
the specified recurrence.

If you try to schedule your action in the past, Amazon EC2 Auto Scaling
returns an error message.



=head2 Time => Str

This parameter is deprecated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScheduledUpdateGroupAction in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

