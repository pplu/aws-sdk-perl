
package Paws::SageMaker::DescribeAutoMLJob;
  use Moose;
  has AutoMLJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoMLJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeAutoMLJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAutoMLJob - Arguments for method DescribeAutoMLJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoMLJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeAutoMLJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoMLJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeAutoMLJobResponse = $api . sagemaker->DescribeAutoMLJob(
      AutoMLJobName => 'MyAutoMLJobName',

    );

    # Results:
    my $AutoMLJobArn       = $DescribeAutoMLJobResponse->AutoMLJobArn;
    my $AutoMLJobArtifacts = $DescribeAutoMLJobResponse->AutoMLJobArtifacts;
    my $AutoMLJobConfig    = $DescribeAutoMLJobResponse->AutoMLJobConfig;
    my $AutoMLJobName      = $DescribeAutoMLJobResponse->AutoMLJobName;
    my $AutoMLJobObjective = $DescribeAutoMLJobResponse->AutoMLJobObjective;
    my $AutoMLJobSecondaryStatus =
      $DescribeAutoMLJobResponse->AutoMLJobSecondaryStatus;
    my $AutoMLJobStatus = $DescribeAutoMLJobResponse->AutoMLJobStatus;
    my $BestCandidate   = $DescribeAutoMLJobResponse->BestCandidate;
    my $CreationTime    = $DescribeAutoMLJobResponse->CreationTime;
    my $EndTime         = $DescribeAutoMLJobResponse->EndTime;
    my $FailureReason   = $DescribeAutoMLJobResponse->FailureReason;
    my $GenerateCandidateDefinitionsOnly =
      $DescribeAutoMLJobResponse->GenerateCandidateDefinitionsOnly;
    my $InputDataConfig   = $DescribeAutoMLJobResponse->InputDataConfig;
    my $LastModifiedTime  = $DescribeAutoMLJobResponse->LastModifiedTime;
    my $ModelDeployConfig = $DescribeAutoMLJobResponse->ModelDeployConfig;
    my $ModelDeployResult = $DescribeAutoMLJobResponse->ModelDeployResult;
    my $OutputDataConfig  = $DescribeAutoMLJobResponse->OutputDataConfig;
    my $PartialFailureReasons =
      $DescribeAutoMLJobResponse->PartialFailureReasons;
    my $ProblemType        = $DescribeAutoMLJobResponse->ProblemType;
    my $ResolvedAttributes = $DescribeAutoMLJobResponse->ResolvedAttributes;
    my $RoleArn            = $DescribeAutoMLJobResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeAutoMLJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeAutoMLJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoMLJobName => Str

Requests information about an AutoML job using its unique name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoMLJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

