
package Paws::Glue::RegisterSchemaVersion;
  use Moose;
  has SchemaDefinition => (is => 'ro', isa => 'Str', required => 1);
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterSchemaVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::RegisterSchemaVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::RegisterSchemaVersion - Arguments for method RegisterSchemaVersion on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterSchemaVersion on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method RegisterSchemaVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterSchemaVersion.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $RegisterSchemaVersionResponse = $glue->RegisterSchemaVersion(
      SchemaDefinition => 'MySchemaDefinitionString',
      SchemaId         => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },

    );

    # Results:
    my $SchemaVersionId = $RegisterSchemaVersionResponse->SchemaVersionId;
    my $Status          = $RegisterSchemaVersionResponse->Status;
    my $VersionNumber   = $RegisterSchemaVersionResponse->VersionNumber;

    # Returns a L<Paws::Glue::RegisterSchemaVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/RegisterSchemaVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaDefinition => Str

The schema definition using the C<DataFormat> setting for the
C<SchemaName>.



=head2 B<REQUIRED> SchemaId => L<Paws::Glue::SchemaId>

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterSchemaVersion in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

