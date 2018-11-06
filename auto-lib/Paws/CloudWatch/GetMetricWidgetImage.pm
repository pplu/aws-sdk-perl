
package Paws::CloudWatch::GetMetricWidgetImage;
  use Moose;
  has MetricWidget => (is => 'ro', isa => 'Str', required => 1);
  has OutputFormat => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricWidgetImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetMetricWidgetImageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricWidgetImageResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricWidgetImage - Arguments for method GetMetricWidgetImage on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricWidgetImage on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetMetricWidgetImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricWidgetImage.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetMetricWidgetImageOutput = $monitoring->GetMetricWidgetImage(
      MetricWidget => 'MyMetricWidget',
      OutputFormat => 'MyOutputFormat',    # OPTIONAL
    );

    # Results:
    my $MetricWidgetImage = $GetMetricWidgetImageOutput->MetricWidgetImage;

    # Returns a L<Paws::CloudWatch::GetMetricWidgetImageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetMetricWidgetImage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricWidget => Str

A JSON string that defines the bitmap graph to be retrieved. The string
includes the metrics to include in the graph, statistics, annotations,
title, axis limits, and so on. You can include only one C<MetricWidget>
parameter in each C<GetMetricWidgetImage> call.

For more information about the syntax of C<MetricWidget> see
CloudWatch-Metric-Widget-Structure.

If any metric on the graph could not load all the requested data
points, an orange triangle with an exclamation point appears next to
the graph legend.



=head2 OutputFormat => Str

The format of the resulting image. Only PNG images are supported.

The default is C<png>. If you specify C<png>, the API returns an HTTP
response with the content-type set to C<text/xml>. The image data is in
a C<MetricWidgetImage> field. For example:

C<E<lt>GetMetricWidgetImageResponse
xmlns="http://monitoring.amazonaws.com/doc/2010-08-01/"E<gt>>

C<E<lt>GetMetricWidgetImageResultE<gt>>

C<E<lt>MetricWidgetImageE<gt>>

C<iVBORw0KGgoAAAANSUhEUgAAAlgAAAGQEAYAAAAip...>

C<E<lt>/MetricWidgetImageE<gt>>

C<E<lt>/GetMetricWidgetImageResultE<gt>>

C<E<lt>ResponseMetadataE<gt>>

C<E<lt>RequestIdE<gt>6f0d4192-4d42-11e8-82c1-f539a07e0e3bE<lt>/RequestIdE<gt>>

C<E<lt>/ResponseMetadataE<gt>>

C<E<lt>/GetMetricWidgetImageResponseE<gt>>

The C<image/png> setting is intended only for custom HTTP requests. For
most use cases, and all actions using an AWS SDK, you should use
C<png>. If you specify C<image/png>, the HTTP response has a
content-type set to C<image/png>, and the body of the response is a PNG
image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricWidgetImage in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

