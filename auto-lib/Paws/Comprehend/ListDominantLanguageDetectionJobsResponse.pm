
package Paws::Comprehend::ListDominantLanguageDetectionJobsResponse;
  use Moose;
  has DominantLanguageDetectionJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DominantLanguageDetectionJobProperties]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListDominantLanguageDetectionJobsResponse

=head1 ATTRIBUTES


=head2 DominantLanguageDetectionJobPropertiesList => ArrayRef[L<Paws::Comprehend::DominantLanguageDetectionJobProperties>]

A list containing the properties of each job that is returned.


=head2 NextToken => Str

Identifies the next page of results to return.


=head2 _request_id => Str


=cut

1;