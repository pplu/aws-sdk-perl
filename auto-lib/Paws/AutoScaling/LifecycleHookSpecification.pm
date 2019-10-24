# Generated from default/object.tt
package Paws::AutoScaling::LifecycleHookSpecification;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AutoScaling::Types qw//;
  has DefaultResult => (is => 'ro', isa => Str);
  has HeartbeatTimeout => (is => 'ro', isa => Int);
  has LifecycleHookName => (is => 'ro', isa => Str, required => 1);
  has LifecycleTransition => (is => 'ro', isa => Str, required => 1);
  has NotificationMetadata => (is => 'ro', isa => Str);
  has NotificationTargetARN => (is => 'ro', isa => Str);
  has RoleARN => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NotificationTargetARN' => {
                                            'type' => 'Str'
                                          },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'NotificationMetadata' => {
                                           'type' => 'Str'
                                         },
               'DefaultResult' => {
                                    'type' => 'Str'
                                  },
               'LifecycleTransition' => {
                                          'type' => 'Str'
                                        },
               'LifecycleHookName' => {
                                        'type' => 'Str'
                                      },
               'HeartbeatTimeout' => {
                                       'type' => 'Int'
                                     }
             },
  'IsRequired' => {
                    'LifecycleTransition' => 1,
                    'LifecycleHookName' => 1
                  }
}
;
    return $Params_map;
  }


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

Describes a lifecycle hook. Used in combination with
CreateAutoScalingGroup.

A lifecycle hook tells Amazon EC2 Auto Scaling to perform an action on
an instance when the instance launches (before it is put into service)
or as the instance terminates (before it is fully terminated).

This step is a part of the procedure for creating a lifecycle hook for
an Auto Scaling group:

=over

=item 1.

(Optional) Create a Lambda function and a rule that allows CloudWatch
Events to invoke your Lambda function when Amazon EC2 Auto Scaling
launches or terminates instances.

=item 2.

(Optional) Create a notification target and an IAM role. The target can
be either an Amazon SQS queue or an Amazon SNS topic. The role allows
Amazon EC2 Auto Scaling to publish lifecycle notifications to the
target.

=item 3.

B<Create the lifecycle hook. Specify whether the hook is used when the
instances launch or terminate.>

=item 4.

If you need more time, record the lifecycle action heartbeat to keep
the instance in a pending state using using
RecordLifecycleActionHeartbeat.

=item 5.

If you finish before the timeout period ends, complete the lifecycle
action using CompleteLifecycleAction.

=back

For more information, see Amazon EC2 Auto Scaling Lifecycle Hooks
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/lifecycle-hooks.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

You can view the lifecycle hooks for an Auto Scaling group using
DescribeLifecycleHooks. You can modify an existing lifecycle hook or
create new lifecycle hooks using PutLifecycleHook. If you are no longer
using a lifecycle hook, you can delete it using DeleteLifecycleHook.

=head1 ATTRIBUTES


=head2 DefaultResult => Str

  Defines the action the Auto Scaling group should take when the
lifecycle hook timeout elapses or if an unexpected failure occurs. The
valid values are C<CONTINUE> and C<ABANDON>. The default value is
C<ABANDON>.


=head2 HeartbeatTimeout => Int

  The maximum time, in seconds, that can elapse before the lifecycle hook
times out.

If the lifecycle hook times out, Amazon EC2 Auto Scaling performs the
action that you specified in the C<DefaultResult> parameter. You can
prevent the lifecycle hook from timing out by calling
RecordLifecycleActionHeartbeat.


=head2 B<REQUIRED> LifecycleHookName => Str

  The name of the lifecycle hook.


=head2 B<REQUIRED> LifecycleTransition => Str

  The state of the EC2 instance to which you want to attach the lifecycle
hook. The valid values are:

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
to the specified notification target, for example, an Amazon SNS topic
or an Amazon SQS queue.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

