
package Paws::Comprehend::DescribeTopicsDetectionJobResponse;
  use Moose;
  has TopicsDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::TopicsDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeTopicsDetectionJobResponse

=head1 ATTRIBUTES


=head2 TopicsDetectionJobProperties => L<Paws::Comprehend::TopicsDetectionJobProperties>

The list of properties for the requested job.


=head2 _request_id => Str


=cut

1;