
package Paws::ElasticTranscoder::ReadJobResponse;
  use Moose;
  has Job => (is => 'ro', isa => 'Paws::ElasticTranscoder::Job');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::ReadJobResponse

=head1 ATTRIBUTES


=head2 Job => L<Paws::ElasticTranscoder::Job>

A section of the response body that provides information about the job.


=head2 _request_id => Str


=cut

