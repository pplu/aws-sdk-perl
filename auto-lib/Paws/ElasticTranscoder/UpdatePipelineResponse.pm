
package Paws::ElasticTranscoder::UpdatePipelineResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Pipeline => (is => 'ro', isa => 'Paws::ElasticTranscoder::Pipeline');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineResponse

=head1 ATTRIBUTES

=head2 Pipeline => Paws::ElasticTranscoder::Pipeline

  


=cut

