
package Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse;
  use Moose;
  has KeyPhrasesDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::KeyPhrasesDetectionJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse

=head1 ATTRIBUTES


=head2 KeyPhrasesDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::KeyPhrasesDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;