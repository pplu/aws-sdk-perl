
package Paws::Forecast::GetAccuracyMetrics;
  use Moose;
  has PredictorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccuracyMetrics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::GetAccuracyMetricsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::GetAccuracyMetrics - Arguments for method GetAccuracyMetrics on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccuracyMetrics on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method GetAccuracyMetrics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccuracyMetrics.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $GetAccuracyMetricsResponse = $forecast->GetAccuracyMetrics(
      PredictorArn => 'MyArn',

    );

    # Results:
    my $PredictorEvaluationResults =
      $GetAccuracyMetricsResponse->PredictorEvaluationResults;

    # Returns a L<Paws::Forecast::GetAccuracyMetricsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/GetAccuracyMetrics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor to get metrics for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccuracyMetrics in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

