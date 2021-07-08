
package Paws::WellArchitected::ListWorkloadSharesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadId => (is => 'ro', isa => 'Str');
  has WorkloadShareSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::WorkloadShareSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListWorkloadSharesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 WorkloadId => Str




=head2 WorkloadShareSummaries => ArrayRef[L<Paws::WellArchitected::WorkloadShareSummary>]




=head2 _request_id => Str


=cut

