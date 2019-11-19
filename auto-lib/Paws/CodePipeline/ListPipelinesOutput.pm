# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListPipelinesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_PipelineSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has Pipelines => (is => 'ro', isa => ArrayRef[CodePipeline_PipelineSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Pipelines' => {
                                'class' => 'Paws::CodePipeline::PipelineSummary',
                                'type' => 'ArrayRef[CodePipeline_PipelineSummary]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Pipelines' => 'pipelines'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListPipelinesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned. It can be used in a subsequent list
pipelines call to return the next set of pipelines in the list.


=head2 Pipelines => ArrayRef[CodePipeline_PipelineSummary]

The list of pipelines.


=head2 _request_id => Str


=cut

1;