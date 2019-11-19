# Generated from json/callresult_class.tt

package Paws::CodePipeline::UpdatePipelineOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_PipelineDeclaration/;
  has Pipeline => (is => 'ro', isa => CodePipeline_PipelineDeclaration);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Pipeline' => {
                               'type' => 'CodePipeline_PipelineDeclaration',
                               'class' => 'Paws::CodePipeline::PipelineDeclaration'
                             }
             },
  'NameInRequest' => {
                       'Pipeline' => 'pipeline'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdatePipelineOutput

=head1 ATTRIBUTES


=head2 Pipeline => CodePipeline_PipelineDeclaration

The structure of the updated pipeline.


=head2 _request_id => Str


=cut

1;