
package Paws::Forecast::DescribePredictorResponse;
  use Moose;
  has AlgorithmArn => (is => 'ro', isa => 'Str');
  has AutoMLAlgorithmArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatasetImportJobArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has EvaluationParameters => (is => 'ro', isa => 'Paws::Forecast::EvaluationParameters');
  has FeaturizationConfig => (is => 'ro', isa => 'Paws::Forecast::FeaturizationConfig');
  has ForecastHorizon => (is => 'ro', isa => 'Int');
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


=head2 CreationTime => Str

When the model training task was created.


=head2 DatasetImportJobArns => ArrayRef[Str|Undef]

An array of the ARNs of the dataset import jobs used to import training
data for the predictor.


=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.


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


=head2 HPOConfig => L<Paws::Forecast::HyperParameterTuningJobConfig>

The hyperparameter override values for the algorithm.


=head2 InputDataConfig => L<Paws::Forecast::InputDataConfig>

Describes the dataset group that contains the data to use to train the
predictor.


=head2 LastModificationTime => Str

Initially, the same as C<CreationTime> (when the status is
C<CREATE_PENDING>). This value is updated when training starts (when
the status changes to C<CREATE_IN_PROGRESS>), and when training has
completed (when the status changes to C<ACTIVE>) or fails (when the
status changes to C<CREATE_FAILED>).


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

C<UPDATE_PENDING>, C<UPDATE_IN_PROGRESS>, C<UPDATE_FAILED>

=back

The C<Status> of the predictor must be C<ACTIVE> before you can use the
predictor to create a forecast.


=head2 TrainingParameters => L<Paws::Forecast::TrainingParameters>

The default training parameters or overrides selected during model
training. If using the AutoML algorithm or if HPO is turned on while
using the DeepAR+ algorithms, the optimized values for the chosen
hyperparameters are returned. For more information, see
aws-forecast-choosing-recipes.


=head2 _request_id => Str


=cut

1;