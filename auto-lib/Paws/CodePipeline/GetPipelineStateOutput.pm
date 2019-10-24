# Generated from json/callresult_class.tt

package Paws::CodePipeline::GetPipelineStateOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_StageState/;
  has Created => (is => 'ro', isa => Str);
  has PipelineName => (is => 'ro', isa => Str);
  has PipelineVersion => (is => 'ro', isa => Int);
  has StageStates => (is => 'ro', isa => ArrayRef[CodePipeline_StageState]);
  has Updated => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StageStates' => {
                                  'class' => 'Paws::CodePipeline::StageState',
                                  'type' => 'ArrayRef[CodePipeline_StageState]'
                                },
               'PipelineName' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Created' => {
                              'type' => 'Str'
                            },
               'PipelineVersion' => {
                                      'type' => 'Int'
                                    },
               'Updated' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'StageStates' => 'stageStates',
                       'PipelineName' => 'pipelineName',
                       'Created' => 'created',
                       'PipelineVersion' => 'pipelineVersion',
                       'Updated' => 'updated'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineStateOutput

=head1 ATTRIBUTES


=head2 Created => Str

The date and time the pipeline was created, in timestamp format.


=head2 PipelineName => Str

The name of the pipeline for which you want to get the state.


=head2 PipelineVersion => Int

The version number of the pipeline.

A newly-created pipeline is always assigned a version number of C<1>.


=head2 StageStates => ArrayRef[CodePipeline_StageState]

A list of the pipeline stage output information, including stage name,
state, most recent run details, whether the stage is disabled, and
other data.


=head2 Updated => Str

The date and time the pipeline was last updated, in timestamp format.


=head2 _request_id => Str


=cut

1;