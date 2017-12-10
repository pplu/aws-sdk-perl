
package Paws::Glue::GetTableResponse;
  use Moose;
  has Table => (is => 'ro', isa => 'Paws::Glue::Table');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetTableResponse

=head1 ATTRIBUTES


=head2 Table => L<Paws::Glue::Table>

The C<Table> object that defines the specified table.


=head2 _request_id => Str


=cut

1;