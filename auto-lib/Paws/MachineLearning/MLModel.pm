package Paws::MachineLearning::MLModel;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str');
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has EndpointInfo => (is => 'ro', isa => 'Paws::MachineLearning::RealtimeEndpointInfo');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has InputDataLocationS3 => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MLModelId => (is => 'ro', isa => 'Str');
  has MLModelType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ScoreThreshold => (is => 'ro', isa => 'Num');
  has ScoreThresholdLastUpdatedAt => (is => 'ro', isa => 'Str');
  has SizeInBytes => (is => 'ro', isa => 'Int');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrainingDataSourceId => (is => 'ro', isa => 'Str');
  has TrainingParameters => (is => 'ro', isa => 'Paws::MachineLearning::TrainingParameters');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::MLModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::MLModel object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., TrainingParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::MLModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Represents the output of a C<GetMLModel> operation.

The content consists of the detailed metadata and the current status of
the C<MLModel>.

=head1 ATTRIBUTES


=head2 Algorithm => Str

  The algorithm used to train the C<MLModel>. The following algorithm is
supported:

=over

=item * C<SGD> -- Stochastic gradient descent. The goal of C<SGD> is to
minimize the gradient of the loss function.

=back



=head2 ComputeTime => Int

  


=head2 CreatedAt => Str

  The time that the C<MLModel> was created. The time is expressed in
epoch time.


=head2 CreatedByIamUser => Str

  The AWS user account from which the C<MLModel> was created. The account
type can be either an AWS root account or an AWS Identity and Access
Management (IAM) user account.


=head2 EndpointInfo => L<Paws::MachineLearning::RealtimeEndpointInfo>

  The current endpoint of the C<MLModel>.


=head2 FinishedAt => Str

  


=head2 InputDataLocationS3 => Str

  The location of the data file or directory in Amazon Simple Storage
Service (Amazon S3).


=head2 LastUpdatedAt => Str

  The time of the most recent edit to the C<MLModel>. The time is
expressed in epoch time.


=head2 Message => Str

  A description of the most recent details about accessing the
C<MLModel>.


=head2 MLModelId => Str

  The ID assigned to the C<MLModel> at creation.


=head2 MLModelType => Str

  Identifies the C<MLModel> category. The following are the available
types:

=over

=item * C<REGRESSION> - Produces a numeric result. For example, "What
price should a house be listed at?"

=item * C<BINARY> - Produces one of two possible results. For example,
"Is this a child-friendly web site?".

=item * C<MULTICLASS> - Produces one of several possible results. For
example, "Is this a HIGH-, LOW-, or MEDIUM-risk trade?".

=back



=head2 Name => Str

  A user-supplied name or description of the C<MLModel>.


=head2 ScoreThreshold => Num

  


=head2 ScoreThresholdLastUpdatedAt => Str

  The time of the most recent edit to the C<ScoreThreshold>. The time is
expressed in epoch time.


=head2 SizeInBytes => Int

  


=head2 StartedAt => Str

  


=head2 Status => Str

  The current status of an C<MLModel>. This element can have one of the
following values:

=over

=item * C<PENDING> - Amazon Machine Learning (Amazon ML) submitted a
request to create an C<MLModel>.

=item * C<INPROGRESS> - The creation process is underway.

=item * C<FAILED> - The request to create an C<MLModel> didn't run to
completion. The model isn't usable.

=item * C<COMPLETED> - The creation process completed successfully.

=item * C<DELETED> - The C<MLModel> is marked as deleted. It isn't
usable.

=back



=head2 TrainingDataSourceId => Str

  The ID of the training C<DataSource>. The C<CreateMLModel> operation
uses the C<TrainingDataSourceId>.


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
Shuffling the data improves a model's ability to find the optimal
solution for a variety of data types. The valid values are C<auto> and
C<none>. The default value is C<none>.

=item *

C<sgd.l1RegularizationAmount> - The coefficient regularization L1 norm,
which controls overfitting the data by penalizing large coefficients.
This parameter tends to drive coefficients to zero, resulting in sparse
feature set. If you use this parameter, start by specifying a small
value, such as C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L1 normalization. This parameter can't be used
when C<L2> is specified. Use this parameter sparingly.

=item *

C<sgd.l2RegularizationAmount> - The coefficient regularization L2 norm,
which controls overfitting the data by penalizing large coefficients.
This tends to drive coefficients to small, nonzero values. If you use
this parameter, start by specifying a small value, such as C<1.0E-08>.

The value is a double that ranges from C<0> to C<MAX_DOUBLE>. The
default is to not use L2 normalization. This parameter can't be used
when C<L1> is specified. Use this parameter sparingly.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

