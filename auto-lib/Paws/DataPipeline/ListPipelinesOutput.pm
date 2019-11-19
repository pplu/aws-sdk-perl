# Generated from json/callresult_class.tt

package Paws::DataPipeline::ListPipelinesOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_PipelineIdName/;
  has HasMoreResults => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has PipelineIdList => (is => 'ro', isa => ArrayRef[DataPipeline_PipelineIdName], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HasMoreResults' => {
                                     'type' => 'Bool'
                                   },
               'PipelineIdList' => {
                                     'class' => 'Paws::DataPipeline::PipelineIdName',
                                     'type' => 'ArrayRef[DataPipeline_PipelineIdName]'
                                   }
             },
  'NameInRequest' => {
                       'PipelineIdList' => 'pipelineIdList',
                       'HasMoreResults' => 'hasMoreResults',
                       'Marker' => 'marker'
                     },
  'IsRequired' => {
                    'PipelineIdList' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ListPipelinesOutput

=head1 ATTRIBUTES


=head2 HasMoreResults => Bool

Indicates whether there are more results that can be obtained by a
subsequent call.


=head2 Marker => Str

The starting point for the next page of results. To view the next page
of results, call C<ListPipelinesOutput> again with this marker value.
If the value is null, there are no more results.


=head2 B<REQUIRED> PipelineIdList => ArrayRef[DataPipeline_PipelineIdName]

The pipeline identifiers. If you require additional information about
the pipelines, you can use these identifiers to call DescribePipelines
and GetPipelineDefinition.


=head2 _request_id => Str


=cut

1;