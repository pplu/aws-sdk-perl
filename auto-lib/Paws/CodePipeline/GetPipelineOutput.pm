# Generated from json/callresult_class.tt

package Paws::CodePipeline::GetPipelineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_PipelineMetadata CodePipeline_PipelineDeclaration/;
  has Metadata => (is => 'ro', isa => CodePipeline_PipelineMetadata);
  has Pipeline => (is => 'ro', isa => CodePipeline_PipelineDeclaration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Pipeline' => {
                               'class' => 'Paws::CodePipeline::PipelineDeclaration',
                               'type' => 'CodePipeline_PipelineDeclaration'
                             },
               'Metadata' => {
                               'class' => 'Paws::CodePipeline::PipelineMetadata',
                               'type' => 'CodePipeline_PipelineMetadata'
                             }
             },
  'NameInRequest' => {
                       'Pipeline' => 'pipeline',
                       'Metadata' => 'metadata'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineOutput

=head1 ATTRIBUTES


=head2 Metadata => CodePipeline_PipelineMetadata

Represents the pipeline metadata information returned as part of the
output of a C<GetPipeline> action.


=head2 Pipeline => CodePipeline_PipelineDeclaration

Represents the structure of actions and stages to be performed in the
pipeline.


=head2 _request_id => Str


=cut

1;