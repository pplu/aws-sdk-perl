
package Paws::Comprehend::DescribeSentimentDetectionJobResponse;
  use Moose;
  has SentimentDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::SentimentDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeSentimentDetectionJobResponse

=head1 ATTRIBUTES


=head2 SentimentDetectionJobProperties => L<Paws::Comprehend::SentimentDetectionJobProperties>

An object that contains the properties associated with a sentiment
detection job.


=head2 _request_id => Str


=cut

1;