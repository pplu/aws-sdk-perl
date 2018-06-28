
package Paws::Comprehend::DescribeEntitiesDetectionJobResponse;
  use Moose;
  has EntitiesDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::EntitiesDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeEntitiesDetectionJobResponse

=head1 ATTRIBUTES


=head2 EntitiesDetectionJobProperties => L<Paws::Comprehend::EntitiesDetectionJobProperties>

An object that contains the properties associated with an entities
detection job.


=head2 _request_id => Str


=cut

1;