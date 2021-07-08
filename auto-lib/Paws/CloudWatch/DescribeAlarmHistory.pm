
package Paws::CloudWatch::DescribeAlarmHistory;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');
  has AlarmTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EndDate => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ScanBy => (is => 'ro', isa => 'Str');
  has StartDate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::DescribeAlarmHistoryOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAlarmHistoryResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAlarmHistory - Arguments for method DescribeAlarmHistory on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAlarmHistory on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DescribeAlarmHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAlarmHistory.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DescribeAlarmHistoryOutput = $monitoring->DescribeAlarmHistory(
      AlarmName  => 'MyAlarmName',    # OPTIONAL
      AlarmTypes => [
        'CompositeAlarm', ...         # values: CompositeAlarm, MetricAlarm
      ],    # OPTIONAL
      EndDate         => '1970-01-01T01:00:00',    # OPTIONAL
      HistoryItemType => 'ConfigurationUpdate',    # OPTIONAL
      MaxRecords      => 1,                        # OPTIONAL
      NextToken       => 'MyNextToken',            # OPTIONAL
      ScanBy          => 'TimestampDescending',    # OPTIONAL
      StartDate       => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $AlarmHistoryItems = $DescribeAlarmHistoryOutput->AlarmHistoryItems;
    my $NextToken         = $DescribeAlarmHistoryOutput->NextToken;

    # Returns a L<Paws::CloudWatch::DescribeAlarmHistoryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeAlarmHistory>

=head1 ATTRIBUTES


=head2 AlarmName => Str

The name of the alarm.



=head2 AlarmTypes => ArrayRef[Str|Undef]

Use this parameter to specify whether you want the operation to return
metric alarms or composite alarms. If you omit this parameter, only
metric alarms are returned.



=head2 EndDate => Str

The ending date to retrieve alarm history.



=head2 HistoryItemType => Str

The type of alarm histories to retrieve.

Valid values are: C<"ConfigurationUpdate">, C<"StateUpdate">, C<"Action">

=head2 MaxRecords => Int

The maximum number of alarm history records to retrieve.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.



=head2 ScanBy => Str

Specified whether to return the newest or oldest alarm history first.
Specify C<TimestampDescending> to have the newest event history
returned first, and specify C<TimestampAscending> to have the oldest
history returned first.

Valid values are: C<"TimestampDescending">, C<"TimestampAscending">

=head2 StartDate => Str

The starting date to retrieve alarm history.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarmHistory in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

