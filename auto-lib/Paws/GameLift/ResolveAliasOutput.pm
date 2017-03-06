
package Paws::GameLift::ResolveAliasOutput;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ResolveAliasOutput

=head1 ATTRIBUTES


=head2 FleetId => Str

Fleet identifier that is associated with the requested alias.


=head2 _request_id => Str


=cut

1;