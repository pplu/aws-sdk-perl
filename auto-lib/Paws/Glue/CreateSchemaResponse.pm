
package Paws::Glue::CreateSchemaResponse;
  use Moose;
  has Compatibility => (is => 'ro', isa => 'Str');
  has DataFormat => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LatestSchemaVersion => (is => 'ro', isa => 'Int');
  has NextSchemaVersion => (is => 'ro', isa => 'Int');
  has RegistryArn => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaCheckpoint => (is => 'ro', isa => 'Int');
  has SchemaName => (is => 'ro', isa => 'Str');
  has SchemaStatus => (is => 'ro', isa => 'Str');
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has SchemaVersionStatus => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSchemaResponse

=head1 ATTRIBUTES


=head2 Compatibility => Str

The schema compatibility mode.

Valid values are: C<"NONE">, C<"DISABLED">, C<"BACKWARD">, C<"BACKWARD_ALL">, C<"FORWARD">, C<"FORWARD_ALL">, C<"FULL">, C<"FULL_ALL">
=head2 DataFormat => Str

The data format of the schema definition. Currently C<AVRO> and C<JSON>
are supported.

Valid values are: C<"AVRO">, C<"JSON">
=head2 Description => Str

A description of the schema if specified when created.


=head2 LatestSchemaVersion => Int

The latest version of the schema associated with the returned schema
definition.


=head2 NextSchemaVersion => Int

The next version of the schema associated with the returned schema
definition.


=head2 RegistryArn => Str

The Amazon Resource Name (ARN) of the registry.


=head2 RegistryName => Str

The name of the registry.


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) of the schema.


=head2 SchemaCheckpoint => Int

The version number of the checkpoint (the last time the compatibility
mode was changed).


=head2 SchemaName => Str

The name of the schema.


=head2 SchemaStatus => Str

The status of the schema.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"DELETING">
=head2 SchemaVersionId => Str

The unique identifier of the first schema version.


=head2 SchemaVersionStatus => Str

The status of the first schema version created.

Valid values are: C<"AVAILABLE">, C<"PENDING">, C<"FAILURE">, C<"DELETING">
=head2 Tags => L<Paws::Glue::TagsMap>

The tags for the schema.


=head2 _request_id => Str


=cut

1;