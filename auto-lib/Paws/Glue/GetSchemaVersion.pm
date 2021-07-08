
package Paws::Glue::GetSchemaVersion;
  use Moose;
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId');
  has SchemaVersionId => (is => 'ro', isa => 'Str');
  has SchemaVersionNumber => (is => 'ro', isa => 'Paws::Glue::SchemaVersionNumber');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetSchemaVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSchemaVersion - Arguments for method GetSchemaVersion on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaVersion on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetSchemaVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaVersion.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetSchemaVersionResponse = $glue->GetSchemaVersion(
      SchemaId => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },    # OPTIONAL
      SchemaVersionId     => 'MySchemaVersionIdString',    # OPTIONAL
      SchemaVersionNumber => {
        LatestVersion => 1,    # OPTIONAL
        VersionNumber => 1,    # min: 1, max: 100000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CreatedTime      = $GetSchemaVersionResponse->CreatedTime;
    my $DataFormat       = $GetSchemaVersionResponse->DataFormat;
    my $SchemaArn        = $GetSchemaVersionResponse->SchemaArn;
    my $SchemaDefinition = $GetSchemaVersionResponse->SchemaDefinition;
    my $SchemaVersionId  = $GetSchemaVersionResponse->SchemaVersionId;
    my $Status           = $GetSchemaVersionResponse->Status;
    my $VersionNumber    = $GetSchemaVersionResponse->VersionNumber;

    # Returns a L<Paws::Glue::GetSchemaVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetSchemaVersion>

=head1 ATTRIBUTES


=head2 SchemaId => L<Paws::Glue::SchemaId>

This is a wrapper structure to contain schema identity fields. The
structure contains:

=over

=item *

SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema.
Either C<SchemaArn> or C<SchemaName> and C<RegistryName> has to be
provided.

=item *

SchemaId$SchemaName: The name of the schema. Either C<SchemaArn> or
C<SchemaName> and C<RegistryName> has to be provided.

=back




=head2 SchemaVersionId => Str

The C<SchemaVersionId> of the schema version. This field is required
for fetching by schema ID. Either this or the C<SchemaId> wrapper has
to be provided.



=head2 SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

The version number of the schema.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaVersion in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

