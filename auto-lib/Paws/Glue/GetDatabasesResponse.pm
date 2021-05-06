
package Paws::Glue::GetDatabasesResponse;
  use Moose;
  has DatabaseList => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Database]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDatabasesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseList => ArrayRef[L<Paws::Glue::Database>]

A list of C<Database> objects from the specified catalog.


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 _request_id => Str


=cut

1;