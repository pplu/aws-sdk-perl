# Generated from json/callresult_class.tt

package Paws::CodePipeline::RetryStageExecutionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has PipelineExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PipelineExecutionId' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'PipelineExecutionId' => 'pipelineExecutionId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::RetryStageExecutionOutput

=head1 ATTRIBUTES


=head2 PipelineExecutionId => Str

The ID of the current workflow execution in the failed stage.


=head2 _request_id => Str


=cut

1;