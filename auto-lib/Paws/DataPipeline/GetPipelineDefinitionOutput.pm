# Generated from json/callresult_class.tt

package Paws::DataPipeline::GetPipelineDefinitionOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_ParameterValue DataPipeline_ParameterObject DataPipeline_PipelineObject/;
  has ParameterObjects => (is => 'ro', isa => ArrayRef[DataPipeline_ParameterObject]);
  has ParameterValues => (is => 'ro', isa => ArrayRef[DataPipeline_ParameterValue]);
  has PipelineObjects => (is => 'ro', isa => ArrayRef[DataPipeline_PipelineObject]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ParameterObjects' => {
                                       'class' => 'Paws::DataPipeline::ParameterObject',
                                       'type' => 'ArrayRef[DataPipeline_ParameterObject]'
                                     },
               'ParameterValues' => {
                                      'class' => 'Paws::DataPipeline::ParameterValue',
                                      'type' => 'ArrayRef[DataPipeline_ParameterValue]'
                                    },
               'PipelineObjects' => {
                                      'class' => 'Paws::DataPipeline::PipelineObject',
                                      'type' => 'ArrayRef[DataPipeline_PipelineObject]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ParameterObjects' => 'parameterObjects',
                       'ParameterValues' => 'parameterValues',
                       'PipelineObjects' => 'pipelineObjects'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::GetPipelineDefinitionOutput

=head1 ATTRIBUTES


=head2 ParameterObjects => ArrayRef[DataPipeline_ParameterObject]

The parameter objects used in the pipeline definition.


=head2 ParameterValues => ArrayRef[DataPipeline_ParameterValue]

The parameter values used in the pipeline definition.


=head2 PipelineObjects => ArrayRef[DataPipeline_PipelineObject]

The objects defined in the pipeline.


=head2 _request_id => Str


=cut

1;