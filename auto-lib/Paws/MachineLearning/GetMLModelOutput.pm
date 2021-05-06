
package Paws::MachineLearning::GetMLModelOutput;
  use Moose;
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has EndpointInfo => (is => 'ro', isa => 'Paws::MachineLearning::RealtimeEndpointInfo');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has InputDataLocationS3 => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MLModelId => (is => 'ro', isa => 'Str');
  has MLModelType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Recipe => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Str');
  has ScoreThreshold => (is => 'ro', isa => 'Num');
  has ScoreThresholdLastUpdatedAt => (is => 'ro', isa => 'Str');
  has SizeInBytes => (is => 'ro', isa => 'Int');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingDataSourceId => (is => 'ro', isa => 'Str');
  has TrainingParameters => (is => 'ro', isa => 'Paws::MachineLearning::TrainingParameters');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::GetMLModelOutput

=head1 ATTRIBUTES


=head2 ComputeTime => Int

The approximate CPU time in milliseconds that Amazon Machine Learning
spent processing the C<MLModel>, normalized and scaled on computation
resources. C<ComputeTime> is only available if the C<MLModel> is in the
C<COMPLETED> state.


=head2 CreatedAt => Str

The time that the C<MLModel> was created. The time is expressed in
epoch time.


=head2 CreatedByIamUser => Str

The AWS user account from which the C<MLModel> was created. The account
type can be either an AWS root account or an AWS Identity and Access
Management (IAM) user account.


=head2 EndpointInfo => L<Paws::MachineLearning::RealtimeEndpointInfo>

The current endpoint of the C<MLModel>


=head2 FinishedAt => Str

The epoch time when Amazon Machine Learning marked the C<MLModel> as
C<COMPLETED> or C<FAILED>. C<FinishedAt> is only available when the
C<MLModel> is in the C<COMPLETED> or C<FAILED> state.


=head2 InputDataLocationS3 => Str

The location of the data file or directory in Amazon Simple Storage
Service (Amazon S3).


=head2 LastUpdatedAt => Str

The time of the most recent edit to the C<MLModel>. The time is
expressed in epoch time.


=head2 LogUri => Str

A link to the file that contains logs of the C<CreateMLModel>
operation.


=head2 Message => Str

A description of the most recent details about accessing the
C<MLModel>.


=head2 MLModelId => Str

The MLModel ID, which is same as the C<MLModelId> in the request.


=head2 MLModelType => Str

Identifies the C<MLModel> category. The following are the available
types:

=over

=item * REGRESSION -- Produces a numeric result. For example, "What
price should a house be listed at?"

=item * BINARY -- Produces one of two possible results. For example,
"Is this an e-commerce website?"

=item * MULTICLASS -- Produces one of several possible results. For
example, "Is this a HIGH, LOW or MEDIUM risk trade?"

=back


Valid values are: C<"REGRESSION">, C<"BINARY">, C<"MULTICLASS">
=head2 Name => Str

A user-supplied name or description of the C<MLModel>.


=head2 Recipe => Str

The recipe to use when training the C<MLModel>. The C<Recipe> provides
detailed information about the observation data to use during training,
and manipulations to perform on the observation data during training.

This parameter is provided as part of the verbose format.


=head2 Schema => Str

The schema used by all of the data files referenced by the
C<DataSource>.

This parameter is provided as part of the verbose format.


=head2 ScoreThreshold => Num

The scoring threshold is used in binary classification C<MLModel>
models. It marks the boundary between a positive prediction and a
negative prediction.

Output values greater than or equal to the threshold receive a positive
result from the MLModel, such as C<true>. Output values less than the
threshold receive a negative response from the MLModel, such as
C<false>.


=head2 ScoreThresholdLastUpdatedAt => Str

The time of the most recent edit to the C<ScoreThreshold>. The time is
expressed in epoch time.


=head2 SizeInBytes => Int




=head2 StartedAt => Str

The epoch time when Amazon Machine Learning marked the C<MLModel> as
C<INPROGRESS>. C<StartedAt> isn't available if the C<MLModel> is in the
C<PENDING> state.


=head2 Status => Str

The current status of the C<MLModel>. This element can have one of the
following values:

=over

=item * C<PENDING> - Amazon Machine Learning (Amazon ML) submitted a
request to describe a C<MLModel>.

=item * C<INPROGRESS> - The request is processing.

=item * C<FAILED> - The request did not run to completion. The ML model
isn't usable.

=item * C<COMPLETED> - The request completed successfully.

=item * C<DELETED> - The C<MLModel> is marked as deleted. It isn't
usable.

=back


Valid values are: C<"PENDING">, C<"INPROGRESS">, C<"FAILED">, C<"COMPLETED">, C<"DELETED">
=head2 TrainingDataSourceId => Str

The ID of the training C<DataSource>.


=head2 TrainingParameters => L<Paws::MachineLearning::TrainingParameters>

A list of the training parameters in the C<MLModel>. The list is
implemented as a map of key-value pairs.

The following is the current set of training parameters:

=over

=item *

C<sgd.maxMLModelSizeInBytes> - The maximum allowed size of the model.
Depending on the input data, the size of the model might affect its
performance.

The value is an integer that ranges from C<100000> to C<2147483648>.
The default value is C<33554432>.

=item *

C<sgd.maxPasses> - The number of times that the training process
traverses the observations to build the C<MLModel>. The value is an
integer that ranges from C<1> to C<10000>. The default value is C<10>.

=item *

C<sgd.shuffleType> - Whether Amazon ML shuffles the training data.
Shuffling data improves a model's ability to find the optimal solution
for a variety of data types. The valid values are C<auto> and C<none>.
The default value is C<none>. We strongly recommend that you shuffle
your data.

=item *

C<sgd.l1RegularizationAmount> - The coefficient regularization L1 norm.
It controls overfitting the data by penalizing large coefficients. This
tends to drive coefficients to zero, resulting in a sparse feature set.
If you use this parameter, start by specifying a small value, such as
C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L1 normalization. This parameter can't be used
when C<L2> is specified. Use this parameter sparingly.

=item *

C<sgd.l2RegularizationAmount> - The coefficient regularization L2 norm.
It controls overfitting the data by penalizing large coefficients. This
tends to drive coefficients to small, nonzero values. If you use this
parameter, start by specifying a small value, such as C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L2 normalization. This parameter can't be used
when C<L1> is specified. Use this parameter sparingly.

=back



=head2 _request_id => Str


=cut

1;