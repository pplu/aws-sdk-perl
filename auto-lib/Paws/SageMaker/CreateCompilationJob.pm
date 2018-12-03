
package Paws::SageMaker::CreateCompilationJob;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::SageMaker::InputConfig', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMaker::OutputConfig', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has StoppingCondition => (is => 'ro', isa => 'Paws::SageMaker::StoppingCondition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCompilationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateCompilationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateCompilationJob - Arguments for method CreateCompilationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCompilationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateCompilationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCompilationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateCompilationJobResponse = $api . sagemaker->CreateCompilationJob(
      CompilationJobName => 'MyEntityName',
      InputConfig        => {
        DataInputConfig => 'MyDataInputConfig',    # min: 1, max: 1024
        Framework =>
          'TENSORFLOW',    # values: TENSORFLOW, MXNET, ONNX, PYTORCH, XGBOOST
        S3Uri => 'MyS3Uri',    # max: 1024

      },
      OutputConfig => {
        S3OutputLocation => 'MyS3Uri',    # max: 1024
        TargetDevice     => 'ml_m4'
        , # values: ml_m4, ml_m5, ml_c4, ml_c5, ml_p2, ml_p3, jetson_tx1, jetson_tx2, rasp3b, deeplens

      },
      RoleArn           => 'MyRoleArn',
      StoppingCondition => {
        MaxRuntimeInSeconds => 1,    # min: 1; OPTIONAL
      },

    );

    # Results:
    my $CompilationJobArn = $CreateCompilationJobResponse->CompilationJobArn;

    # Returns a L<Paws::SageMaker::CreateCompilationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateCompilationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobName => Str

A name for the model compilation job. The name must be unique within
the AWS Region and within your AWS account.



=head2 B<REQUIRED> InputConfig => L<Paws::SageMaker::InputConfig>

Provides information about the location of input model artifacts, the
name and shape of the expected data inputs, and the framework in which
the model was trained.



=head2 B<REQUIRED> OutputConfig => L<Paws::SageMaker::OutputConfig>

Provides information about the output location for the compiled model
and the target device the model runs on.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IIAMAM role that enables Amazon
SageMaker to perform tasks on your behalf.

During model compilation, Amazon SageMaker needs your permission to:

=over

=item *

Read input data from an S3 bucket

=item *

Write model artifacts to an S3 bucket

=item *

Write logs to Amazon CloudWatch Logs

=item *

Publish metrics to Amazon CloudWatch

=back

You grant permissions for all of these tasks to an IAM role. To pass
this role to Amazon SageMaker, the caller of this API must have the
C<iam:PassRole> permission. For more information, see Amazon SageMaker
Roles.
(https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html)



=head2 B<REQUIRED> StoppingCondition => L<Paws::SageMaker::StoppingCondition>

The duration allowed for model compilation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCompilationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

