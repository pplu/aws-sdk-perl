package Paws::AutoScaling::LifecycleHookSpecification;
  use Moose;
  has DefaultResult => (is => 'ro', isa => 'Str');
  has HeartbeatTimeout => (is => 'ro', isa => 'Int');
  has LifecycleHookName => (is => 'ro', isa => 'Str', required => 1);
  has LifecycleTransition => (is => 'ro', isa => 'Str', required => 1);
  has NotificationMetadata => (is => 'ro', isa => 'Str');
  has NotificationTargetARN => (is => 'ro', isa => 'Str');
  has RoleARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LifecycleHookSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LifecycleHookSpecification object:

  $service_obj->Method(Att1 => { DefaultResult => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LifecycleHookSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultResult

=head1 DESCRIPTION

Describes a lifecycle hook, which tells Amazon EC2 Auto Scaling that
you want to perform an action whenever it launches instances or
whenever it terminates instances.

For more information, see Lifecycle Hooks
(http://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

=head1 ATTRIBUTES


=head2 DefaultResult => Str

  Defines the action the Auto Scaling group should take when the
lifecycle hook timeout elapses or if an unexpected failure occurs. The
valid values are C<CONTINUE> and C<ABANDON>.


=head2 HeartbeatTimeout => Int

  The maximum time, in seconds, that can elapse before the lifecycle hook
times out. If the lifecycle hook times out, Amazon EC2 Auto Scaling
performs the default action. You can prevent the lifecycle hook from
timing out by calling RecordLifecycleActionHeartbeat.


=head2 B<REQUIRED> LifecycleHookName => Str

  The name of the lifecycle hook.


=head2 B<REQUIRED> LifecycleTransition => Str

  The state of the EC2 instance to which you want to attach the lifecycle
hook. The possible values are:

=over

=item *

autoscaling:EC2_INSTANCE_LAUNCHING

=item *

autoscaling:EC2_INSTANCE_TERMINATING

=back



=head2 NotificationMetadata => Str

  Additional information that you want to include any time Amazon EC2
Auto Scaling sends a message to the notification target.


=head2 NotificationTargetARN => Str

  The ARN of the target that Amazon EC2 Auto Scaling sends notifications
to when an instance is in the transition state for the lifecycle hook.
The notification target can be either an SQS queue or an SNS topic.


=head2 RoleARN => Str

  The ARN of the IAM role that allows the Auto Scaling group to publish
to the specified notification target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

