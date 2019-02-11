
package Paws::AutoScaling::PutLifecycleHook;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DefaultResult => (is => 'ro', isa => 'Str');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleTransition => (is => 'ro', isa => 'Str');
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLifecycleHook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::PutLifecycleHookAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutLifecycleHookResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::PutLifecycleHook - Arguments for method PutLifecycleHook on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLifecycleHook on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method PutLifecycleHook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLifecycleHook.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To create a lifecycle hook
    # This example creates a lifecycle hook.
    my $PutLifecycleHookAnswer = $autoscaling->PutLifecycleHook(
      {
        'AutoScalingGroupName' => 'my-auto-scaling-group',
        'LifecycleHookName'    => 'my-lifecycle-hook',
        'LifecycleTransition'  => 'autoscaling:EC2_INSTANCE_LAUNCHING',
        'NotificationTargetARN' =>
          'arn:aws:sns:us-west-2:123456789012:my-sns-topic --role-arn',
        'RoleARN' => 'arn:aws:iam::123456789012:role/my-auto-scaling-role'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/PutLifecycleHook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 DefaultResult => Str

Defines the action the Auto Scaling group should take when the
lifecycle hook timeout elapses or if an unexpected failure occurs. This
parameter can be either C<CONTINUE> or C<ABANDON>. The default value is
C<ABANDON>.



=head2 HeartbeatTimeout => Int

The maximum time, in seconds, that can elapse before the lifecycle hook
times out. The range is from 30 to 7200 seconds. The default is 3600
seconds (1 hour).

If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the
default action. You can prevent the lifecycle hook from timing out by
calling RecordLifecycleActionHeartbeat.



=head2 B<REQUIRED> LifecycleHookName => Str

The name of the lifecycle hook.



=head2 LifecycleTransition => Str

The instance state to which you want to attach the lifecycle hook. The
possible values are:

=over

=item *

autoscaling:EC2_INSTANCE_LAUNCHING

=item *

autoscaling:EC2_INSTANCE_TERMINATING

=back

This parameter is required for new lifecycle hooks, but optional when
updating existing hooks.



=head2 NotificationMetadata => Str

Contains additional information that you want to include any time
Amazon EC2 Auto Scaling sends a message to the notification target.



=head2 NotificationTargetARN => Str

The ARN of the notification target that Amazon EC2 Auto Scaling uses to
notify you when an instance is in the transition state for the
lifecycle hook. This target can be either an SQS queue or an SNS topic.
If you specify an empty string, this overrides the current ARN.

This operation uses the JSON format when sending notifications to an
Amazon SQS queue, and an email key-value pair format when sending
notifications to an Amazon SNS topic.

When you specify a notification target, Amazon EC2 Auto Scaling sends
it a test message. Test messages contain the following additional
key-value pair: C<"Event": "autoscaling:TEST_NOTIFICATION">.



=head2 RoleARN => Str

The ARN of the IAM role that allows the Auto Scaling group to publish
to the specified notification target.

This parameter is required for new lifecycle hooks, but optional when
updating existing hooks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLifecycleHook in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

