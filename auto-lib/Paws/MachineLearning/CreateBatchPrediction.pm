
package Paws::MachineLearning::CreateBatchPrediction;
  use Moose;
  has BatchPredictionDataSourceId => (is => 'ro', isa => 'Str', required => 1);
  has BatchPredictionId => (is => 'ro', isa => 'Str', required => 1);
  has BatchPredictionName => (is => 'ro', isa => 'Str');
  has MLModelId => (is => 'ro', isa => 'Str', required => 1);
  has OutputUri => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBatchPrediction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::CreateBatchPredictionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateBatchPrediction - Arguments for method CreateBatchPrediction on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBatchPrediction on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method CreateBatchPrediction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBatchPrediction.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $CreateBatchPredictionOutput = $machinelearning->CreateBatchPrediction(
      BatchPredictionDataSourceId => 'MyEntityId',
      BatchPredictionId           => 'MyEntityId',
      MLModelId                   => 'MyEntityId',
      OutputUri                   => 'MyS3Url',
      BatchPredictionName         => 'MyEntityName',    # OPTIONAL
    );

    # Results:
    my $BatchPredictionId = $CreateBatchPredictionOutput->BatchPredictionId;

    # Returns a L<Paws::MachineLearning::CreateBatchPredictionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/CreateBatchPrediction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchPredictionDataSourceId => Str

The ID of the C<DataSource> that points to the group of observations to
predict.



=head2 B<REQUIRED> BatchPredictionId => Str

A user-supplied ID that uniquely identifies the C<BatchPrediction>.



=head2 BatchPredictionName => Str

A user-supplied name or description of the C<BatchPrediction>.
C<BatchPredictionName> can only use the UTF-8 character set.



=head2 B<REQUIRED> MLModelId => Str

The ID of the C<MLModel> that will generate predictions for the group
of observations.



=head2 B<REQUIRED> OutputUri => Str

The location of an Amazon Simple Storage Service (Amazon S3) bucket or
directory to store the batch prediction results. The following
substrings are not allowed in the C<s3 key> portion of the C<outputURI>
field: ':', '//', '/./', '/../'.

Amazon ML needs permissions to store and retrieve the logs on your
behalf. For information about how to set permissions, see the Amazon
Machine Learning Developer Guide
(http://docs.aws.amazon.com/machine-learning/latest/dg).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBatchPrediction in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

