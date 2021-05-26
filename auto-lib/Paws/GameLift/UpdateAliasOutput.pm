
package Paws::GameLift::UpdateAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::GameLift::Alias');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateAliasOutput

=head1 ATTRIBUTES


=head2 Alias => L<Paws::GameLift::Alias>

The updated alias resource.


=head2 _request_id => Str


=cut

1;