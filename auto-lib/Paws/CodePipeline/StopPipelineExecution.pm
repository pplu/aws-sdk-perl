
package Paws::CodePipeline::StopPipelineExecution;
  use Moose;
  has Abandon => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'abandon' );
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopPipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::StopPipelineExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::StopPipelineExecution - Arguments for method StopPipelineExecution on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopPipelineExecution on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method StopPipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopPipelineExecution.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $StopPipelineExecutionOutput = $codepipeline->StopPipelineExecution(
      PipelineExecutionId => 'MyPipelineExecutionId',
      PipelineName        => 'MyPipelineName',
      Abandon             => 1,                                  # OPTIONAL
      Reason              => 'MyStopPipelineExecutionReason',    # OPTIONAL
    );

    # Results:
    my $PipelineExecutionId = $StopPipelineExecutionOutput->PipelineExecutionId;

    # Returns a L<Paws::CodePipeline::StopPipelineExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/StopPipelineExecution>

=head1 ATTRIBUTES


=head2 Abandon => Bool

Use this option to stop the pipeline execution by abandoning, rather
than finishing, in-progress actions.

This option can lead to failed or out-of-sequence tasks.



=head2 B<REQUIRED> PipelineExecutionId => Str

The ID of the pipeline execution to be stopped in the current stage.
Use the C<GetPipelineState> action to retrieve the current
pipelineExecutionId.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline to stop.



=head2 Reason => Str

Use this option to enter comments, such as the reason the pipeline was
stopped.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopPipelineExecution in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

