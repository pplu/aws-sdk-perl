
package Paws::ECS::SubmitContainerStateChangeResponse;
  use Moose;
  has Acknowledgment => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'acknowledgment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitContainerStateChangeResponse

=head1 ATTRIBUTES


=head2 Acknowledgment => Str

Acknowledgement of the state change.




=cut

1;