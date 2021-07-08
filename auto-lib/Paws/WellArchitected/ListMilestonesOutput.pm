
package Paws::WellArchitected::ListMilestonesOutput;
  use Moose;
  has MilestoneSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::MilestoneSummary]');
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListMilestonesOutput

=head1 ATTRIBUTES


=head2 MilestoneSummaries => ArrayRef[L<Paws::WellArchitected::MilestoneSummary>]




=head2 NextToken => Str




=head2 WorkloadId => Str




=head2 _request_id => Str


=cut

