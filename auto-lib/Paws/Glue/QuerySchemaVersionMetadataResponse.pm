
package Paws::Glue::QuerySchemaVersionMetadataResponse;
  use Moose;
  has MetadataInfoMap => (is => 'ro', isa => 'Paws::Glue::MetadataInfoMap');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaVersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::QuerySchemaVersionMetadataResponse

=head1 ATTRIBUTES


=head2 MetadataInfoMap => L<Paws::Glue::MetadataInfoMap>

A map of a metadata key and associated values.


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 SchemaVersionId => Str

The unique version ID of the schema version.


=head2 _request_id => Str


=cut

1;