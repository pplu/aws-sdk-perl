
package Paws::Glue::CreateSchema;
  use Moose;
  has Compatibility => (is => 'ro', isa => 'Str');
  has DataFormat => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has RegistryId => (is => 'ro', isa => 'Paws::Glue::RegistryId');
  has SchemaDefinition => (is => 'ro', isa => 'Str');
  has SchemaName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Glue::TagsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateSchemaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSchema - Arguments for method CreateSchema on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSchema on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSchema.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateSchemaResponse = $glue->CreateSchema(
      DataFormat    => 'AVRO',
      SchemaName    => 'MySchemaRegistryNameString',
      Compatibility => 'NONE',                         # OPTIONAL
      Description   => 'MyDescriptionString',          # OPTIONAL
      RegistryId    => {
        RegistryArn  => 'MyGlueResourceArn',    # min: 1, max: 10240; OPTIONAL
        RegistryName => 'MySchemaRegistryNameString',    # min: 1, max: 255
      },    # OPTIONAL
      SchemaDefinition => 'MySchemaDefinitionString',    # OPTIONAL
      Tags             => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Compatibility       = $CreateSchemaResponse->Compatibility;
    my $DataFormat          = $CreateSchemaResponse->DataFormat;
    my $Description         = $CreateSchemaResponse->Description;
    my $LatestSchemaVersion = $CreateSchemaResponse->LatestSchemaVersion;
    my $NextSchemaVersion   = $CreateSchemaResponse->NextSchemaVersion;
    my $RegistryArn         = $CreateSchemaResponse->RegistryArn;
    my $RegistryName        = $CreateSchemaResponse->RegistryName;
    my $SchemaArn           = $CreateSchemaResponse->SchemaArn;
    my $SchemaCheckpoint    = $CreateSchemaResponse->SchemaCheckpoint;
    my $SchemaName          = $CreateSchemaResponse->SchemaName;
    my $SchemaStatus        = $CreateSchemaResponse->SchemaStatus;
    my $SchemaVersionId     = $CreateSchemaResponse->SchemaVersionId;
    my $SchemaVersionStatus = $CreateSchemaResponse->SchemaVersionStatus;
    my $Tags                = $CreateSchemaResponse->Tags;

    # Returns a L<Paws::Glue::CreateSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateSchema>

=head1 ATTRIBUTES


=head2 Compatibility => Str

The compatibility mode of the schema. The possible values are:

=over

=item *

I<NONE>: No compatibility mode applies. You can use this choice in
development scenarios or if you do not know the compatibility mode that
you want to apply to schemas. Any new version added will be accepted
without undergoing a compatibility check.

=item *

I<DISABLED>: This compatibility choice prevents versioning for a
particular schema. You can use this choice to prevent future versioning
of a schema.

=item *

I<BACKWARD>: This compatibility choice is recommended as it allows data
receivers to read both the current and one previous schema version.
This means that for instance, a new schema version cannot drop data
fields or change the type of these fields, so they can't be read by
readers using the previous version.

=item *

I<BACKWARD_ALL>: This compatibility choice allows data receivers to
read both the current and all previous schema versions. You can use
this choice when you need to delete fields or add optional fields, and
check compatibility against all previous schema versions.

=item *

I<FORWARD>: This compatibility choice allows data receivers to read
both the current and one next schema version, but not necessarily later
versions. You can use this choice when you need to add fields or delete
optional fields, but only check compatibility against the last schema
version.

=item *

I<FORWARD_ALL>: This compatibility choice allows data receivers to read
written by producers of any new registered schema. You can use this
choice when you need to add fields or delete optional fields, and check
compatibility against all previous schema versions.

=item *

I<FULL>: This compatibility choice allows data receivers to read data
written by producers using the previous or next version of the schema,
but not necessarily earlier or later versions. You can use this choice
when you need to add or remove optional fields, but only check
compatibility against the last schema version.

=item *

I<FULL_ALL>: This compatibility choice allows data receivers to read
data written by producers using all previous schema versions. You can
use this choice when you need to add or remove optional fields, and
check compatibility against all previous schema versions.

=back


Valid values are: C<"NONE">, C<"DISABLED">, C<"BACKWARD">, C<"BACKWARD_ALL">, C<"FORWARD">, C<"FORWARD_ALL">, C<"FULL">, C<"FULL_ALL">

=head2 B<REQUIRED> DataFormat => Str

The data format of the schema definition. Currently C<AVRO> and C<JSON>
are supported.

Valid values are: C<"AVRO">, C<"JSON">

=head2 Description => Str

An optional description of the schema. If description is not provided,
there will not be any automatic default value for this.



=head2 RegistryId => L<Paws::Glue::RegistryId>

This is a wrapper shape to contain the registry identity fields. If
this is not provided, the default registry will be used. The ARN format
for the same will be: C<arn:aws:glue:us-east-2:E<lt>customer
idE<gt>:registry/default-registry:random-5-letter-id>.



=head2 SchemaDefinition => Str

The schema definition using the C<DataFormat> setting for
C<SchemaName>.



=head2 B<REQUIRED> SchemaName => Str

Name of the schema to be created of max length of 255, and may only
contain letters, numbers, hyphen, underscore, dollar sign, or hash
mark. No whitespace.



=head2 Tags => L<Paws::Glue::TagsMap>

Amazon Web Services tags that contain a key value pair and may be
searched by console, command line, or API. If specified, follows the
Amazon Web Services tags-on-create pattern.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSchema in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

