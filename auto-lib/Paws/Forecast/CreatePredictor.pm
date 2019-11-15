
package Paws::Forecast::CreatePredictor;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has EvaluationParameters => (is => 'ro', isa => 'Paws::Forecast::EvaluationParameters');
  has FeaturizationConfig => (is => 'ro', isa => 'Paws::Forecast::FeaturizationConfig', required => 1);
  has ForecastHorizon => (is => 'ro', isa => 'Int', required => 1);
  has HPOConfig => (is => 'ro', isa => 'Paws::Forecast::HyperParameterTuningJobConfig');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Forecast::InputDataConfig', required => 1);
  has PerformAutoML => (is => 'ro', isa => 'Bool');
  has PerformHPO => (is => 'ro', isa => 'Bool');
  has PredictorName => (is => 'ro', isa => 'Str', required => 1);
  has TrainingParameters => (is => 'ro', isa => 'Paws::Forecast::TrainingParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePredictor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreatePredictorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreatePredictor - Arguments for method CreatePredictor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePredictor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreatePredictor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePredictor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreatePredictorResponse = $forecast->CreatePredictor(
      FeaturizationConfig => {
        ForecastFrequency => 'MyFrequency',
        Featurizations    => [
          {
            AttributeName         => 'MyName',    # min: 1, max: 63
            FeaturizationPipeline => [
              {
                FeaturizationMethodName       => 'filling',    # values: filling
                FeaturizationMethodParameters => {
                  'MyParameterKey' =>
                    'MyParameterValue',    # key: max: 256, value: max: 256
                },    # min: 1, max: 20; OPTIONAL
              },
              ...
            ],        # min: 1, max: 1; OPTIONAL
          },
          ...
        ],            # min: 1, max: 1; OPTIONAL
        ForecastDimensions => [
          'MyName', ...    # min: 1, max: 63
        ],                 # min: 1, max: 5; OPTIONAL
      },
      ForecastHorizon => 1,
      InputDataConfig => {
        DatasetGroupArn       => 'MyArn',    # max: 256
        SupplementaryFeatures => [
          {
            Name  => 'MyName',               # min: 1, max: 63
            Value => 'MyValue',              # max: 256

          },
          ...
        ],                                   # min: 1, max: 1; OPTIONAL
      },
      PredictorName    => 'MyName',
      AlgorithmArn     => 'MyArn',           # OPTIONAL
      EncryptionConfig => {
        KMSKeyArn => 'MyKMSKeyArn',          # max: 256
        RoleArn   => 'MyArn',                # max: 256

      },    # OPTIONAL
      EvaluationParameters => {
        BackTestWindowOffset    => 1,
        NumberOfBacktestWindows => 1,
      },    # OPTIONAL
      HPOConfig => {
        ParameterRanges => {
          CategoricalParameterRanges => [
            {
              Name   => 'MyName',    # min: 1, max: 63
              Values => [
                'MyValue', ...       # max: 256
              ],                     # min: 1, max: 20

            },
            ...
          ],                         # min: 1, max: 20; OPTIONAL
          ContinuousParameterRanges => [
            {
              MaxValue    => 1,
              MinValue    => 1,
              Name        => 'MyName',    # min: 1, max: 63
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
          IntegerParameterRanges => [
            {
              MaxValue    => 1,
              MinValue    => 1,
              Name        => 'MyName',    # min: 1, max: 63
              ScalingType => 'Auto'
              , # values: Auto, Linear, Logarithmic, ReverseLogarithmic; OPTIONAL
            },
            ...
          ],    # min: 1, max: 20; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PerformAutoML      => 1,    # OPTIONAL
      PerformHPO         => 1,    # OPTIONAL
      TrainingParameters => {
        'MyParameterKey' => 'MyParameterValue', # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $PredictorArn = $CreatePredictorResponse->PredictorArn;

    # Returns a L<Paws::Forecast::CreatePredictorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreatePredictor>

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

The Amazon Resource Name (ARN) of the algorithm to use for model
training. Required if C<PerformAutoML> is not set to C<true>.

B<Supported algorithms>

=over

=item *

C<arn:aws:forecast:::algorithm/ARIMA>

=item *

C<arn:aws:forecast:::algorithm/Deep_AR_Plus>

C<- supports hyperparameter optimization (HPO)>

=item *

C<arn:aws:forecast:::algorithm/ETS>

=item *

C<arn:aws:forecast:::algorithm/NPTS>

=item *

C<arn:aws:forecast:::algorithm/Prophet>

=back




=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.



=head2 EvaluationParameters => L<Paws::Forecast::EvaluationParameters>

Used to override the default evaluation parameters of the specified
algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
into training data and testing data. The evaluation parameters define
how to perform the split and the number of iterations.



=head2 B<REQUIRED> FeaturizationConfig => L<Paws::Forecast::FeaturizationConfig>

The featurization configuration.



=head2 B<REQUIRED> ForecastHorizon => Int

Specifies the number of time-steps that the model is trained to
predict. The forecast horizon is also called the prediction length.

For example, if you configure a dataset for daily data collection
(using the C<DataFrequency> parameter of the CreateDataset operation)
and set the forecast horizon to 10, the model returns predictions for
10 days.



=head2 HPOConfig => L<Paws::Forecast::HyperParameterTuningJobConfig>

Provides hyperparameter override values for the algorithm. If you don't
provide this parameter, Amazon Forecast uses default values. The
individual algorithms specify which hyperparameters support
hyperparameter optimization (HPO). For more information, see
aws-forecast-choosing-recipes.



=head2 B<REQUIRED> InputDataConfig => L<Paws::Forecast::InputDataConfig>

Describes the dataset group that contains the data to use to train the
predictor.



=head2 PerformAutoML => Bool

Whether to perform AutoML. The default value is C<false>. In this case,
you are required to specify an algorithm.

If you want Amazon Forecast to evaluate the algorithms it provides and
choose the best algorithm and configuration for your training dataset,
set C<PerformAutoML> to C<true>. This is a good option if you aren't
sure which algorithm is suitable for your application.



=head2 PerformHPO => Bool

Whether to perform hyperparameter optimization (HPO). HPO finds optimal
hyperparameter values for your training data. The process of performing
HPO is known as a hyperparameter tuning job.

The default value is C<false>. In this case, Amazon Forecast uses
default hyperparameter values from the chosen algorithm.

To override the default values, set C<PerformHPO> to C<true> and supply
the HyperParameterTuningJobConfig object. The tuning job specifies an
objective metric, the hyperparameters to optimize, and the valid range
for each hyperparameter.

The following algorithms support HPO:

=over

=item *

DeepAR+

=back




=head2 B<REQUIRED> PredictorName => Str

A name for the predictor.



=head2 TrainingParameters => L<Paws::Forecast::TrainingParameters>

The training parameters to override for model training. The parameters
that you can override are listed in the individual algorithms in
aws-forecast-choosing-recipes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePredictor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

