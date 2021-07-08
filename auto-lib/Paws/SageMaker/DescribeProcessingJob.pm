
package Paws::SageMaker::DescribeProcessingJob;
  use Moose;
  has ProcessingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProcessingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeProcessingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeProcessingJob - Arguments for method DescribeProcessingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProcessingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeProcessingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProcessingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeProcessingJobResponse = $api . sagemaker->DescribeProcessingJob(
      ProcessingJobName => 'MyProcessingJobName',

    );

    # Results:
    my $AppSpecification = $DescribeProcessingJobResponse->AppSpecification;
    my $AutoMLJobArn     = $DescribeProcessingJobResponse->AutoMLJobArn;
    my $CreationTime     = $DescribeProcessingJobResponse->CreationTime;
    my $Environment      = $DescribeProcessingJobResponse->Environment;
    my $ExitMessage      = $DescribeProcessingJobResponse->ExitMessage;
    my $ExperimentConfig = $DescribeProcessingJobResponse->ExperimentConfig;
    my $FailureReason    = $DescribeProcessingJobResponse->FailureReason;
    my $LastModifiedTime = $DescribeProcessingJobResponse->LastModifiedTime;
    my $MonitoringScheduleArn =
      $DescribeProcessingJobResponse->MonitoringScheduleArn;
    my $NetworkConfig     = $DescribeProcessingJobResponse->NetworkConfig;
    my $ProcessingEndTime = $DescribeProcessingJobResponse->ProcessingEndTime;
    my $ProcessingInputs  = $DescribeProcessingJobResponse->ProcessingInputs;
    my $ProcessingJobArn  = $DescribeProcessingJobResponse->ProcessingJobArn;
    my $ProcessingJobName = $DescribeProcessingJobResponse->ProcessingJobName;
    my $ProcessingJobStatus =
      $DescribeProcessingJobResponse->ProcessingJobStatus;
    my $ProcessingOutputConfig =
      $DescribeProcessingJobResponse->ProcessingOutputConfig;
    my $ProcessingResources =
      $DescribeProcessingJobResponse->ProcessingResources;
    my $ProcessingStartTime =
      $DescribeProcessingJobResponse->ProcessingStartTime;
    my $RoleArn           = $DescribeProcessingJobResponse->RoleArn;
    my $StoppingCondition = $DescribeProcessingJobResponse->StoppingCondition;
    my $TrainingJobArn    = $DescribeProcessingJobResponse->TrainingJobArn;

    # Returns a L<Paws::SageMaker::DescribeProcessingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeProcessingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProcessingJobName => Str

The name of the processing job. The name must be unique within an
Amazon Web Services Region in the Amazon Web Services account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProcessingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

