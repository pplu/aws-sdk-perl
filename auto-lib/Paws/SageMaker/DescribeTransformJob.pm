
package Paws::SageMaker::DescribeTransformJob;
  use Moose;
  has TransformJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTransformJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeTransformJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeTransformJob - Arguments for method DescribeTransformJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTransformJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeTransformJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTransformJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeTransformJobResponse = $api . sagemaker->DescribeTransformJob(
      TransformJobName => 'MyTransformJobName',

    );

    # Results:
    my $BatchStrategy  = $DescribeTransformJobResponse->BatchStrategy;
    my $CreationTime   = $DescribeTransformJobResponse->CreationTime;
    my $Environment    = $DescribeTransformJobResponse->Environment;
    my $FailureReason  = $DescribeTransformJobResponse->FailureReason;
    my $LabelingJobArn = $DescribeTransformJobResponse->LabelingJobArn;
    my $MaxConcurrentTransforms =
      $DescribeTransformJobResponse->MaxConcurrentTransforms;
    my $MaxPayloadInMB     = $DescribeTransformJobResponse->MaxPayloadInMB;
    my $ModelName          = $DescribeTransformJobResponse->ModelName;
    my $TransformEndTime   = $DescribeTransformJobResponse->TransformEndTime;
    my $TransformInput     = $DescribeTransformJobResponse->TransformInput;
    my $TransformJobArn    = $DescribeTransformJobResponse->TransformJobArn;
    my $TransformJobName   = $DescribeTransformJobResponse->TransformJobName;
    my $TransformJobStatus = $DescribeTransformJobResponse->TransformJobStatus;
    my $TransformOutput    = $DescribeTransformJobResponse->TransformOutput;
    my $TransformResources = $DescribeTransformJobResponse->TransformResources;
    my $TransformStartTime = $DescribeTransformJobResponse->TransformStartTime;

    # Returns a L<Paws::SageMaker::DescribeTransformJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeTransformJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TransformJobName => Str

The name of the transform job that you want to view details of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTransformJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

