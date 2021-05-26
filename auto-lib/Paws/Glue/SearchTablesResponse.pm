
package Paws::Glue::SearchTablesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TableList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Table]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SearchTablesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, present if the current list segment is not the
last.


=head2 TableList => ArrayRef[L<Paws::Glue::Table>]

A list of the requested C<Table> objects. The C<SearchTables> response
returns only the tables that you have access to.


=head2 _request_id => Str


=cut

1;