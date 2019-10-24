
package Paws::ElasticTranscoder::UpdatePipelineStatusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Pipeline/;
  has Pipeline => (is => 'ro', isa => ElasticTranscoder_Pipeline);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Pipeline' => {
                               'class' => 'Paws::ElasticTranscoder::Pipeline',
                               'type' => 'ElasticTranscoder_Pipeline'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineStatusResponse

=head1 ATTRIBUTES


=head2 Pipeline => ElasticTranscoder_Pipeline

A section of the response body that provides information about the
pipeline.


=head2 _request_id => Str


=cut

