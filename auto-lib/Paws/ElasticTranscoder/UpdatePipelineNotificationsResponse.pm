
package Paws::ElasticTranscoder::UpdatePipelineNotificationsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Pipeline/;
  has Pipeline => (is => 'ro', isa => ElasticTranscoder_Pipeline);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Pipeline' => {
                               'type' => 'ElasticTranscoder_Pipeline',
                               'class' => 'Paws::ElasticTranscoder::Pipeline'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineNotificationsResponse

=head1 ATTRIBUTES


=head2 Pipeline => ElasticTranscoder_Pipeline

A section of the response body that provides information about the
pipeline associated with this notification.


=head2 _request_id => Str


=cut

