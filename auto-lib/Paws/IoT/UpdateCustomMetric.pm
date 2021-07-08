
package Paws::IoT::UpdateCustomMetric;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateCustomMetricResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateCustomMetric - Arguments for method UpdateCustomMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateCustomMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateCustomMetricResponse = $iot->UpdateCustomMetric(
      DisplayName => 'MyCustomMetricDisplayName',
      MetricName  => 'MyMetricName',

    );

    # Results:
    my $CreationDate     = $UpdateCustomMetricResponse->CreationDate;
    my $DisplayName      = $UpdateCustomMetricResponse->DisplayName;
    my $LastModifiedDate = $UpdateCustomMetricResponse->LastModifiedDate;
    my $MetricArn        = $UpdateCustomMetricResponse->MetricArn;
    my $MetricName       = $UpdateCustomMetricResponse->MetricName;
    my $MetricType       = $UpdateCustomMetricResponse->MetricType;

    # Returns a L<Paws::IoT::UpdateCustomMetricResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateCustomMetric>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

Field represents a friendly name in the console for the custom metric,
it doesn't have to be unique. Don't use this name as the metric
identifier in the device metric report. Can be updated.



=head2 B<REQUIRED> MetricName => Str

The name of the custom metric. Cannot be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

