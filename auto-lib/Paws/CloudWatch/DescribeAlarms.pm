
package Paws::CloudWatch::DescribeAlarms;
  use Moose;
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AlarmTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ChildrenOfAlarmName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParentsOfAlarmName => (is => 'ro', isa => 'Str');
  has StateValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarms');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DescribeAlarmsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAlarms - Arguments for method DescribeAlarms on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlarms on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DescribeAlarms.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlarms.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DescribeAlarmsOutput = $monitoring->DescribeAlarms(
      ActionPrefix    => 'MyActionPrefix',       # OPTIONAL
      AlarmNamePrefix => 'MyAlarmNamePrefix',    # OPTIONAL
      AlarmNames      => [
        'MyAlarmName', ...                       # min: 1, max: 255
      ],    # OPTIONAL
      AlarmTypes => [
        'CompositeAlarm', ...    # values: CompositeAlarm, MetricAlarm
      ],    # OPTIONAL
      ChildrenOfAlarmName => 'MyAlarmName',    # OPTIONAL
      MaxRecords          => 1,                # OPTIONAL
      NextToken           => 'MyNextToken',    # OPTIONAL
      ParentsOfAlarmName  => 'MyAlarmName',    # OPTIONAL
      StateValue          => 'OK',             # OPTIONAL
    );

    # Results:
    my $CompositeAlarms = $DescribeAlarmsOutput->CompositeAlarms;
    my $MetricAlarms    = $DescribeAlarmsOutput->MetricAlarms;
    my $NextToken       = $DescribeAlarmsOutput->NextToken;

    # Returns a L<Paws::CloudWatch::DescribeAlarmsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeAlarms>

=head1 ATTRIBUTES


=head2 ActionPrefix => Str

Use this parameter to filter the results of the operation to only those
alarms that use a certain alarm action. For example, you could specify
the ARN of an SNS topic to find all alarms that send notifications to
that topic.



=head2 AlarmNamePrefix => Str

An alarm name prefix. If you specify this parameter, you receive
information about all alarms that have names that start with this
prefix.

If this parameter is specified, you cannot specify C<AlarmNames>.



=head2 AlarmNames => ArrayRef[Str|Undef]

The names of the alarms to retrieve information about.



=head2 AlarmTypes => ArrayRef[Str|Undef]

Use this parameter to specify whether you want the operation to return
metric alarms or composite alarms. If you omit this parameter, only
metric alarms are returned.



=head2 ChildrenOfAlarmName => Str

If you use this parameter and specify the name of a composite alarm,
the operation returns information about the "children" alarms of the
alarm you specify. These are the metric alarms and composite alarms
referenced in the C<AlarmRule> field of the composite alarm that you
specify in C<ChildrenOfAlarmName>. Information about the composite
alarm that you name in C<ChildrenOfAlarmName> is not returned.

If you specify C<ChildrenOfAlarmName>, you cannot specify any other
parameters in the request except for C<MaxRecords> and C<NextToken>. If
you do so, you receive a validation error.

Only the C<Alarm Name>, C<ARN>, C<StateValue>
(OK/ALARM/INSUFFICIENT_DATA), and C<StateUpdatedTimestamp> information
are returned by this operation when you use this parameter. To get
complete information about these alarms, perform another
C<DescribeAlarms> operation and specify the parent alarm names in the
C<AlarmNames> parameter.



=head2 MaxRecords => Int

The maximum number of alarm descriptions to retrieve.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.



=head2 ParentsOfAlarmName => Str

If you use this parameter and specify the name of a metric or composite
alarm, the operation returns information about the "parent" alarms of
the alarm you specify. These are the composite alarms that have
C<AlarmRule> parameters that reference the alarm named in
C<ParentsOfAlarmName>. Information about the alarm that you specify in
C<ParentsOfAlarmName> is not returned.

If you specify C<ParentsOfAlarmName>, you cannot specify any other
parameters in the request except for C<MaxRecords> and C<NextToken>. If
you do so, you receive a validation error.

Only the Alarm Name and ARN are returned by this operation when you use
this parameter. To get complete information about these alarms, perform
another C<DescribeAlarms> operation and specify the parent alarm names
in the C<AlarmNames> parameter.



=head2 StateValue => Str

Specify this parameter to receive information only about alarms that
are currently in the state that you specify.

Valid values are: C<"OK">, C<"ALARM">, C<"INSUFFICIENT_DATA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarms in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

