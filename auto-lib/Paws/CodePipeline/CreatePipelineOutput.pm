# Generated from json/callresult_class.tt

package Paws::CodePipeline::CreatePipelineOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_Tag CodePipeline_PipelineDeclaration/;
  has Pipeline => (is => 'ro', isa => CodePipeline_PipelineDeclaration);
  has Tags => (is => 'ro', isa => ArrayRef[CodePipeline_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::CodePipeline::Tag',
                           'type' => 'ArrayRef[CodePipeline_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Pipeline' => {
                               'class' => 'Paws::CodePipeline::PipelineDeclaration',
                               'type' => 'CodePipeline_PipelineDeclaration'
                             }
             },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Pipeline' => 'pipeline'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreatePipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => CodePipeline_PipelineDeclaration

Represents the structure of actions and stages to be performed in the
pipeline.


=head2 Tags => ArrayRef[CodePipeline_Tag]

Specifies the tags applied to the pipeline.


=head2 _request_id => Str


=cut

1;