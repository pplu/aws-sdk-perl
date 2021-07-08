
package Paws::Glue::ListSchemaVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Schemas => (is => 'ro', isa => 'ArrayRef[Paws::Glue::SchemaVersionListItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListSchemaVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token for paginating the returned list of tokens,
returned if the current segment of the list is not the last.


=head2 Schemas => ArrayRef[L<Paws::Glue::SchemaVersionListItem>]

An array of C<SchemaVersionList> objects containing details of each
schema version.


=head2 _request_id => Str


=cut

1;