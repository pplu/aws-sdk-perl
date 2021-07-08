
package Paws::WellArchitected::GetLensReviewReportOutput;
  use Moose;
  has LensReviewReport => (is => 'ro', isa => 'Paws::WellArchitected::LensReviewReport');
  has MilestoneNumber => (is => 'ro', isa => 'Int');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensReviewReportOutput

=head1 ATTRIBUTES


=head2 LensReviewReport => L<Paws::WellArchitected::LensReviewReport>




=head2 MilestoneNumber => Int




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut

