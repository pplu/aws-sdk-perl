package Paws::SSM::NotificationConfig;
  use Moose;
  has NotificationArn => (is => 'ro', isa => 'Str');
  has NotificationEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NotificationType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::NotificationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::NotificationConfig object:

  $service_obj->Method(Att1 => { NotificationArn => $value, ..., NotificationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::NotificationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->NotificationArn

=head1 DESCRIPTION

Configurations for sending notifications.

=head1 ATTRIBUTES


=head2 NotificationArn => Str

  An Amazon Resource Name (ARN) for a Simple Notification Service (SNS)
topic. Run Command pushes notifications about command status changes to
this topic.


=head2 NotificationEvents => ArrayRef[Str|Undef]

  The different events for which you can receive notifications. These
events include the following: All (events), InProgress, Success,
TimedOut, Cancelled, Failed. To learn more about these events, see
Configuring Amazon SNS Notifications for Run Command
(http://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html)
in the I<AWS Systems Manager User Guide>.


=head2 NotificationType => Str

  Command: Receive notification when the status of a command changes.
Invocation: For commands sent to multiple instances, receive
notification on a per-instance basis when the status of a command
changes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

