# Generated from json/callresult_class.tt

package Paws::DataPipeline::PutPipelineDefinitionOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_ValidationWarning DataPipeline_ValidationError/;
  has Errored => (is => 'ro', isa => Bool, required => 1);
  has ValidationErrors => (is => 'ro', isa => ArrayRef[DataPipeline_ValidationError]);
  has ValidationWarnings => (is => 'ro', isa => ArrayRef[DataPipeline_ValidationWarning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Errored' => 'errored',
                       'ValidationErrors' => 'validationErrors',
                       'ValidationWarnings' => 'validationWarnings'
                     },
  'IsRequired' => {
                    'Errored' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ValidationWarnings' => {
                                         'type' => 'ArrayRef[DataPipeline_ValidationWarning]',
                                         'class' => 'Paws::DataPipeline::ValidationWarning'
                                       },
               'ValidationErrors' => {
                                       'class' => 'Paws::DataPipeline::ValidationError',
                                       'type' => 'ArrayRef[DataPipeline_ValidationError]'
                                     },
               'Errored' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::PutPipelineDefinitionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errored => Bool

Indicates whether there were validation errors, and the pipeline
definition is stored but cannot be activated until you correct the
pipeline and call C<PutPipelineDefinition> to commit the corrected
pipeline.


=head2 ValidationErrors => ArrayRef[DataPipeline_ValidationError]

The validation errors that are associated with the objects defined in
C<pipelineObjects>.


=head2 ValidationWarnings => ArrayRef[DataPipeline_ValidationWarning]

The validation warnings that are associated with the objects defined in
C<pipelineObjects>.


=head2 _request_id => Str


=cut

1;