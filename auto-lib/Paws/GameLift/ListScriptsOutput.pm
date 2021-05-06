
package Paws::GameLift::ListScriptsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Scripts => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Script]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ListScriptsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this action. If no token is returned, these results represent
the end of the list.


=head2 Scripts => ArrayRef[L<Paws::GameLift::Script>]

A set of properties describing the requested script.


=head2 _request_id => Str


=cut

1;