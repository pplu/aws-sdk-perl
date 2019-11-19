# Generated from callargs_class.tt

package Paws::CloudWatch::DeleteAnomalyDetector;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatch::Types qw/CloudWatch_Dimension/;
  has Dimensions => (is => 'ro', isa => ArrayRef[CloudWatch_Dimension], predicate => 1);
  has MetricName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Namespace => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Stat => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteAnomalyDetector');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatch::DeleteAnomalyDetectorOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DeleteAnomalyDetectorResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'MetricName' => 1,
                    'Stat' => 1,
                    'Namespace' => 1
                  },
  'types' => {
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Dimensions' => {
                                 'class' => 'Paws::CloudWatch::Dimension',
                                 'type' => 'ArrayRef[CloudWatch_Dimension]'
                               },
               'Stat' => {
                           'type' => 'Str'
                         },
               'MetricName' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DeleteAnomalyDetector - Arguments for method DeleteAnomalyDetector on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnomalyDetector on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DeleteAnomalyDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnomalyDetector.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DeleteAnomalyDetectorOutput = $monitoring->DeleteAnomalyDetector(
      MetricName => 'MyMetricName',
      Namespace  => 'MyNamespace',
      Stat       => 'MyStat',
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255

        },
        ...
      ],                                  # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DeleteAnomalyDetector>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[CloudWatch_Dimension]

The metric dimensions associated with the anomaly detection model to
delete.



=head2 B<REQUIRED> MetricName => Str

The metric name associated with the anomaly detection model to delete.



=head2 B<REQUIRED> Namespace => Str

The namespace associated with the anomaly detection model to delete.



=head2 B<REQUIRED> Stat => Str

The statistic associated with the anomaly detection model to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnomalyDetector in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

