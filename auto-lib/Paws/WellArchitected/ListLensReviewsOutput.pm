
package Paws::WellArchitected::ListLensReviewsOutput;
  use Moose;
  has LensReviewSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::LensReviewSummary]');
  has MilestoneNumber => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListLensReviewsOutput

=head1 ATTRIBUTES


=head2 LensReviewSummaries => ArrayRef[L<Paws::WellArchitected::LensReviewSummary>]




=head2 MilestoneNumber => Int




=head2 NextToken => Str




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut

