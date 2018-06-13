
package Paws::SageMaker::DescribeTrainingJob;
  use Moose;
  has TrainingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrainingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTrainingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTrainingJob - Arguments for method DescribeTrainingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrainingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTrainingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrainingJob.

=head1 SYNOPSIS

    my $sagemaker = Paws->service('SageMaker');
    my $DescribeTrainingJobResponse = $sagemaker->DescribeTrainingJob(
      TrainingJobName => 'MyTrainingJobName',

    );

    # Results:
    my $ResourceConfig    = $DescribeTrainingJobResponse->ResourceConfig;
    my $LastModifiedTime  = $DescribeTrainingJobResponse->LastModifiedTime;
    my $CreationTime      = $DescribeTrainingJobResponse->CreationTime;
    my $TrainingJobName   = $DescribeTrainingJobResponse->TrainingJobName;
    my $InputDataConfig   = $DescribeTrainingJobResponse->InputDataConfig;
    my $TrainingJobArn    = $DescribeTrainingJobResponse->TrainingJobArn;
    my $TrainingEndTime   = $DescribeTrainingJobResponse->TrainingEndTime;
    my $FailureReason     = $DescribeTrainingJobResponse->FailureReason;
    my $VpcConfig         = $DescribeTrainingJobResponse->VpcConfig;
    my $HyperParameters   = $DescribeTrainingJobResponse->HyperParameters;
    my $TrainingStartTime = $DescribeTrainingJobResponse->TrainingStartTime;
    my $StoppingCondition = $DescribeTrainingJobResponse->StoppingCondition;
    my $AlgorithmSpecification =
      $DescribeTrainingJobResponse->AlgorithmSpecification;
    my $OutputDataConfig  = $DescribeTrainingJobResponse->OutputDataConfig;
    my $TrainingJobStatus = $DescribeTrainingJobResponse->TrainingJobStatus;
    my $ModelArtifacts    = $DescribeTrainingJobResponse->ModelArtifacts;
    my $SecondaryStatus   = $DescribeTrainingJobResponse->SecondaryStatus;
    my $RoleArn           = $DescribeTrainingJobResponse->RoleArn;
    my $TuningJobArn      = $DescribeTrainingJobResponse->TuningJobArn;

    # Returns a L<Paws::SageMaker::DescribeTrainingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sagemaker/DescribeTrainingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrainingJobName => Str

The name of the training job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrainingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

