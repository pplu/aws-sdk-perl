
package Paws::IoTEvents::DescribeAlarmModelResponse;
  use Moose;
  has AlarmCapabilities => (is => 'ro', isa => 'Paws::IoTEvents::AlarmCapabilities', traits => ['NameInRequest'], request_name => 'alarmCapabilities');
  has AlarmEventActions => (is => 'ro', isa => 'Paws::IoTEvents::AlarmEventActions', traits => ['NameInRequest'], request_name => 'alarmEventActions');
  has AlarmModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelArn');
  has AlarmModelDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelDescription');
  has AlarmModelName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelName');
  has AlarmModelVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelVersion');
  has AlarmNotification => (is => 'ro', isa => 'Paws::IoTEvents::AlarmNotification', traits => ['NameInRequest'], request_name => 'alarmNotification');
  has AlarmRule => (is => 'ro', isa => 'Paws::IoTEvents::AlarmRule', traits => ['NameInRequest'], request_name => 'alarmRule');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Key => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'key');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Severity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'severity');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DescribeAlarmModelResponse

=head1 ATTRIBUTES


=head2 AlarmCapabilities => L<Paws::IoTEvents::AlarmCapabilities>

Contains the configuration information of alarm state changes.


=head2 AlarmEventActions => L<Paws::IoTEvents::AlarmEventActions>

Contains information about one or more alarm actions.


=head2 AlarmModelArn => Str

The ARN of the alarm model. For more information, see Amazon Resource
Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.


=head2 AlarmModelDescription => Str

The description of the alarm model.


=head2 AlarmModelName => Str

The name of the alarm model.


=head2 AlarmModelVersion => Str

The version of the alarm model.


=head2 AlarmNotification => L<Paws::IoTEvents::AlarmNotification>

Contains information about one or more notification actions.


=head2 AlarmRule => L<Paws::IoTEvents::AlarmRule>

Defines when your alarm is invoked.


=head2 CreationTime => Str

The time the alarm model was created, in the Unix epoch format.


=head2 Key => Str

An input attribute used as a key to create an alarm. AWS IoT Events
routes inputs
(https://docs.aws.amazon.com/iotevents/latest/apireference/API_Input.html)
associated with this key to the alarm.


=head2 LastUpdateTime => Str

The time the alarm model was last updated, in the Unix epoch format.


=head2 RoleArn => Str

The ARN of the IAM role that allows the alarm to perform actions and
access AWS resources. For more information, see Amazon Resource Names
(ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.


=head2 Severity => Int

A non-negative integer that reflects the severity level of the alarm.


=head2 Status => Str

The status of the alarm model. The status can be one of the following
values:

=over

=item *

C<ACTIVE> - The alarm model is active and it's ready to evaluate data.

=item *

C<ACTIVATING> - AWS IoT Events is activating your alarm model.
Activating an alarm model can take up to a few minutes.

=item *

C<INACTIVE> - The alarm model is inactive, so it isn't ready to
evaluate data. Check your alarm model information and update the alarm
model.

=item *

C<FAILED> - You couldn't create or update the alarm model. Check your
alarm model information and try again.

=back


Valid values are: C<"ACTIVE">, C<"ACTIVATING">, C<"INACTIVE">, C<"FAILED">
=head2 StatusMessage => Str

Contains information about the status of the alarm model.


=head2 _request_id => Str


=cut

