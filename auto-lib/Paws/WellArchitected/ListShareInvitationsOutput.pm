
package Paws::WellArchitected::ListShareInvitationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ShareInvitationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::ShareInvitationSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListShareInvitationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 ShareInvitationSummaries => ArrayRef[L<Paws::WellArchitected::ShareInvitationSummary>]

List of share invitation summaries in a workload.


=head2 _request_id => Str


=cut

