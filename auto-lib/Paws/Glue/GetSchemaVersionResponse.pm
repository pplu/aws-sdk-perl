
package Paws::Glue::GetSchemaVersionResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DataFormat => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaDefinition => (is => 'ro', isa => 'Str');
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSchemaVersionResponse

=head1 ATTRIBUTES


=head2 CreatedTime => Str

The date and time the schema version was created.


=head2 DataFormat => Str

The data format of the schema definition. Currently C<AVRO> and C<JSON>
are supported.

Valid values are: C<"AVRO">, C<"JSON">
=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the schema.


=head2 SchemaDefinition => Str

The schema definition for the schema ID.


=head2 SchemaVersionId => Str

The C<SchemaVersionId> of the schema version.


=head2 Status => Str

The status of the schema version.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"FAILURE">, C<"DELETING">
=head2 VersionNumber => Int

The version number of the schema.


=head2 _request_id => Str


=cut

1;