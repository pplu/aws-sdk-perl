
package Paws::ECS::SubmitContainerStateChangeResponse;
  use Moose;
  has Acknowledgment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'acknowledgment' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitContainerStateChangeResponse

=head1 ATTRIBUTES


=head2 Acknowledgment => Str

Acknowledgement of the state change.


=head2 _request_id => Str


=cut

1;