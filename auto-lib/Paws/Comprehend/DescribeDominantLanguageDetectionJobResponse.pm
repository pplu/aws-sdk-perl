
package Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse;
  use Moose;
  has DominantLanguageDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::DominantLanguageDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse

=head1 ATTRIBUTES


=head2 DominantLanguageDetectionJobProperties => L<Paws::Comprehend::DominantLanguageDetectionJobProperties>

An object that contains the properties associated with a dominant
language detection job.


=head2 _request_id => Str


=cut

1;