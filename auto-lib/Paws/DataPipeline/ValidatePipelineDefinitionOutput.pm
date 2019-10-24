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
  'types' => {
               'ValidationWarnings' => {
                                         'class' => 'Paws::DataPipeline::ValidationWarning',
                                         'type' => 'ArrayRef[DataPipeline_ValidationWarning]'
                                       },
               'Errored' => {
                              'type' => 'Bool'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ValidationErrors' => {
                                       'class' => 'Paws::DataPipeline::ValidationError',
                                       'type' => 'ArrayRef[DataPipeline_ValidationError]'
                                     }
             },
  'NameInRequest' => {
                       'ValidationWarnings' => 'validationWarnings',
                       'Errored' => 'errored',
                       'ValidationErrors' => 'validationErrors'
                     },
  'IsRequired' => {
                    'Errored' => 1
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