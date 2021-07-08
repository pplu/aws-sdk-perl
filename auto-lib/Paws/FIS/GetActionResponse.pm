
package Paws::FIS::GetActionResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::FIS::Action', traits => ['NameInRequest'], request_name => 'action');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::GetActionResponse

=head1 ATTRIBUTES


=head2 Action => L<Paws::FIS::Action>

Information about the action.


=head2 _request_id => Str


=cut

