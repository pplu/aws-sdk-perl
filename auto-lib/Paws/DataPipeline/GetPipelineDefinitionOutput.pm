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
               'PipelineObjects' => {
                                      'class' => 'Paws::DataPipeline::PipelineObject',
                                      'type' => 'ArrayRef[DataPipeline_PipelineObject]'
                                    },
               'ParameterValues' => {
                                      'class' => 'Paws::DataPipeline::ParameterValue',
                                      'type' => 'ArrayRef[DataPipeline_ParameterValue]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ParameterObjects' => {
                                       'type' => 'ArrayRef[DataPipeline_ParameterObject]',
                                       'class' => 'Paws::DataPipeline::ParameterObject'
                                     }
             },
  'NameInRequest' => {
                       'PipelineObjects' => 'pipelineObjects',
                       'ParameterValues' => 'parameterValues',
                       'ParameterObjects' => 'parameterObjects'
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