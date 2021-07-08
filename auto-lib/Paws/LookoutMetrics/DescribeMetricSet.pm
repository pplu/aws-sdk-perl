
package Paws::LookoutMetrics::DescribeMetricSet;
  use Moose;
  has MetricSetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMetricSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeMetricSet');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutMetrics::DescribeMetricSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeMetricSet - Arguments for method DescribeMetricSet on L<Paws::LookoutMetrics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMetricSet on the
L<Amazon Lookout for Metrics|Paws::LookoutMetrics> service. Use the attributes of this class
as arguments to method DescribeMetricSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMetricSet.

=head1 SYNOPSIS

    my $lookoutmetrics = Paws->service('LookoutMetrics');
    my $DescribeMetricSetResponse = $lookoutmetrics->DescribeMetricSet(
      MetricSetArn => 'MyArn',

    );

    # Results:
    my $AnomalyDetectorArn   = $DescribeMetricSetResponse->AnomalyDetectorArn;
    my $CreationTime         = $DescribeMetricSetResponse->CreationTime;
    my $DimensionList        = $DescribeMetricSetResponse->DimensionList;
    my $LastModificationTime = $DescribeMetricSetResponse->LastModificationTime;
    my $MetricList           = $DescribeMetricSetResponse->MetricList;
    my $MetricSetArn         = $DescribeMetricSetResponse->MetricSetArn;
    my $MetricSetDescription = $DescribeMetricSetResponse->MetricSetDescription;
    my $MetricSetFrequency   = $DescribeMetricSetResponse->MetricSetFrequency;
    my $MetricSetName        = $DescribeMetricSetResponse->MetricSetName;
    my $MetricSource         = $DescribeMetricSetResponse->MetricSource;
    my $Offset               = $DescribeMetricSetResponse->Offset;
    my $TimestampColumn      = $DescribeMetricSetResponse->TimestampColumn;
    my $Timezone             = $DescribeMetricSetResponse->Timezone;

    # Returns a L<Paws::LookoutMetrics::DescribeMetricSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutmetrics/DescribeMetricSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricSetArn => Str

The ARN of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMetricSet in L<Paws::LookoutMetrics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

