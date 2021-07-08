
package Paws::IoT::CreateCustomMetric;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has MetricName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'metricName', required => 1);
  has MetricType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricType', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomMetric');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-metric/{metricName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateCustomMetricResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateCustomMetric - Arguments for method CreateCustomMetric on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomMetric on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateCustomMetric.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomMetric.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateCustomMetricResponse = $iot->CreateCustomMetric(
      ClientRequestToken => 'MyClientRequestToken',
      MetricName         => 'MyMetricName',
      MetricType         => 'string-list',
      DisplayName        => 'MyCustomMetricDisplayName',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $MetricArn  = $CreateCustomMetricResponse->MetricArn;
    my $MetricName = $CreateCustomMetricResponse->MetricName;

    # Returns a L<Paws::IoT::CreateCustomMetricResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateCustomMetric>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

Each custom metric must have a unique client request token. If you try
to create a new custom metric that already exists with a different
token, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 DisplayName => Str

Field represents a friendly name in the console for the custom metric;
it doesn't have to be unique. Don't use this name as the metric
identifier in the device metric report. Can be updated once defined.



=head2 B<REQUIRED> MetricName => Str

The name of the custom metric. This will be used in the metric report
submitted from the device/thing. Shouldn't begin with C<aws:>. Cannot
be updated once defined.



=head2 B<REQUIRED> MetricType => Str

The type of the custom metric. Types include C<string-list>,
C<ip-address-list>, C<number-list>, and C<number>.

Valid values are: C<"string-list">, C<"ip-address-list">, C<"number-list">, C<"number">

=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata that can be used to manage the custom metric.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomMetric in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

