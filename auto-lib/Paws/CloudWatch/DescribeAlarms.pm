
package Paws::CloudWatch::DescribeAlarms;
  use Moose;
  has ActionPrefix => (is => 'ro', isa => 'Str');
  has AlarmNamePrefix => (is => 'ro', isa => 'Str');
  has AlarmNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
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
      ],                                         # OPTIONAL
      MaxRecords => 1,                           # OPTIONAL
      NextToken  => 'MyNextToken',               # OPTIONAL
      StateValue => 'OK',                        # OPTIONAL
    );

    # Results:
    my $MetricAlarms = $DescribeAlarmsOutput->MetricAlarms;
    my $NextToken    = $DescribeAlarmsOutput->NextToken;

    # Returns a L<Paws::CloudWatch::DescribeAlarmsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeAlarms>

=head1 ATTRIBUTES


=head2 ActionPrefix => Str

The action name prefix.



=head2 AlarmNamePrefix => Str

The alarm name prefix. If this parameter is specified, you cannot
specify C<AlarmNames>.



=head2 AlarmNames => ArrayRef[Str|Undef]

The names of the alarms.



=head2 MaxRecords => Int

The maximum number of alarm descriptions to retrieve.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.



=head2 StateValue => Str

The state value to be used in matching alarms.

Valid values are: C<"OK">, C<"ALARM">, C<"INSUFFICIENT_DATA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAlarms in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

