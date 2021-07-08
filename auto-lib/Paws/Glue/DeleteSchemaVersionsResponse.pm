
package Paws::Glue::DeleteSchemaVersionsResponse;
  use Moose;
  has SchemaVersionErrors => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SchemaVersionErrorItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteSchemaVersionsResponse

=head1 ATTRIBUTES


=head2 SchemaVersionErrors => ArrayRef[L<Paws::Glue::SchemaVersionErrorItem>]

A list of C<SchemaVersionErrorItem> objects, each containing an error
and schema version.


=head2 _request_id => Str


=cut

1;