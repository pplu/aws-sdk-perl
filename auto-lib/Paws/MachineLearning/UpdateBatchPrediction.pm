
package Paws::MachineLearning::UpdateBatchPrediction;
  use Moose;
  has BatchPredictionId => (is => 'ro', isa => 'Str', required => 1);
  has BatchPredictionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBatchPrediction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::UpdateBatchPredictionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::UpdateBatchPrediction - Arguments for method UpdateBatchPrediction on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBatchPrediction on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method UpdateBatchPrediction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBatchPrediction.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $UpdateBatchPredictionOutput = $machinelearning->UpdateBatchPrediction(
      BatchPredictionId   => 'MyEntityId',
      BatchPredictionName => 'MyEntityName',

    );

    # Results:
    my $BatchPredictionId = $UpdateBatchPredictionOutput->BatchPredictionId;

    # Returns a L<Paws::MachineLearning::UpdateBatchPredictionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/UpdateBatchPrediction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchPredictionId => Str

The ID assigned to the C<BatchPrediction> during creation.



=head2 B<REQUIRED> BatchPredictionName => Str

A new user-supplied name or description of the C<BatchPrediction>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBatchPrediction in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

