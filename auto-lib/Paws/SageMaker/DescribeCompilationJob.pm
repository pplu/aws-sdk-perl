
package Paws::SageMaker::DescribeCompilationJob;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCompilationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeCompilationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeCompilationJob - Arguments for method DescribeCompilationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCompilationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DescribeCompilationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCompilationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $DescribeCompilationJobResponse =
      $api . sagemaker->DescribeCompilationJob(
      CompilationJobName => 'MyEntityName',

      );

    # Results:
    my $CompilationEndTime =
      $DescribeCompilationJobResponse->CompilationEndTime;
    my $CompilationJobArn = $DescribeCompilationJobResponse->CompilationJobArn;
    my $CompilationJobName =
      $DescribeCompilationJobResponse->CompilationJobName;
    my $CompilationJobStatus =
      $DescribeCompilationJobResponse->CompilationJobStatus;
    my $CompilationStartTime =
      $DescribeCompilationJobResponse->CompilationStartTime;
    my $CreationTime      = $DescribeCompilationJobResponse->CreationTime;
    my $FailureReason     = $DescribeCompilationJobResponse->FailureReason;
    my $InputConfig       = $DescribeCompilationJobResponse->InputConfig;
    my $LastModifiedTime  = $DescribeCompilationJobResponse->LastModifiedTime;
    my $ModelArtifacts    = $DescribeCompilationJobResponse->ModelArtifacts;
    my $OutputConfig      = $DescribeCompilationJobResponse->OutputConfig;
    my $RoleArn           = $DescribeCompilationJobResponse->RoleArn;
    my $StoppingCondition = $DescribeCompilationJobResponse->StoppingCondition;

    # Returns a L<Paws::SageMaker::DescribeCompilationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DescribeCompilationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobName => Str

The name of the model compilation job that you want information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCompilationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

