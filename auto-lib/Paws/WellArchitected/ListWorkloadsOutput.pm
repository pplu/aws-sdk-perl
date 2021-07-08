
package Paws::WellArchitected::ListWorkloadsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WorkloadSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::WorkloadSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListWorkloadsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 WorkloadSummaries => ArrayRef[L<Paws::WellArchitected::WorkloadSummary>]




=head2 _request_id => Str


=cut

