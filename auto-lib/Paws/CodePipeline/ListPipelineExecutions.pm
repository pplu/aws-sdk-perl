
package Paws::CodePipeline::ListPipelineExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPipelineExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::ListPipelineExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelineExecutions - Arguments for method ListPipelineExecutions on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPipelineExecutions on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListPipelineExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPipelineExecutions.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListPipelineExecutionsOutput = $codepipeline->ListPipelineExecutions(
      PipelineName => 'MyPipelineName',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPipelineExecutionsOutput->NextToken;
    my $PipelineExecutionSummaries =
      $ListPipelineExecutionsOutput->PipelineExecutionSummaries;

    # Returns a L<Paws::CodePipeline::ListPipelineExecutionsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListPipelineExecutions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another call with the returned nextToken
value. The available pipeline execution history is limited to the most
recent 12 months, based on pipeline execution start times. Default
value is 100.



=head2 NextToken => Str

The token that was returned from the previous ListPipelineExecutions
call, which can be used to return the next set of pipeline executions
in the list.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline for which you want to get execution summary
information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPipelineExecutions in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

