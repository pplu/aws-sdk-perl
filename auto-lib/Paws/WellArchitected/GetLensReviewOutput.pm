
package Paws::WellArchitected::GetLensReviewOutput;
  use Moose;
  has LensReview => (is => 'ro', isa => 'Paws::WellArchitected::LensReview');
  has MilestoneNumber => (is => 'ro', isa => 'Int');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensReviewOutput

=head1 ATTRIBUTES


=head2 LensReview => L<Paws::WellArchitected::LensReview>




=head2 MilestoneNumber => Int




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut

