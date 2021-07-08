
package Paws::SageMaker::StartPipelineExecution;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has PipelineExecutionDescription => (is => 'ro', isa => 'Str');
  has PipelineExecutionDisplayName => (is => 'ro', isa => 'Str');
  has PipelineName => (is => 'ro', isa => 'Str', required => 1);
  has PipelineParameters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Parameter]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::StartPipelineExecutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::StartPipelineExecution - Arguments for method StartPipelineExecution on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPipelineExecution on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method StartPipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPipelineExecution.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $StartPipelineExecutionResponse =
      $api . sagemaker->StartPipelineExecution(
      ClientRequestToken           => 'MyIdempotencyToken',
      PipelineName                 => 'MyPipelineName',
      PipelineExecutionDescription =>
        'MyPipelineExecutionDescription',    # OPTIONAL
      PipelineExecutionDisplayName => 'MyPipelineExecutionName',    # OPTIONAL
      PipelineParameters           => [
        {
          Name  => 'MyPipelineParameterName',    # min: 1, max: 256
          Value => 'MyString1024',               # max: 1024

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $PipelineExecutionArn =
      $StartPipelineExecutionResponse->PipelineExecutionArn;

    # Returns a L<Paws::SageMaker::StartPipelineExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/StartPipelineExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the operation. An idempotent operation completes no more
than one time.



=head2 PipelineExecutionDescription => Str

The description of the pipeline execution.



=head2 PipelineExecutionDisplayName => Str

The display name of the pipeline execution.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline.



=head2 PipelineParameters => ArrayRef[L<Paws::SageMaker::Parameter>]

Contains a list of pipeline parameters. This list can be empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPipelineExecution in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

