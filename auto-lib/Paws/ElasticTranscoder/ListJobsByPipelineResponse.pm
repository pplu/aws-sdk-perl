
package Paws::ElasticTranscoder::ListJobsByPipelineResponse;
  use Moose;
  has Jobs => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Job]');
  has NextPageToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListJobsByPipelineResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[L<Paws::ElasticTranscoder::Job>]

An array of C<Job> objects that are in the specified pipeline.


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the jobs in the specified pipeline fit on one
page or when you've reached the last page of results, the value of
C<NextPageToken> is C<null>.


=head2 _request_id => Str


=cut

