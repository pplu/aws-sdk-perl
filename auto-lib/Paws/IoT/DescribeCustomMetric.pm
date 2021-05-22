
package Paws::IoT::DescribeCustomMetric;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeCustomMetricResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCustomMetric - Arguments for method DescribeCustomMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeCustomMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeCustomMetricResponse = $iot->DescribeCustomMetric(
      MetricName => 'MyMetricName',

    );

    # Results:
    my $CreationDate     = $DescribeCustomMetricResponse->CreationDate;
    my $DisplayName      = $DescribeCustomMetricResponse->DisplayName;
    my $LastModifiedDate = $DescribeCustomMetricResponse->LastModifiedDate;
    my $MetricArn        = $DescribeCustomMetricResponse->MetricArn;
    my $MetricName       = $DescribeCustomMetricResponse->MetricName;
    my $MetricType       = $DescribeCustomMetricResponse->MetricType;

    # Returns a L<Paws::IoT::DescribeCustomMetricResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeCustomMetric>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricName => Str

The name of the custom metric.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

