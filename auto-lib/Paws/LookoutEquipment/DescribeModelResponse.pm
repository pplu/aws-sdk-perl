
package Paws::LookoutEquipment::DescribeModelResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DataPreProcessingConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::DataPreProcessingConfiguration');
  has DatasetArn => (is => 'ro', isa => 'Str');
  has DatasetName => (is => 'ro', isa => 'Str');
  has EvaluationDataEndTime => (is => 'ro', isa => 'Str');
  has EvaluationDataStartTime => (is => 'ro', isa => 'Str');
  has FailedReason => (is => 'ro', isa => 'Str');
  has LabelsInputConfiguration => (is => 'ro', isa => 'Paws::LookoutEquipment::LabelsInputConfiguration');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelMetrics => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ServerSideKmsKeyId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str');
  has TrainingDataStartTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionEndTime => (is => 'ro', isa => 'Str');
  has TrainingExecutionStartTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeModelResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

Indicates the time and date at which the ML model was created.


=head2 DataPreProcessingConfiguration => L<Paws::LookoutEquipment::DataPreProcessingConfiguration>

The configuration is the C<TargetSamplingRate>, which is the sampling
rate of the data after post processing by Amazon Lookout for Equipment.
For example, if you provide data that has been collected at a 1 second
level and you want the system to resample the data at a 1 minute rate
before training, the C<TargetSamplingRate> is 1 minute.

When providing a value for the C<TargetSamplingRate>, you must attach
the prefix "PT" to the rate you want. The value for a 1 second rate is
therefore I<PT1S>, the value for a 15 minute rate is I<PT15M>, and the
value for a 1 hour rate is I<PT1H>


=head2 DatasetArn => Str

The Amazon Resouce Name (ARN) of the dataset used to create the ML
model being described.


=head2 DatasetName => Str

The name of the dataset being used by the ML being described.


=head2 EvaluationDataEndTime => Str

Indicates the time reference in the dataset that was used to end the
subset of evaluation data for the ML model.


=head2 EvaluationDataStartTime => Str

Indicates the time reference in the dataset that was used to begin the
subset of evaluation data for the ML model.


=head2 FailedReason => Str

If the training of the ML model failed, this indicates the reason for
that failure.


=head2 LabelsInputConfiguration => L<Paws::LookoutEquipment::LabelsInputConfiguration>

Specifies configuration information about the labels input, including
its S3 location.


=head2 LastUpdatedTime => Str

Indicates the last time the ML model was updated. The type of update is
not specified.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the ML model being described.


=head2 ModelMetrics => Str

The Model Metrics show an aggregated summary of the model's performance
within the evaluation time range. This is the JSON content of the
metrics created when evaluating the model.


=head2 ModelName => Str

The name of the ML model being described.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source for the ML model being described.


=head2 Schema => Str

A JSON description of the data that is in each time series dataset,
including names, column names, and data types.


=head2 ServerSideKmsKeyId => Str

Provides the identifier of the AWS KMS customer master key (CMK) used
to encrypt model data by Amazon Lookout for Equipment.


=head2 Status => Str

Specifies the current status of the model being described. Status
describes the status of the most recent action of the model.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">
=head2 TrainingDataEndTime => Str

Indicates the time reference in the dataset that was used to end the
subset of training data for the ML model.


=head2 TrainingDataStartTime => Str

Indicates the time reference in the dataset that was used to begin the
subset of training data for the ML model.


=head2 TrainingExecutionEndTime => Str

Indicates the time at which the training of the ML model was completed.


=head2 TrainingExecutionStartTime => Str

Indicates the time at which the training of the ML model began.


=head2 _request_id => Str


=cut

1;