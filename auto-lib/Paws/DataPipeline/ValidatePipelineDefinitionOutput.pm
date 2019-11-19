# Generated from json/callresult_class.tt

package Paws::DataPipeline::ValidatePipelineDefinitionOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_ValidationError DataPipeline_ValidationWarning/;
  has Errored => (is => 'ro', isa => Bool, required => 1);
  has ValidationErrors => (is => 'ro', isa => ArrayRef[DataPipeline_ValidationError]);
  has ValidationWarnings => (is => 'ro', isa => ArrayRef[DataPipeline_ValidationWarning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ValidationWarnings' => 'validationWarnings',
                       'ValidationErrors' => 'validationErrors',
                       'Errored' => 'errored'
                     },
  'IsRequired' => {
                    'Errored' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ValidationWarnings' => {
                                         'class' => 'Paws::DataPipeline::ValidationWarning',
                                         'type' => 'ArrayRef[DataPipeline_ValidationWarning]'
                                       },
               'Errored' => {
                              'type' => 'Bool'
                            },
               'ValidationErrors' => {
                                       'type' => 'ArrayRef[DataPipeline_ValidationError]',
                                       'class' => 'Paws::DataPipeline::ValidationError'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidatePipelineDefinitionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errored => Bool

Indicates whether there were validation errors.


=head2 ValidationErrors => ArrayRef[DataPipeline_ValidationError]

Any validation errors that were found.


=head2 ValidationWarnings => ArrayRef[DataPipeline_ValidationWarning]

Any validation warnings that were found.


=head2 _request_id => Str


=cut

1;