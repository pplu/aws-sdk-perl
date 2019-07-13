
package Paws::Lightsail::GetRelationalDatabaseResult;
  use Moose;
  has RelationalDatabase => (is => 'ro', isa => 'Paws::Lightsail::RelationalDatabase', traits => ['NameInRequest'], request_name => 'relationalDatabase' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseResult

=head1 ATTRIBUTES


=head2 RelationalDatabase => L<Paws::Lightsail::RelationalDatabase>

An object describing the specified database.


=head2 _request_id => Str


=cut

1;