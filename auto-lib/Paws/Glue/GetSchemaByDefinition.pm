
package Paws::Glue::GetSchemaByDefinition;
  use Moose;
  has SchemaDefinition => (is => 'ro', isa => 'Str', required => 1);
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaByDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetSchemaByDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSchemaByDefinition - Arguments for method GetSchemaByDefinition on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaByDefinition on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetSchemaByDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaByDefinition.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetSchemaByDefinitionResponse = $glue->GetSchemaByDefinition(
      SchemaDefinition => 'MySchemaDefinitionString',
      SchemaId         => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn => 'MyGlueResourceArn',  # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },

    );

    # Results:
    my $CreatedTime     = $GetSchemaByDefinitionResponse->CreatedTime;
    my $DataFormat      = $GetSchemaByDefinitionResponse->DataFormat;
    my $SchemaArn       = $GetSchemaByDefinitionResponse->SchemaArn;
    my $SchemaVersionId = $GetSchemaByDefinitionResponse->SchemaVersionId;
    my $Status          = $GetSchemaByDefinitionResponse->Status;

    # Returns a L<Paws::Glue::GetSchemaByDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetSchemaByDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaDefinition => Str

The definition of the schema for which schema details are required.



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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaByDefinition in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

