# Generated from callargs_class.tt

package Paws::CloudWatch::DescribeAnomalyDetectors;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CloudWatch::Types qw/CloudWatch_Dimension/;
  has Dimensions => (is => 'ro', isa => ArrayRef[CloudWatch_Dimension], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has MetricName => (is => 'ro', isa => Str, predicate => 1);
  has Namespace => (is => 'ro', isa => Str, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAnomalyDetectors');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatch::DescribeAnomalyDetectorsOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeAnomalyDetectorsResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Dimensions' => {
                                 'class' => 'Paws::CloudWatch::Dimension',
                                 'type' => 'ArrayRef[CloudWatch_Dimension]'
                               },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::DescribeAnomalyDetectors - Arguments for method DescribeAnomalyDetectors on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnomalyDetectors on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method DescribeAnomalyDetectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnomalyDetectors.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $DescribeAnomalyDetectorsOutput = $monitoring->DescribeAnomalyDetectors(
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255

        },
        ...
      ],                                  # OPTIONAL
      MaxResults => 1,                    # OPTIONAL
      MetricName => 'MyMetricName',       # OPTIONAL
      Namespace  => 'MyNamespace',        # OPTIONAL
      NextToken  => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $AnomalyDetectors = $DescribeAnomalyDetectorsOutput->AnomalyDetectors;
    my $NextToken        = $DescribeAnomalyDetectorsOutput->NextToken;

    # Returns a L<Paws::CloudWatch::DescribeAnomalyDetectorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/DescribeAnomalyDetectors>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[CloudWatch_Dimension]

Limits the results to only the anomaly detection models that are
associated with the specified metric dimensions. If there are multiple
metrics that have these dimensions and have anomaly detection models
associated, they're all returned.



=head2 MaxResults => Int

The maximum number of results to return in one operation. The maximum
value you can specify is 10.

To retrieve the remaining results, make another call with the returned
C<NextToken> value.



=head2 MetricName => Str

Limits the results to only the anomaly detection models that are
associated with the specified metric name. If there are multiple
metrics with this name in different namespaces that have anomaly
detection models, they're all returned.



=head2 Namespace => Str

Limits the results to only the anomaly detection models that are
associated with the specified namespace.



=head2 NextToken => Str

Use the token returned by the previous operation to request the next
page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnomalyDetectors in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

