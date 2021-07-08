
package Paws::Glue::UpdateSchema;
  use Moose;
  has Compatibility => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);
  has SchemaVersionNumber => (is => 'ro', isa => 'Paws::Glue::SchemaVersionNumber');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateSchemaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateSchema - Arguments for method UpdateSchema on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSchema on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSchema.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateSchemaResponse = $glue->UpdateSchema(
      SchemaId => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn  => 'MyGlueResourceArn', # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },
      Compatibility       => 'NONE',                   # OPTIONAL
      Description         => 'MyDescriptionString',    # OPTIONAL
      SchemaVersionNumber => {
        LatestVersion => 1,    # OPTIONAL
        VersionNumber => 1,    # min: 1, max: 100000; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $RegistryName = $UpdateSchemaResponse->RegistryName;
    my $SchemaArn    = $UpdateSchemaResponse->SchemaArn;
    my $SchemaName   = $UpdateSchemaResponse->SchemaName;

    # Returns a L<Paws::Glue::UpdateSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateSchema>

=head1 ATTRIBUTES


=head2 Compatibility => Str

The new compatibility setting for the schema.

Valid values are: C<"NONE">, C<"DISABLED">, C<"BACKWARD">, C<"BACKWARD_ALL">, C<"FORWARD">, C<"FORWARD_ALL">, C<"FULL">, C<"FULL_ALL">

=head2 Description => Str

The new description for the schema.



=head2 B<REQUIRED> SchemaId => L<Paws::Glue::SchemaId>

This is a wrapper structure to contain schema identity fields. The
structure contains:

=over

=item *

SchemaId$SchemaArn: The Amazon Resource Name (ARN) of the schema. One
of C<SchemaArn> or C<SchemaName> has to be provided.

=item *

SchemaId$SchemaName: The name of the schema. One of C<SchemaArn> or
C<SchemaName> has to be provided.

=back




=head2 SchemaVersionNumber => L<Paws::Glue::SchemaVersionNumber>

Version number required for check pointing. One of C<VersionNumber> or
C<Compatibility> has to be provided.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSchema in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

