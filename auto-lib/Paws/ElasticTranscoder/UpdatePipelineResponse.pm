
package Paws::ElasticTranscoder::UpdatePipelineResponse;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::ElasticTranscoder::Pipeline');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::UpdatePipelineResponse

=head1 ATTRIBUTES


=head2 Pipeline => L<Paws::ElasticTranscoder::Pipeline>

The pipeline updated by this C<UpdatePipelineResponse> call.


=head2 Warnings => ArrayRef[L<Paws::ElasticTranscoder::Warning>]

Elastic Transcoder returns a warning if the resources used by your
pipeline are not in the same region as the pipeline.

Using resources in the same region, such as your Amazon S3 buckets,
Amazon SNS notification topics, and AWS KMS key, reduces processing
time and prevents cross-regional charges.


=head2 _request_id => Str


=cut

