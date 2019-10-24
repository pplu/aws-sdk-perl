# Generated from json/callresult_class.tt

package Paws::DataPipeline::DescribeObjectsOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::DataPipeline::Types qw/DataPipeline_PipelineObject/;
  has HasMoreResults => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);
  has PipelineObjects => (is => 'ro', isa => ArrayRef[DataPipeline_PipelineObject], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HasMoreResults' => {
                                     'type' => 'Bool'
                                   },
               'PipelineObjects' => {
                                      'class' => 'Paws::DataPipeline::PipelineObject',
                                      'type' => 'ArrayRef[DataPipeline_PipelineObject]'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'HasMoreResults' => 'hasMoreResults',
                       'PipelineObjects' => 'pipelineObjects',
                       'Marker' => 'marker'
                     },
  'IsRequired' => {
                    'PipelineObjects' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::DescribeObjectsOutput

=head1 ATTRIBUTES


=head2 HasMoreResults => Bool

Indicates whether there are more results to return.


=head2 Marker => Str

The starting point for the next page of results. To view the next page
of results, call C<DescribeObjects> again with this marker value. If
the value is null, there are no more results.


=head2 B<REQUIRED> PipelineObjects => ArrayRef[DataPipeline_PipelineObject]

An array of object definitions.


=head2 _request_id => Str


=cut

1;