
package Paws::SageMaker::DescribeEdgePackagingJob;
  use Moose;
  has EdgePackagingJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEdgePackagingJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeEdgePackagingJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEdgePackagingJob - Arguments for method DescribeEdgePackagingJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEdgePackagingJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeEdgePackagingJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEdgePackagingJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeEdgePackagingJobResponse =
      $api . sagemaker->DescribeEdgePackagingJob(
      EdgePackagingJobName => 'MyEntityName',

      );

    # Results:
    my $CompilationJobName =
      $DescribeEdgePackagingJobResponse->CompilationJobName;
    my $CreationTime = $DescribeEdgePackagingJobResponse->CreationTime;
    my $EdgePackagingJobArn =
      $DescribeEdgePackagingJobResponse->EdgePackagingJobArn;
    my $EdgePackagingJobName =
      $DescribeEdgePackagingJobResponse->EdgePackagingJobName;
    my $EdgePackagingJobStatus =
      $DescribeEdgePackagingJobResponse->EdgePackagingJobStatus;
    my $EdgePackagingJobStatusMessage =
      $DescribeEdgePackagingJobResponse->EdgePackagingJobStatusMessage;
    my $LastModifiedTime = $DescribeEdgePackagingJobResponse->LastModifiedTime;
    my $ModelArtifact    = $DescribeEdgePackagingJobResponse->ModelArtifact;
    my $ModelName        = $DescribeEdgePackagingJobResponse->ModelName;
    my $ModelSignature   = $DescribeEdgePackagingJobResponse->ModelSignature;
    my $ModelVersion     = $DescribeEdgePackagingJobResponse->ModelVersion;
    my $OutputConfig     = $DescribeEdgePackagingJobResponse->OutputConfig;
    my $ResourceKey      = $DescribeEdgePackagingJobResponse->ResourceKey;
    my $RoleArn          = $DescribeEdgePackagingJobResponse->RoleArn;

    # Returns a L<Paws::SageMaker::DescribeEdgePackagingJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeEdgePackagingJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EdgePackagingJobName => Str

The name of the edge packaging job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEdgePackagingJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

