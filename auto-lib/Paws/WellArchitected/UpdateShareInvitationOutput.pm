
package Paws::WellArchitected::UpdateShareInvitationOutput;
  use Moose;
  has ShareInvitation => (is => 'ro', isa => 'Paws::WellArchitected::ShareInvitation');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateShareInvitationOutput

=head1 ATTRIBUTES


=head2 ShareInvitation => L<Paws::WellArchitected::ShareInvitation>

The updated workload share invitation.


=head2 _request_id => Str


=cut

