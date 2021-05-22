
package Paws::Glue::PutSchemaVersionMetadataResponse;
  use Moose;
  has LatestVersion => (is => 'ro', isa => 'Bool');
  has MetadataKey => (is => 'ro', isa => 'Str');
  has MetadataValue => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str');
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::PutSchemaVersionMetadataResponse

=head1 ATTRIBUTES


=head2 LatestVersion => Bool

The latest version of the schema.


=head2 MetadataKey => Str

The metadata key.


=head2 MetadataValue => Str

The value of the metadata key.


=head2 RegistryName => Str

The name for the registry.


=head2 SchemaArn => Str

The Amazon Resource Name (ARN) for the schema.


=head2 SchemaName => Str

The name for the schema.


=head2 SchemaVersionId => Str

The unique version ID of the schema version.


=head2 VersionNumber => Int

The version number of the schema.


=head2 _request_id => Str


=cut

1;