
package Paws::IoT::ListPrincipalPoliciesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Policy]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPrincipalPoliciesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

  The marker for the next set of results, or null if there are no
additional results.

=head2 Policies => ArrayRef[L<Paws::IoT::Policy>]

  The policies.


=cut

