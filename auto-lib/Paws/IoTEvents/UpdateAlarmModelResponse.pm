
package Paws::IoTEvents::UpdateAlarmModelResponse;
  use Moose;
  has AlarmModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelArn');
  has AlarmModelVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'alarmModelVersion');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has LastUpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdateTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::UpdateAlarmModelResponse

=head1 ATTRIBUTES


=head2 AlarmModelArn => Str

The ARN of the alarm model. For more information, see Amazon Resource
Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.


=head2 AlarmModelVersion => Str

The version of the alarm model.


=head2 CreationTime => Str

The time the alarm model was created, in the Unix epoch format.


=head2 LastUpdateTime => Str

The time the alarm model was last updated, in the Unix epoch format.


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
=head2 _request_id => Str


=cut

