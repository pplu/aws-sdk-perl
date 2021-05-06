
package Paws::DataPipeline::DescribeObjectsOutput;
  use Moose;
  has HasMoreResults => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'hasMoreResults' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'marker' );
  has PipelineObjects => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::PipelineObject]', traits => ['NameInRequest'], request_name => 'pipelineObjects' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

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


=head2 B<REQUIRED> PipelineObjects => ArrayRef[L<Paws::DataPipeline::PipelineObject>]

An array of object definitions.


=head2 _request_id => Str


=cut

1;