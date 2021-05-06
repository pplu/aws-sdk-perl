
package Paws::ElasticTranscoder::UpdatePipelineStatusResponse;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::ElasticTranscoder::Pipeline');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineStatusResponse

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::ElasticTranscoder::Pipeline>

A section of the response body that provides information about the
pipeline.


=head2 _request_id => Str


=cut

