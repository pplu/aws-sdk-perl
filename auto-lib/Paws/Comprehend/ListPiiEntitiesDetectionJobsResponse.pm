
package Paws::Comprehend::ListPiiEntitiesDetectionJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PiiEntitiesDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::PiiEntitiesDetectionJobProperties]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListPiiEntitiesDetectionJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 PiiEntitiesDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::PiiEntitiesDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 _request_id => Str


=cut

1;