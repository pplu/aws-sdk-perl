
package Paws::GameLift::CreateAliasOutput;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::GameLift::Alias');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateAliasOutput

=head1 ATTRIBUTES


=head2 Alias => L<Paws::GameLift::Alias>

Object that describes the newly created alias record.


=head2 _request_id => Str


=cut

1;