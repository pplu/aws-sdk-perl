
package Paws::ElasticTranscoder::ReadPipelineResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticTranscoder::Types qw/ElasticTranscoder_Warning ElasticTranscoder_Pipeline/;
  has Pipeline => (is => 'ro', isa => ElasticTranscoder_Pipeline);
  has Warnings => (is => 'ro', isa => ArrayRef[ElasticTranscoder_Warning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Pipeline' => {
                               'type' => 'ElasticTranscoder_Pipeline',
                               'class' => 'Paws::ElasticTranscoder::Pipeline'
                             },
               'Warnings' => {
                               'type' => 'ArrayRef[ElasticTranscoder_Warning]',
                               'class' => 'Paws::ElasticTranscoder::Warning'
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

Paws::ElasticTranscoder::ReadPipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => ElasticTranscoder_Pipeline

A section of the response body that provides information about the
pipeline.


=head2 Warnings => ArrayRef[ElasticTranscoder_Warning]

Elastic Transcoder returns a warning if the resources used by your
pipeline are not in the same region as the pipeline.

Using resources in the same region, such as your Amazon S3 buckets,
Amazon SNS notification topics, and AWS KMS key, reduces processing
time and prevents cross-regional charges.


=head2 _request_id => Str


=cut

