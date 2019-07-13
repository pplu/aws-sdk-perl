
package Paws::SageMaker::DescribeLabelingJob;
  use Moose;
  has LabelingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLabelingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeLabelingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeLabelingJob - Arguments for method DescribeLabelingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLabelingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeLabelingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLabelingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeLabelingJobResponse = $api . sagemaker->DescribeLabelingJob(
      LabelingJobName => 'MyLabelingJobName',

    );

    # Results:
    my $CreationTime       = $DescribeLabelingJobResponse->CreationTime;
    my $FailureReason      = $DescribeLabelingJobResponse->FailureReason;
    my $HumanTaskConfig    = $DescribeLabelingJobResponse->HumanTaskConfig;
    my $InputConfig        = $DescribeLabelingJobResponse->InputConfig;
    my $JobReferenceCode   = $DescribeLabelingJobResponse->JobReferenceCode;
    my $LabelAttributeName = $DescribeLabelingJobResponse->LabelAttributeName;
    my $LabelCategoryConfigS3Uri =
      $DescribeLabelingJobResponse->LabelCategoryConfigS3Uri;
    my $LabelCounters = $DescribeLabelingJobResponse->LabelCounters;
    my $LabelingJobAlgorithmsConfig =
      $DescribeLabelingJobResponse->LabelingJobAlgorithmsConfig;
    my $LabelingJobArn     = $DescribeLabelingJobResponse->LabelingJobArn;
    my $LabelingJobName    = $DescribeLabelingJobResponse->LabelingJobName;
    my $LabelingJobOutput  = $DescribeLabelingJobResponse->LabelingJobOutput;
    my $LabelingJobStatus  = $DescribeLabelingJobResponse->LabelingJobStatus;
    my $LastModifiedTime   = $DescribeLabelingJobResponse->LastModifiedTime;
    my $OutputConfig       = $DescribeLabelingJobResponse->OutputConfig;
    my $RoleArn            = $DescribeLabelingJobResponse->RoleArn;
    my $StoppingConditions = $DescribeLabelingJobResponse->StoppingConditions;
    my $Tags               = $DescribeLabelingJobResponse->Tags;

    # Returns a L<Paws::SageMaker::DescribeLabelingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeLabelingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LabelingJobName => Str

The name of the labeling job to return information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLabelingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

