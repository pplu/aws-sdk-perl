
package Paws::CodePipeline::GetPipelineExecution;
  use Moose;
  has PipelineExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineExecutionId' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetPipelineExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineExecution - Arguments for method GetPipelineExecution on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPipelineExecution on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetPipelineExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPipelineExecution.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetPipelineExecutionOutput = $codepipeline->GetPipelineExecution(
      PipelineExecutionId => 'MyPipelineExecutionId',
      PipelineName        => 'MyPipelineName',

    );

    # Results:
    my $PipelineExecution = $GetPipelineExecutionOutput->PipelineExecution;

    # Returns a L<Paws::CodePipeline::GetPipelineExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetPipelineExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineExecutionId => Str

The ID of the pipeline execution about which you want to get execution
details.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline about which you want to get execution details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPipelineExecution in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

