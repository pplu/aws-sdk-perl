
package Paws::ECS::SubmitTaskStateChangeResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has acknowledgment => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::SubmitTaskStateChangeResponse

=head1 ATTRIBUTES

=head2 acknowledgment => Str

  

Acknowledgement of the state change.











=cut

