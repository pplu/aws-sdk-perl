
package Paws::CodePipeline::RetryStageExecution;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has RetryMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'retryMode' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetryStageExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::RetryStageExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RetryStageExecution - Arguments for method RetryStageExecution on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RetryStageExecution on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method RetryStageExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RetryStageExecution.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $RetryStageExecutionOutput = $codepipeline->RetryStageExecution(
      PipelineExecutionId => 'MyPipelineExecutionId',
      PipelineName        => 'MyPipelineName',
      RetryMode           => 'FAILED_ACTIONS',
      StageName           => 'MyStageName',

    );

    # Results:
    my $PipelineExecutionId = $RetryStageExecutionOutput->PipelineExecutionId;

    # Returns a L<Paws::CodePipeline::RetryStageExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/RetryStageExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineExecutionId => Str

The ID of the pipeline execution in the failed stage to be retried. Use
the GetPipelineState action to retrieve the current pipelineExecutionId
of the failed stage



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline that contains the failed stage.



=head2 B<REQUIRED> RetryMode => Str

The scope of the retry attempt. Currently, the only supported value is
FAILED_ACTIONS.

Valid values are: C<"FAILED_ACTIONS">

=head2 B<REQUIRED> StageName => Str

The name of the failed stage to be retried.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RetryStageExecution in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

