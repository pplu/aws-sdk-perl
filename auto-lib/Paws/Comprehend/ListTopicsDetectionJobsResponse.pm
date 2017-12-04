
package Paws::Comprehend::ListTopicsDetectionJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TopicsDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::TopicsDetectionJobProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListTopicsDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 TopicsDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::TopicsDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;