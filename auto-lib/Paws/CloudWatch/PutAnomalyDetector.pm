# Generated from callargs_class.tt

package Paws::CloudWatch::PutAnomalyDetector;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_Dimension CloudWatch_AnomalyDetectorConfiguration/;
  has Configuration => (is => 'ro', isa => CloudWatch_AnomalyDetectorConfiguration, predicate => 1);
  has Dimensions => (is => 'ro', isa => ArrayRef[CloudWatch_Dimension], predicate => 1);
  has MetricName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Namespace => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Stat => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutAnomalyDetector');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatch::PutAnomalyDetectorOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'PutAnomalyDetectorResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Stat' => {
                           'type' => 'Str'
                         },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Dimensions' => {
                                 'class' => 'Paws::CloudWatch::Dimension',
                                 'type' => 'ArrayRef[CloudWatch_Dimension]'
                               },
               'Configuration' => {
                                    'class' => 'Paws::CloudWatch::AnomalyDetectorConfiguration',
                                    'type' => 'CloudWatch_AnomalyDetectorConfiguration'
                                  },
               'MetricName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'Stat' => 1,
                    'Namespace' => 1,
                    'MetricName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutAnomalyDetector - Arguments for method PutAnomalyDetector on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAnomalyDetector on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method PutAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAnomalyDetector.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $PutAnomalyDetectorOutput = $monitoring->PutAnomalyDetector(
      MetricName    => 'MyMetricName',
      Namespace     => 'MyNamespace',
      Stat          => 'MyStat',
      Configuration => {
        ExcludedTimeRanges => [
          {
            EndTime   => '1970-01-01T01:00:00',
            StartTime => '1970-01-01T01:00:00',

          },
          ...
        ],    # OPTIONAL
        MetricTimezone => 'MyAnomalyDetectorMetricTimezone',    # OPTIONAL
      },    # OPTIONAL
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255

        },
        ...
      ],                                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/PutAnomalyDetector>

=head1 ATTRIBUTES


=head2 Configuration => CloudWatch_AnomalyDetectorConfiguration

The configuration specifies details about how the anomaly detection
model is to be trained, including time ranges to exclude when training
and updating the model. You can specify as many as 10 time ranges.

The configuration can also include the time zone to use for the metric.

You can in



=head2 Dimensions => ArrayRef[CloudWatch_Dimension]

The metric dimensions to create the anomaly detection model for.



=head2 B<REQUIRED> MetricName => Str

The name of the metric to create the anomaly detection model for.



=head2 B<REQUIRED> Namespace => Str

The namespace of the metric to create the anomaly detection model for.



=head2 B<REQUIRED> Stat => Str

The statistic to use for the metric and the anomaly detection model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAnomalyDetector in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

