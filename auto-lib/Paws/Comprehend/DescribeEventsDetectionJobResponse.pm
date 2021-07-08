
package Paws::Comprehend::DescribeEventsDetectionJobResponse;
  use Moose;
  has EventsDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::EventsDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeEventsDetectionJobResponse

=head1 ATTRIBUTES


=head2 EventsDetectionJobProperties => L<Paws::Comprehend::EventsDetectionJobProperties>

An object that contains the properties associated with an event
detection job.


=head2 _request_id => Str


=cut

1;