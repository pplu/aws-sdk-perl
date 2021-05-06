
package Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse;
  use Moose;
  has KeyPhrasesDetectionJobProperties => (is => 'ro', isa => 'Paws::Comprehend::KeyPhrasesDetectionJobProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse

=head1 ATTRIBUTES


=head2 KeyPhrasesDetectionJobProperties => L<Paws::Comprehend::KeyPhrasesDetectionJobProperties>

An object that contains the properties associated with a key phrases
detection job.


=head2 _request_id => Str


=cut

1;