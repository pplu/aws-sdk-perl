package Paws::LookoutMetrics;
  use Moose;
  sub service { 'lookoutmetrics' }
  sub signing_name { 'lookoutmetrics' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ActivateAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ActivateAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BackTestAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::BackTestAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlert {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::CreateAlert', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::CreateAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMetricSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::CreateMetricSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlert {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DeleteAlert', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DeleteAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAlert {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DescribeAlert', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnomalyDetectionExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DescribeAnomalyDetectionExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DescribeAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMetricSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::DescribeMetricSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAnomalyGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::GetAnomalyGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::GetFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSampleData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::GetSampleData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAlerts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListAlerts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnomalyDetectors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListAnomalyDetectors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnomalyGroupSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListAnomalyGroupSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAnomalyGroupTimeSeries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListAnomalyGroupTimeSeries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMetricSets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListMetricSets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::PutFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAnomalyDetector {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::UpdateAnomalyDetector', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMetricSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::LookoutMetrics::UpdateMetricSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ActivateAnomalyDetector BackTestAnomalyDetector CreateAlert CreateAnomalyDetector CreateMetricSet DeleteAlert DeleteAnomalyDetector DescribeAlert DescribeAnomalyDetectionExecutions DescribeAnomalyDetector DescribeMetricSet GetAnomalyGroup GetFeedback GetSampleData ListAlerts ListAnomalyDetectors ListAnomalyGroupSummaries ListAnomalyGroupTimeSeries ListMetricSets ListTagsForResource PutFeedback TagResource UntagResource UpdateAnomalyDetector UpdateMetricSet / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics - Perl Interface to AWS Amazon Lookout for Metrics

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('LookoutMetrics');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

This is the I<Amazon Lookout for Metrics API Reference>. For an
introduction to the service with tutorials for getting started, visit
Amazon Lookout for Metrics Developer Guide
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics-2017-07-25>


=head1 METHODS

=head2 ActivateAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ActivateAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::ActivateAnomalyDetectorResponse> instance

Activates an anomaly detector.


=head2 BackTestAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::BackTestAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::BackTestAnomalyDetectorResponse> instance

Runs a backtest for anomaly detection for the specified resource.


=head2 CreateAlert

=over

=item Action => L<Paws::LookoutMetrics::Action>

=item AlertName => Str

=item AlertSensitivityThreshold => Int

=item AnomalyDetectorArn => Str

=item [AlertDescription => Str]

=item [Tags => L<Paws::LookoutMetrics::TagMap>]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::CreateAlert>

Returns: a L<Paws::LookoutMetrics::CreateAlertResponse> instance

Creates an alert for an anomaly detector.


=head2 CreateAnomalyDetector

=over

=item AnomalyDetectorConfig => L<Paws::LookoutMetrics::AnomalyDetectorConfig>

=item AnomalyDetectorName => Str

=item [AnomalyDetectorDescription => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::LookoutMetrics::TagMap>]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::CreateAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::CreateAnomalyDetectorResponse> instance

Creates an anomaly detector.


=head2 CreateMetricSet

=over

=item AnomalyDetectorArn => Str

=item MetricList => ArrayRef[L<Paws::LookoutMetrics::Metric>]

=item MetricSetName => Str

=item MetricSource => L<Paws::LookoutMetrics::MetricSource>

=item [DimensionList => ArrayRef[Str|Undef]]

=item [MetricSetDescription => Str]

=item [MetricSetFrequency => Str]

=item [Offset => Int]

=item [Tags => L<Paws::LookoutMetrics::TagMap>]

=item [TimestampColumn => L<Paws::LookoutMetrics::TimestampColumn>]

=item [Timezone => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::CreateMetricSet>

Returns: a L<Paws::LookoutMetrics::CreateMetricSetResponse> instance

Creates a dataset.


=head2 DeleteAlert

=over

=item AlertArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DeleteAlert>

Returns: a L<Paws::LookoutMetrics::DeleteAlertResponse> instance

Deletes an alert.


=head2 DeleteAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DeleteAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::DeleteAnomalyDetectorResponse> instance

Deletes a detector. Deleting an anomaly detector will delete all of its
corresponding resources including any configured datasets and alerts.


=head2 DescribeAlert

=over

=item AlertArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DescribeAlert>

Returns: a L<Paws::LookoutMetrics::DescribeAlertResponse> instance

Describes an alert.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 DescribeAnomalyDetectionExecutions

=over

=item AnomalyDetectorArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Timestamp => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DescribeAnomalyDetectionExecutions>

Returns: a L<Paws::LookoutMetrics::DescribeAnomalyDetectionExecutionsResponse> instance

Returns information about the status of the specified anomaly detection
jobs.


=head2 DescribeAnomalyDetector

=over

=item AnomalyDetectorArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DescribeAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::DescribeAnomalyDetectorResponse> instance

Describes a detector.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 DescribeMetricSet

=over

=item MetricSetArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::DescribeMetricSet>

Returns: a L<Paws::LookoutMetrics::DescribeMetricSetResponse> instance

Describes a dataset.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 GetAnomalyGroup

=over

=item AnomalyDetectorArn => Str

=item AnomalyGroupId => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::GetAnomalyGroup>

Returns: a L<Paws::LookoutMetrics::GetAnomalyGroupResponse> instance

Returns details about a group of anomalous metrics.


=head2 GetFeedback

=over

=item AnomalyDetectorArn => Str

=item AnomalyGroupTimeSeriesFeedback => L<Paws::LookoutMetrics::AnomalyGroupTimeSeries>

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::GetFeedback>

Returns: a L<Paws::LookoutMetrics::GetFeedbackResponse> instance

Get feedback for an anomaly group.


=head2 GetSampleData

=over

=item [S3SourceConfig => L<Paws::LookoutMetrics::SampleDataS3SourceConfig>]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::GetSampleData>

Returns: a L<Paws::LookoutMetrics::GetSampleDataResponse> instance

Returns a selection of sample records from an Amazon S3 datasource.


=head2 ListAlerts

=over

=item [AnomalyDetectorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListAlerts>

Returns: a L<Paws::LookoutMetrics::ListAlertsResponse> instance

Lists the alerts attached to a detector.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 ListAnomalyDetectors

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListAnomalyDetectors>

Returns: a L<Paws::LookoutMetrics::ListAnomalyDetectorsResponse> instance

Lists the detectors in the current AWS Region.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 ListAnomalyGroupSummaries

=over

=item AnomalyDetectorArn => Str

=item SensitivityThreshold => Int

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListAnomalyGroupSummaries>

Returns: a L<Paws::LookoutMetrics::ListAnomalyGroupSummariesResponse> instance

Returns a list of anomaly groups.


=head2 ListAnomalyGroupTimeSeries

=over

=item AnomalyDetectorArn => Str

=item AnomalyGroupId => Str

=item MetricName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListAnomalyGroupTimeSeries>

Returns: a L<Paws::LookoutMetrics::ListAnomalyGroupTimeSeriesResponse> instance

Gets a list of anomalous metrics for a measure in an anomaly group.


=head2 ListMetricSets

=over

=item [AnomalyDetectorArn => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListMetricSets>

Returns: a L<Paws::LookoutMetrics::ListMetricSetsResponse> instance

Lists the datasets in the current AWS Region.

Amazon Lookout for Metrics API actions are eventually consistent. If
you do a read operation on a resource immediately after creating or
modifying it, use retries to allow time for the write operation to
complete.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::ListTagsForResource>

Returns: a L<Paws::LookoutMetrics::ListTagsForResourceResponse> instance

Gets a list of tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
for a detector, dataset, or alert.


=head2 PutFeedback

=over

=item AnomalyDetectorArn => Str

=item AnomalyGroupTimeSeriesFeedback => L<Paws::LookoutMetrics::AnomalyGroupTimeSeriesFeedback>


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::PutFeedback>

Returns: a L<Paws::LookoutMetrics::PutFeedbackResponse> instance

Add feedback for an anomalous metric.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::LookoutMetrics::TagMap>


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::TagResource>

Returns: a L<Paws::LookoutMetrics::TagResourceResponse> instance

Adds tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
to a detector, dataset, or alert.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::UntagResource>

Returns: a L<Paws::LookoutMetrics::UntagResourceResponse> instance

Removes tags
(https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
from a detector, dataset, or alert.


=head2 UpdateAnomalyDetector

=over

=item AnomalyDetectorArn => Str

=item [AnomalyDetectorConfig => L<Paws::LookoutMetrics::AnomalyDetectorConfig>]

=item [AnomalyDetectorDescription => Str]

=item [KmsKeyArn => Str]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::UpdateAnomalyDetector>

Returns: a L<Paws::LookoutMetrics::UpdateAnomalyDetectorResponse> instance

Updates a detector. After activation, you can only change a detector's
ingestion delay and description.


=head2 UpdateMetricSet

=over

=item MetricSetArn => Str

=item [DimensionList => ArrayRef[Str|Undef]]

=item [MetricList => ArrayRef[L<Paws::LookoutMetrics::Metric>]]

=item [MetricSetDescription => Str]

=item [MetricSetFrequency => Str]

=item [MetricSource => L<Paws::LookoutMetrics::MetricSource>]

=item [Offset => Int]

=item [TimestampColumn => L<Paws::LookoutMetrics::TimestampColumn>]


=back

Each argument is described in detail in: L<Paws::LookoutMetrics::UpdateMetricSet>

Returns: a L<Paws::LookoutMetrics::UpdateMetricSetResponse> instance

Updates a dataset.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

