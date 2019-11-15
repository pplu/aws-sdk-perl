package Paws::CloudWatch::MetricStat;
  use Moose;
  has Metric => (is => 'ro', isa => 'Paws::CloudWatch::Metric', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Stat => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricStat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricStat object:

  $service_obj->Method(Att1 => { Metric => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricStat object:

  $result = $service_obj->Method(...);
  $result->Att1->Metric

=head1 DESCRIPTION

This structure defines the metric to be returned, along with the
statistics, period, and units.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Metric => L<Paws::CloudWatch::Metric>

  The metric to return, including the metric name, namespace, and
dimensions.


=head2 B<REQUIRED> Period => Int

  The granularity, in seconds, of the returned data points. For metrics
with regular resolution, a period can be as short as one minute (60
seconds) and must be a multiple of 60. For high-resolution metrics that
are collected at intervals of less than one minute, the period can be
1, 5, 10, 30, 60, or any multiple of 60. High-resolution metrics are
those metrics stored by a C<PutMetricData> call that includes a
C<StorageResolution> of 1 second.

If the C<StartTime> parameter specifies a time stamp that is greater
than 3 hours ago, you must specify the period as follows or no data
points in that time range is returned:

=over

=item *

Start time between 3 hours and 15 days ago - Use a multiple of 60
seconds (1 minute).

=item *

Start time between 15 and 63 days ago - Use a multiple of 300 seconds
(5 minutes).

=item *

Start time greater than 63 days ago - Use a multiple of 3600 seconds (1
hour).

=back



=head2 B<REQUIRED> Stat => Str

  The statistic to return. It can include any CloudWatch statistic or
extended statistic.


=head2 Unit => Str

  When you are using a C<Put> operation, this defines what unit you want
to use when storing the metric.

In a C<Get> operation, if you omit C<Unit> then all data that was
collected with any unit is returned, along with the corresponding units
that were specified when the data was reported to CloudWatch. If you
specify a unit, the operation returns only data data that was collected
with that unit specified. If you specify a unit that does not match the
data collected, the results of the operation are null. CloudWatch does
not perform unit conversions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

