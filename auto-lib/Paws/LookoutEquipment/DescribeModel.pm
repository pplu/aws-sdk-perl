
package Paws::LookoutEquipment::DescribeModel;
  use Moose;
  has ModelName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeModel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutEquipment::DescribeModelResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::DescribeModel - Arguments for method DescribeModel on L<Paws::LookoutEquipment>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeModel on the
L<Amazon Lookout for Equipment|Paws::LookoutEquipment> service. Use the attributes of this class
as arguments to method DescribeModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeModel.

=head1 SYNOPSIS

    my $lookoutequipment = Paws->service('LookoutEquipment');
    my $DescribeModelResponse = $lookoutequipment->DescribeModel(
      ModelName => 'MyModelName',

    );

    # Results:
    my $CreatedAt = $DescribeModelResponse->CreatedAt;
    my $DataPreProcessingConfiguration =
      $DescribeModelResponse->DataPreProcessingConfiguration;
    my $DatasetArn            = $DescribeModelResponse->DatasetArn;
    my $DatasetName           = $DescribeModelResponse->DatasetName;
    my $EvaluationDataEndTime = $DescribeModelResponse->EvaluationDataEndTime;
    my $EvaluationDataStartTime =
      $DescribeModelResponse->EvaluationDataStartTime;
    my $FailedReason = $DescribeModelResponse->FailedReason;
    my $LabelsInputConfiguration =
      $DescribeModelResponse->LabelsInputConfiguration;
    my $LastUpdatedTime       = $DescribeModelResponse->LastUpdatedTime;
    my $ModelArn              = $DescribeModelResponse->ModelArn;
    my $ModelMetrics          = $DescribeModelResponse->ModelMetrics;
    my $ModelName             = $DescribeModelResponse->ModelName;
    my $RoleArn               = $DescribeModelResponse->RoleArn;
    my $Schema                = $DescribeModelResponse->Schema;
    my $ServerSideKmsKeyId    = $DescribeModelResponse->ServerSideKmsKeyId;
    my $Status                = $DescribeModelResponse->Status;
    my $TrainingDataEndTime   = $DescribeModelResponse->TrainingDataEndTime;
    my $TrainingDataStartTime = $DescribeModelResponse->TrainingDataStartTime;
    my $TrainingExecutionEndTime =
      $DescribeModelResponse->TrainingExecutionEndTime;
    my $TrainingExecutionStartTime =
      $DescribeModelResponse->TrainingExecutionStartTime;

    # Returns a L<Paws::LookoutEquipment::DescribeModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutequipment/DescribeModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ModelName => Str

The name of the ML model to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeModel in L<Paws::LookoutEquipment>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

