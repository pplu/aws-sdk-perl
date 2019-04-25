
package Paws::Comprehend::ListSentimentDetectionJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SentimentDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::SentimentDetectionJobProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListSentimentDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 SentimentDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::SentimentDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;