# Generated from json/callresult_class.tt

package Paws::CodePipeline::GetPipelineExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_PipelineExecution/;
  has PipelineExecution => (is => 'ro', isa => CodePipeline_PipelineExecution);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PipelineExecution' => 'pipelineExecution'
                     },
  'types' => {
               'PipelineExecution' => {
                                        'class' => 'Paws::CodePipeline::PipelineExecution',
                                        'type' => 'CodePipeline_PipelineExecution'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecution => CodePipeline_PipelineExecution

Represents information about the execution of a pipeline.


=head2 _request_id => Str


=cut

1;