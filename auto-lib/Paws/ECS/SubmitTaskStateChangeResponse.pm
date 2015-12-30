
package Paws::ECS::SubmitTaskStateChangeResponse;
  use Moose;
  has Acknowledgment => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'acknowledgment' );


### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitTaskStateChangeResponse

=head1 ATTRIBUTES


=head2 Acknowledgment => Str

Acknowledgement of the state change.




=cut

1;