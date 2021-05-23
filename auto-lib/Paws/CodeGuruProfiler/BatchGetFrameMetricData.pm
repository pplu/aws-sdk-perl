
package Paws::CodeGuruProfiler::BatchGetFrameMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'endTime');
  has FrameMetrics => (is => 'ro', isa => 'ArrayRef[Paws::CodeGuruProfiler::FrameMetric]', traits => ['NameInRequest'], request_name => 'frameMetrics');
  has Period => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'period');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'startTime');
  has TargetResolution => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'targetResolution');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetFrameMetricData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/frames/-/metrics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::BatchGetFrameMetricDataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::BatchGetFrameMetricData - Arguments for method BatchGetFrameMetricData on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetFrameMetricData on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method BatchGetFrameMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetFrameMetricData.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $BatchGetFrameMetricDataResponse =
      $codeguru -profiler->BatchGetFrameMetricData(
      ProfilingGroupName => 'MyProfilingGroupName',
      EndTime            => '1970-01-01T01:00:00',    # OPTIONAL
      FrameMetrics       => [
        {
          FrameName    => 'MyString',
          ThreadStates => [ 'MyString', ... ],
          Type =>
            'AggregatedRelativeTotalTime', # values: AggregatedRelativeTotalTime

        },
        ...
      ],                                   # OPTIONAL
      Period           => 'MyPeriod',               # OPTIONAL
      StartTime        => '1970-01-01T01:00:00',    # OPTIONAL
      TargetResolution => 'PT5M',                   # OPTIONAL
      );

    # Results:
    my $EndTime         = $BatchGetFrameMetricDataResponse->EndTime;
    my $EndTimes        = $BatchGetFrameMetricDataResponse->EndTimes;
    my $FrameMetricData = $BatchGetFrameMetricDataResponse->FrameMetricData;
    my $Resolution      = $BatchGetFrameMetricDataResponse->Resolution;
    my $StartTime       = $BatchGetFrameMetricDataResponse->StartTime;
    my $UnprocessedEndTimes =
      $BatchGetFrameMetricDataResponse->UnprocessedEndTimes;

  # Returns a L<Paws::CodeGuruProfiler::BatchGetFrameMetricDataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/BatchGetFrameMetricData>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end time of the time period for the returned time series values.
This is specified using the ISO 8601 format. For example,
2020-06-01T13:15:02.001Z represents 1 millisecond past June 1, 2020
1:15:02 PM UTC.



=head2 FrameMetrics => ArrayRef[L<Paws::CodeGuruProfiler::FrameMetric>]

The details of the metrics that are used to request a time series of
values. The metric includes the name of the frame, the aggregation type
to calculate the metric value for the frame, and the thread states to
use to get the count for the metric value of the frame.



=head2 Period => Str

The duration of the frame metrics used to return the time series
values. Specify using the ISO 8601 format. The maximum period duration
is one day (C<PT24H> or C<P1D>).



=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group associated with the the frame metrics
used to return the time series values.



=head2 StartTime => Str

The start time of the time period for the frame metrics used to return
the time series values. This is specified using the ISO 8601 format.
For example, 2020-06-01T13:15:02.001Z represents 1 millisecond past
June 1, 2020 1:15:02 PM UTC.



=head2 TargetResolution => Str

The requested resolution of time steps for the returned time series of
values. If the requested target resolution is not available due to data
not being retained we provide a best effort result by falling back to
the most granular available resolution after the target resolution.
There are 3 valid values.

=over

=item *

C<P1D> - 1 day

=item *

C<PT1H> - 1 hour

=item *

C<PT5M> - 5 minutes

=back


Valid values are: C<"PT5M">, C<"PT1H">, C<"P1D">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetFrameMetricData in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

