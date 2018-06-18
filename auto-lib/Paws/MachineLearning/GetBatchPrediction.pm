
package Paws::MachineLearning::GetBatchPrediction;
  use Moose;
  has BatchPredictionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBatchPrediction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::GetBatchPredictionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::GetBatchPrediction - Arguments for method GetBatchPrediction on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBatchPrediction on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method GetBatchPrediction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBatchPrediction.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $GetBatchPredictionOutput = $machinelearning->GetBatchPrediction(
      BatchPredictionId => 'MyEntityId',

    );

    # Results:
    my $BatchPredictionDataSourceId =
      $GetBatchPredictionOutput->BatchPredictionDataSourceId;
    my $BatchPredictionId   = $GetBatchPredictionOutput->BatchPredictionId;
    my $ComputeTime         = $GetBatchPredictionOutput->ComputeTime;
    my $CreatedAt           = $GetBatchPredictionOutput->CreatedAt;
    my $CreatedByIamUser    = $GetBatchPredictionOutput->CreatedByIamUser;
    my $FinishedAt          = $GetBatchPredictionOutput->FinishedAt;
    my $InputDataLocationS3 = $GetBatchPredictionOutput->InputDataLocationS3;
    my $InvalidRecordCount  = $GetBatchPredictionOutput->InvalidRecordCount;
    my $LastUpdatedAt       = $GetBatchPredictionOutput->LastUpdatedAt;
    my $LogUri              = $GetBatchPredictionOutput->LogUri;
    my $MLModelId           = $GetBatchPredictionOutput->MLModelId;
    my $Message             = $GetBatchPredictionOutput->Message;
    my $Name                = $GetBatchPredictionOutput->Name;
    my $OutputUri           = $GetBatchPredictionOutput->OutputUri;
    my $StartedAt           = $GetBatchPredictionOutput->StartedAt;
    my $Status              = $GetBatchPredictionOutput->Status;
    my $TotalRecordCount    = $GetBatchPredictionOutput->TotalRecordCount;

    # Returns a L<Paws::MachineLearning::GetBatchPredictionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/GetBatchPrediction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchPredictionId => Str

An ID assigned to the C<BatchPrediction> at creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBatchPrediction in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

