
package Paws::Glue::RegisterSchemaVersionResponse;
  use Moose;
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::RegisterSchemaVersionResponse

=head1 ATTRIBUTES


=head2 SchemaVersionId => Str

The unique ID that represents the version of this schema.


=head2 Status => Str

The status of the schema version.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"FAILURE">, C<"DELETING">
=head2 VersionNumber => Int

The version of this schema (for sync flow only, in case this is the
first version).


=head2 _request_id => Str


=cut

1;