
package Paws::ElasticTranscoder::ListPipelinesResponse;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has Pipelines => (is => 'ro', isa => 'ArrayRef[Paws::ElasticTranscoder::Pipeline]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ListPipelinesResponse

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A value that you use to access the second and subsequent pages of
results, if any. When the pipelines fit on one page or when you've
reached the last page of results, the value of C<NextPageToken> is
C<null>.


=head2 Pipelines => ArrayRef[L<Paws::ElasticTranscoder::Pipeline>]

An array of C<Pipeline> objects.


=head2 _request_id => Str


=cut

