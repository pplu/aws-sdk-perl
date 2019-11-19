# Generated from json/callresult_class.tt

package Paws::CodePipeline::PutActionRevisionOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CodePipeline::Types qw//;
  has NewRevision => (is => 'ro', isa => Bool);
  has PipelineExecutionId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PipelineExecutionId' => {
                                          'type' => 'Str'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NewRevision' => {
                                  'type' => 'Bool'
                                }
             },
  'NameInRequest' => {
                       'PipelineExecutionId' => 'pipelineExecutionId',
                       'NewRevision' => 'newRevision'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutActionRevisionOutput

=head1 ATTRIBUTES


=head2 NewRevision => Bool

Indicates whether the artifact revision was previously used in an
execution of the specified pipeline.


=head2 PipelineExecutionId => Str

The ID of the current workflow state of the pipeline.


=head2 _request_id => Str


=cut

1;