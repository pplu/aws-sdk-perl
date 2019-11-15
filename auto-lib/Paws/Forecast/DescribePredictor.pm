
package Paws::Forecast::DescribePredictor;
  use Moose;
  has PredictorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePredictor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribePredictorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribePredictor - Arguments for method DescribePredictor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePredictor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribePredictor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePredictor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribePredictorResponse = $forecast->DescribePredictor(
      PredictorArn => 'MyArn',

    );

    # Results:
    my $AlgorithmArn         = $DescribePredictorResponse->AlgorithmArn;
    my $AutoMLAlgorithmArns  = $DescribePredictorResponse->AutoMLAlgorithmArns;
    my $CreationTime         = $DescribePredictorResponse->CreationTime;
    my $DatasetImportJobArns = $DescribePredictorResponse->DatasetImportJobArns;
    my $EncryptionConfig     = $DescribePredictorResponse->EncryptionConfig;
    my $EvaluationParameters = $DescribePredictorResponse->EvaluationParameters;
    my $FeaturizationConfig  = $DescribePredictorResponse->FeaturizationConfig;
    my $ForecastHorizon      = $DescribePredictorResponse->ForecastHorizon;
    my $HPOConfig            = $DescribePredictorResponse->HPOConfig;
    my $InputDataConfig      = $DescribePredictorResponse->InputDataConfig;
    my $LastModificationTime = $DescribePredictorResponse->LastModificationTime;
    my $Message              = $DescribePredictorResponse->Message;
    my $PerformAutoML        = $DescribePredictorResponse->PerformAutoML;
    my $PerformHPO           = $DescribePredictorResponse->PerformHPO;
    my $PredictorArn         = $DescribePredictorResponse->PredictorArn;
    my $PredictorName        = $DescribePredictorResponse->PredictorName;
    my $Status               = $DescribePredictorResponse->Status;
    my $TrainingParameters   = $DescribePredictorResponse->TrainingParameters;

    # Returns a L<Paws::Forecast::DescribePredictorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribePredictor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor that you want
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePredictor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

