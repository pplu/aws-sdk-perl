
package Paws::CloudWatch::PutMetricData;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricData - Arguments for method PutMetricData on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricData on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricData.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    $monitoring->PutMetricData(
      MetricData => [
        {
          MetricName => 'MyMetricName',    # min: 1, max: 255
          Counts     => [ 1, ... ],        # OPTIONAL
          Dimensions => [
            {
              Name  => 'MyDimensionName',     # min: 1, max: 255
              Value => 'MyDimensionValue',    # min: 1, max: 255

            },
            ...
          ],                                  # max: 10; OPTIONAL
          StatisticValues => {
            Maximum     => 1,
            Minimum     => 1,
            SampleCount => 1,
            Sum         => 1,

          },                                  # OPTIONAL
          StorageResolution => 1,                        # min: 1; OPTIONAL
          Timestamp         => '1970-01-01T01:00:00',    # OPTIONAL
          Unit              => 'Seconds'
          , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
          Value  => 1,
          Values => [ 1, ... ],    # OPTIONAL
        },
        ...
      ],
      Namespace => 'MyNamespace',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetricData => ArrayRef[L<Paws::CloudWatch::MetricDatum>]

The data for the metric. The array can include no more than 20 metrics
per call.



=head2 B<REQUIRED> Namespace => Str

The namespace for the metric data.

You cannot specify a namespace that begins with "AWS/". Namespaces that
begin with "AWS/" are reserved for use by Amazon Web Services products.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricData in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

