
package Paws::Glue::GetDatabaseResponse;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::Glue::Database');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDatabaseResponse

=head1 ATTRIBUTES


=head2 Database => L<Paws::Glue::Database>

The definition of the specified database in the catalog.


=head2 _request_id => Str


=cut

1;