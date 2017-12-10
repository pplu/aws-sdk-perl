package Paws::MachineLearning::Evaluation;
  use Moose;
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has EvaluationDataSourceId => (is => 'ro', isa => 'Str');
  has EvaluationId => (is => 'ro', isa => 'Str');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has InputDataLocationS3 => (is => 'ro', isa => 'Str');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MLModelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PerformanceMetrics => (is => 'ro', isa => 'Paws::MachineLearning::PerformanceMetrics');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::Evaluation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::Evaluation object:

  $service_obj->Method(Att1 => { ComputeTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::Evaluation object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeTime

=head1 DESCRIPTION

Represents the output of C<GetEvaluation> operation.

The content consists of the detailed metadata and data file information
and the current status of the C<Evaluation>.

=head1 ATTRIBUTES


=head2 ComputeTime => Int

  


=head2 CreatedAt => Str

  The time that the C<Evaluation> was created. The time is expressed in
epoch time.


=head2 CreatedByIamUser => Str

  The AWS user account that invoked the evaluation. The account type can
be either an AWS root account or an AWS Identity and Access Management
(IAM) user account.


=head2 EvaluationDataSourceId => Str

  The ID of the C<DataSource> that is used to evaluate the C<MLModel>.


=head2 EvaluationId => Str

  The ID that is assigned to the C<Evaluation> at creation.


=head2 FinishedAt => Str

  


=head2 InputDataLocationS3 => Str

  The location and name of the data in Amazon Simple Storage Server
(Amazon S3) that is used in the evaluation.


=head2 LastUpdatedAt => Str

  The time of the most recent edit to the C<Evaluation>. The time is
expressed in epoch time.


=head2 Message => Str

  A description of the most recent details about evaluating the
C<MLModel>.


=head2 MLModelId => Str

  The ID of the C<MLModel> that is the focus of the evaluation.


=head2 Name => Str

  A user-supplied name or description of the C<Evaluation>.


=head2 PerformanceMetrics => L<Paws::MachineLearning::PerformanceMetrics>

  Measurements of how well the C<MLModel> performed, using observations
referenced by the C<DataSource>. One of the following metrics is
returned, based on the type of the C<MLModel>:

=over

=item *

BinaryAUC: A binary C<MLModel> uses the Area Under the Curve (AUC)
technique to measure performance.

=item *

RegressionRMSE: A regression C<MLModel> uses the Root Mean Square Error
(RMSE) technique to measure performance. RMSE measures the difference
between predicted and actual values for a single variable.

=item *

MulticlassAvgFScore: A multiclass C<MLModel> uses the F1 score
technique to measure performance.

=back

For more information about performance metrics, please see the Amazon
Machine Learning Developer Guide
(http://docs.aws.amazon.com/machine-learning/latest/dg).


=head2 StartedAt => Str

  


=head2 Status => Str

  The status of the evaluation. This element can have one of the
following values:

=over

=item * C<PENDING> - Amazon Machine Learning (Amazon ML) submitted a
request to evaluate an C<MLModel>.

=item * C<INPROGRESS> - The evaluation is underway.

=item * C<FAILED> - The request to evaluate an C<MLModel> did not run
to completion. It is not usable.

=item * C<COMPLETED> - The evaluation process completed successfully.

=item * C<DELETED> - The C<Evaluation> is marked as deleted. It is not
usable.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

