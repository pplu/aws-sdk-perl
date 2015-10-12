
package Paws::EC2::ModifySpotFleetRequestResponse;
  use Moose;
  has Return => (is => 'ro', isa => 'Bool', xmlname => 'return', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySpotFleetRequestResponse

=head1 ATTRIBUTES

=head2 Return => Bool

  Is C<true> if the request succeeds, and an error otherwise.


=cut

