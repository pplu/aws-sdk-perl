package Paws::CloudWatch::MetricDataQuery;
  use Moose;
  has Expression => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Label => (is => 'ro', isa => 'Str');
  has MetricStat => (is => 'ro', isa => 'Paws::CloudWatch::MetricStat');
  has ReturnData => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricDataQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricDataQuery object:

  $service_obj->Method(Att1 => { Expression => $value, ..., ReturnData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricDataQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Expression

=head1 DESCRIPTION

This structure is used in both C<GetMetricData> and C<PutMetricAlarm>.
The supported use of this structure is different for those two
operations.

When used in C<GetMetricData>, it indicates the metric data to return,
and whether this call is just retrieving a batch set of data for one
metric, or is performing a math expression on metric data. A single
C<GetMetricData> call can include up to 100 C<MetricDataQuery>
structures.

When used in C<PutMetricAlarm>, it enables you to create an alarm based
on a metric math expression. Each C<MetricDataQuery> in the array
specifies either a metric to retrieve, or a math expression to be
performed on retrieved metrics. A single C<PutMetricAlarm> call can
include up to 20 C<MetricDataQuery> structures in the array. The 20
structures can include as many as 10 structures that contain a
C<MetricStat> parameter to retrieve a metric, and as many as 10
structures that contain the C<Expression> parameter to perform a math
expression. Any expression used in a C<PutMetricAlarm> operation must
return a single time series. For more information, see Metric Math
Syntax and Functions
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
in the I<Amazon CloudWatch User Guide>.

Some of the parameters of this structure also have different uses
whether you are using this structure in a C<GetMetricData> operation or
a C<PutMetricAlarm> operation. These differences are explained in the
following parameter list.

=head1 ATTRIBUTES


=head2 Expression => Str

  The math expression to be performed on the returned data, if this
object is performing a math expression. This expression can use the
C<Id> of the other metrics to refer to those metrics, and can also use
the C<Id> of other expressions to use the result of those expressions.
For more information about metric math expressions, see Metric Math
Syntax and Functions
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/using-metric-math.html#metric-math-syntax)
in the I<Amazon CloudWatch User Guide>.

Within each MetricDataQuery object, you must specify either
C<Expression> or C<MetricStat> but not both.


=head2 B<REQUIRED> Id => Str

  A short name used to tie this object to the results in the response.
This name must be unique within a single call to C<GetMetricData>. If
you are performing math expressions on this set of data, this name
represents that data and can serve as a variable in the mathematical
expression. The valid characters are letters, numbers, and underscore.
The first character must be a lowercase letter.


=head2 Label => Str

  A human-readable label for this metric or expression. This is
especially useful if this is an expression, so that you know what the
value represents. If the metric or expression is shown in a CloudWatch
dashboard widget, the label is shown. If Label is omitted, CloudWatch
generates a default.


=head2 MetricStat => L<Paws::CloudWatch::MetricStat>

  The metric to be returned, along with statistics, period, and units.
Use this parameter only if this object is retrieving a metric and not
performing a math expression on returned data.

Within one MetricDataQuery object, you must specify either
C<Expression> or C<MetricStat> but not both.


=head2 ReturnData => Bool

  When used in C<GetMetricData>, this option indicates whether to return
the timestamps and raw data values of this metric. If you are
performing this call just to do math expressions and do not also need
the raw data returned, you can specify C<False>. If you omit this, the
default of C<True> is used.

When used in C<PutMetricAlarm>, specify C<True> for the one expression
result to use as the alarm. For all other metrics and expressions in
the same C<PutMetricAlarm> operation, specify C<ReturnData> as False.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

