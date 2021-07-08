
package Paws::Forecast::DescribePredictorResponse;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str');
  has AutoMLAlgorithmArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AutoMLOverrideStrategy => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetImportJobArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has EvaluationParameters => (is => 'ro', isa => 'Paws::Forecast::EvaluationParameters');
  has FeaturizationConfig => (is => 'ro', isa => 'Paws::Forecast::FeaturizationConfig');
  has ForecastHorizon => (is => 'ro', isa => 'Int');
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HPOConfig => (is => 'ro', isa => 'Paws::Forecast::HyperParameterTuningJobConfig');
  has InputDataConfig => (is => 'ro', isa => 'Paws::Forecast::InputDataConfig');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has PerformAutoML => (is => 'ro', isa => 'Bool');
  has PerformHPO => (is => 'ro', isa => 'Bool');
  has PredictorArn => (is => 'ro', isa => 'Str');
  has PredictorExecutionDetails => (is => 'ro', isa => 'Paws::Forecast::PredictorExecutionDetails');
  has PredictorName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingParameters => (is => 'ro', isa => 'Paws::Forecast::TrainingParameters');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribePredictorResponse

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

The Amazon Resource Name (ARN) of the algorithm used for model
training.


=head2 AutoMLAlgorithmArns => ArrayRef[Str|Undef]

When C<PerformAutoML> is specified, the ARN of the chosen algorithm.


=head2 AutoMLOverrideStrategy => Str

The AutoML strategy used to train the predictor. Unless
C<LatencyOptimized> is specified, the AutoML strategy optimizes
predictor accuracy.

This parameter is only valid for predictors trained using AutoML.

Valid values are: C<"LatencyOptimized">
=head2 CreationTime => Str

When the model training task was created.


=head2 DatasetImportJobArns => ArrayRef[Str|Undef]

An array of the ARNs of the dataset import jobs used to import training
data for the predictor.


=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.


=head2 EstimatedTimeRemainingInMinutes => Int

The estimated time remaining in minutes for the predictor training job
to complete.


=head2 EvaluationParameters => L<Paws::Forecast::EvaluationParameters>

Used to override the default evaluation parameters of the specified
algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
into training data and testing data. The evaluation parameters define
how to perform the split and the number of iterations.


=head2 FeaturizationConfig => L<Paws::Forecast::FeaturizationConfig>

The featurization configuration.


=head2 ForecastHorizon => Int

The number of time-steps of the forecast. The forecast horizon is also
called the prediction length.


=head2 ForecastTypes => ArrayRef[Str|Undef]

The forecast types used during predictor training. Default value is
C<["0.1","0.5","0.9"]>


=head2 HPOConfig => L<Paws::Forecast::HyperParameterTuningJobConfig>

The hyperparameter override values for the algorithm.


=head2 InputDataConfig => L<Paws::Forecast::InputDataConfig>

Describes the dataset group that contains the data to use to train the
predictor.


=head2 LastModificationTime => Str

The last time the resource was modified. The timestamp depends on the
status of the job:

=over

=item *

C<CREATE_PENDING> - The C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<CREATE_STOPPING> - The current timestamp.

=item *

C<CREATE_STOPPED> - When the job stopped.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 PerformAutoML => Bool

Whether the predictor is set to perform AutoML.


=head2 PerformHPO => Bool

Whether the predictor is set to perform hyperparameter optimization
(HPO).


=head2 PredictorArn => Str

The ARN of the predictor.


=head2 PredictorExecutionDetails => L<Paws::Forecast::PredictorExecutionDetails>

Details on the the status and results of the backtests performed to
evaluate the accuracy of the predictor. You specify the number of
backtests to perform when you call the operation.


=head2 PredictorName => Str

The name of the predictor.


=head2 Status => Str

The status of the predictor. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=item *

C<CREATE_STOPPING>, C<CREATE_STOPPED>

=back

The C<Status> of the predictor must be C<ACTIVE> before you can use the
predictor to create a forecast.


=head2 TrainingParameters => L<Paws::Forecast::TrainingParameters>

The default training parameters or overrides selected during model
training. When running AutoML or choosing HPO with CNN-QR or DeepAR+,
the optimized values for the chosen hyperparameters are returned. For
more information, see aws-forecast-choosing-recipes.


=head2 _request_id => Str


=cut

1;