
package Paws::Comprehend::ListEntitiesDetectionJobsResponse;
  use Moose;
  has EntitiesDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::EntitiesDetectionJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListEntitiesDetectionJobsResponse

=head1 ATTRIBUTES


=head2 EntitiesDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::EntitiesDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;