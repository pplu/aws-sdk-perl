
package Paws::IoT::ListPolicyPrincipalsResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyPrincipalsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.



=head2 Principals => ArrayRef[Str|Undef]

The descriptions of the principals.




=cut

