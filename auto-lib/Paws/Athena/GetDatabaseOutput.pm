
package Paws::Athena::GetDatabaseOutput;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::Athena::Database');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetDatabaseOutput

=head1 ATTRIBUTES


=head2 Database => L<Paws::Athena::Database>

The database returned.


=head2 _request_id => Str


=cut

1;