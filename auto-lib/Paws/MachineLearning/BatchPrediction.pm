package Paws::MachineLearning::BatchPrediction;
  use Moose;
  has BatchPredictionDataSourceId => (is => 'ro', isa => 'Str');
  has BatchPredictionId => (is => 'ro', isa => 'Str');
  has ComputeTime => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CreatedByIamUser => (is => 'ro', isa => 'Str');
  has FinishedAt => (is => 'ro', isa => 'Str');
  has InputDataLocationS3 => (is => 'ro', isa => 'Str');
  has InvalidRecordCount => (is => 'ro', isa => 'Int');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has MLModelId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputUri => (is => 'ro', isa => 'Str');
  has StartedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TotalRecordCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::BatchPrediction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::BatchPrediction object:

  $service_obj->Method(Att1 => { BatchPredictionDataSourceId => $value, ..., TotalRecordCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::BatchPrediction object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchPredictionDataSourceId

=head1 DESCRIPTION

Represents the output of a C<GetBatchPrediction> operation.

The content consists of the detailed metadata, the status, and the data
file information of a C<Batch Prediction>.

=head1 ATTRIBUTES


=head2 BatchPredictionDataSourceId => Str

  The ID of the C<DataSource> that points to the group of observations to
predict.


=head2 BatchPredictionId => Str

  The ID assigned to the C<BatchPrediction> at creation. This value
should be identical to the value of the C<BatchPredictionID> in the
request.


=head2 ComputeTime => Int

  


=head2 CreatedAt => Str

  The time that the C<BatchPrediction> was created. The time is expressed
in epoch time.


=head2 CreatedByIamUser => Str

  The AWS user account that invoked the C<BatchPrediction>. The account
type can be either an AWS root account or an AWS Identity and Access
Management (IAM) user account.


=head2 FinishedAt => Str

  


=head2 InputDataLocationS3 => Str

  The location of the data file or directory in Amazon Simple Storage
Service (Amazon S3).


=head2 InvalidRecordCount => Int

  


=head2 LastUpdatedAt => Str

  The time of the most recent edit to the C<BatchPrediction>. The time is
expressed in epoch time.


=head2 Message => Str

  A description of the most recent details about processing the batch
prediction request.


=head2 MLModelId => Str

  The ID of the C<MLModel> that generated predictions for the
C<BatchPrediction> request.


=head2 Name => Str

  A user-supplied name or description of the C<BatchPrediction>.


=head2 OutputUri => Str

  The location of an Amazon S3 bucket or directory to receive the
operation results. The following substrings are not allowed in the C<s3
key> portion of the C<outputURI> field: ':', '//', '/./', '/../'.


=head2 StartedAt => Str

  


=head2 Status => Str

  The status of the C<BatchPrediction>. This element can have one of the
following values:

=over

=item * C<PENDING> - Amazon Machine Learning (Amazon ML) submitted a
request to generate predictions for a batch of observations.

=item * C<INPROGRESS> - The process is underway.

=item * C<FAILED> - The request to perform a batch prediction did not
run to completion. It is not usable.

=item * C<COMPLETED> - The batch prediction process completed
successfully.

=item * C<DELETED> - The C<BatchPrediction> is marked as deleted. It is
not usable.

=back



=head2 TotalRecordCount => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

