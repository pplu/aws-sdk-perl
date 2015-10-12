package Paws::CloudWatch::MetricAlarm;
  use Moose;
  has ActionsEnabled => (is => 'ro', isa => 'Bool');
  has AlarmActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has AlarmArn => (is => 'ro', isa => 'Str');
  has AlarmConfigurationUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has AlarmDescription => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has EvaluationPeriods => (is => 'ro', isa => 'Int');
  has InsufficientDataActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OKActions => (is => 'ro', isa => 'ArrayRef[Str]');
  has Period => (is => 'ro', isa => 'Int');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonData => (is => 'ro', isa => 'Str');
  has StateUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');
  has Statistic => (is => 'ro', isa => 'Str');
  has Threshold => (is => 'ro', isa => 'Num');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricAlarm

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricAlarm object:

  $service_obj->Method(Att1 => { ActionsEnabled => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricAlarm object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionsEnabled

=head1 ATTRIBUTES

=head2 ActionsEnabled => Bool

  Indicates whether actions should be executed during any changes to the
alarm's state.

=head2 AlarmActions => ArrayRef[Str]

  The list of actions to execute when this alarm transitions into an
C<ALARM> state from any other state. Each action is specified as an
Amazon Resource Number (ARN). Currently the only actions supported are
publishing to an Amazon SNS topic and triggering an Auto Scaling
policy.

=head2 AlarmArn => Str

  The Amazon Resource Name (ARN) of the alarm.

=head2 AlarmConfigurationUpdatedTimestamp => Str

  The time stamp of the last update to the alarm configuration. Amazon
CloudWatch uses Coordinated Universal Time (UTC) when returning time
stamps, which do not accommodate seasonal adjustments such as daylight
savings time. For more information, see Time stamps in the I<Amazon
CloudWatch Developer Guide>.

=head2 AlarmDescription => Str

  The description for the alarm.

=head2 AlarmName => Str

  The name of the alarm.

=head2 ComparisonOperator => Str

  The arithmetic operation to use when comparing the specified
C<Statistic> and C<Threshold>. The specified C<Statistic> value is used
as the first operand.

=head2 Dimensions => ArrayRef[Paws::CloudWatch::Dimension]

  The list of dimensions associated with the alarm's associated metric.

=head2 EvaluationPeriods => Int

  The number of periods over which data is compared to the specified
threshold.

=head2 InsufficientDataActions => ArrayRef[Str]

  The list of actions to execute when this alarm transitions into an
C<INSUFFICIENT_DATA> state from any other state. Each action is
specified as an Amazon Resource Number (ARN). Currently the only
actions supported are publishing to an Amazon SNS topic or triggering
an Auto Scaling policy.

The current WSDL lists this attribute as C<UnknownActions>.

=head2 MetricName => Str

  The name of the alarm's metric.

=head2 Namespace => Str

  The namespace of alarm's associated metric.

=head2 OKActions => ArrayRef[Str]

  The list of actions to execute when this alarm transitions into an
C<OK> state from any other state. Each action is specified as an Amazon
Resource Number (ARN). Currently the only actions supported are
publishing to an Amazon SNS topic and triggering an Auto Scaling
policy.

=head2 Period => Int

  The period in seconds over which the statistic is applied.

=head2 StateReason => Str

  A human-readable explanation for the alarm's state.

=head2 StateReasonData => Str

  An explanation for the alarm's state in machine-readable JSON format

=head2 StateUpdatedTimestamp => Str

  The time stamp of the last update to the alarm's state. Amazon
CloudWatch uses Coordinated Universal Time (UTC) when returning time
stamps, which do not accommodate seasonal adjustments such as daylight
savings time. For more information, see Time stamps in the I<Amazon
CloudWatch Developer Guide>.

=head2 StateValue => Str

  The state value for the alarm.

=head2 Statistic => Str

  The statistic to apply to the alarm's associated metric.

=head2 Threshold => Num

  The value against which the specified statistic is compared.

=head2 Unit => Str

  The unit of the alarm's associated metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

