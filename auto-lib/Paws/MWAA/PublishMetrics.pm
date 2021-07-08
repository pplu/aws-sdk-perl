
package Paws::MWAA::PublishMetrics;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EnvironmentName', required => 1);
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::MWAA::MetricDatum]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishMetrics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metrics/environments/{EnvironmentName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::PublishMetricsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::PublishMetrics - Arguments for method PublishMetrics on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishMetrics on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method PublishMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishMetrics.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $PublishMetricsOutput = $airflow->PublishMetrics(
      EnvironmentName => 'MyEnvironmentName',
      MetricData      => [
        {
          MetricName => 'MyString',
          Timestamp  => '1970-01-01T01:00:00',
          Dimensions => [
            {
              Name  => 'MyString',
              Value => 'MyString',

            },
            ...
          ],    # OPTIONAL
          StatisticValues => {
            Maximum     => 1,    # OPTIONAL
            Minimum     => 1,    # OPTIONAL
            SampleCount => 1,    # OPTIONAL
            Sum         => 1,    # OPTIONAL
          },    # OPTIONAL
          Unit => 'Seconds'
          , # values: Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
          Value => 1,    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/PublishMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentName => Str

Publishes environment metric data to Amazon CloudWatch.



=head2 B<REQUIRED> MetricData => ArrayRef[L<Paws::MWAA::MetricDatum>]

Publishes metric data points to Amazon CloudWatch. CloudWatch
associates the data points with the specified metrica.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishMetrics in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

