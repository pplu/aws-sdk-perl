
package Paws::CloudWatch::ListMetrics;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::DimensionFilter]');
  has MetricName => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::ListMetricsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListMetrics - Arguments for method ListMetrics on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetrics on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method ListMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetrics.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $ListMetricsOutput = $monitoring->ListMetrics(
      Dimensions => [
        {
          Name  => 'MyDimensionName',     # min: 1, max: 255
          Value => 'MyDimensionValue',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                  # OPTIONAL
      MetricName => 'MyMetricName',       # OPTIONAL
      Namespace  => 'MyNamespace',        # OPTIONAL
      NextToken  => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $Metrics   = $ListMetricsOutput->Metrics;
    my $NextToken = $ListMetricsOutput->NextToken;

    # Returns a L<Paws::CloudWatch::ListMetricsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/ListMetrics>

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::DimensionFilter>]

The dimensions to filter against.



=head2 MetricName => Str

The name of the metric to filter against.



=head2 Namespace => Str

The namespace to filter against.



=head2 NextToken => Str

The token returned by a previous call to indicate that there is more
data available.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetrics in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

