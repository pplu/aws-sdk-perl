
package Paws::Glue::ListSchemaVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaId => (is => 'ro', isa => 'Paws::Glue::SchemaId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemaVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListSchemaVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListSchemaVersions - Arguments for method ListSchemaVersions on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemaVersions on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListSchemaVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemaVersions.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListSchemaVersionsResponse = $glue->ListSchemaVersions(
      SchemaId => {
        RegistryName =>
          'MySchemaRegistryNameString',    # min: 1, max: 255; OPTIONAL
        SchemaArn => 'MyGlueResourceArn',  # min: 1, max: 10240; OPTIONAL
        SchemaName => 'MySchemaRegistryNameString', # min: 1, max: 255; OPTIONAL
      },
      MaxResults => 1,                                # OPTIONAL
      NextToken  => 'MySchemaRegistryTokenString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchemaVersionsResponse->NextToken;
    my $Schemas   = $ListSchemaVersionsResponse->Schemas;

    # Returns a L<Paws::Glue::ListSchemaVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListSchemaVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of results required per page. If the value is not
supplied, this will be defaulted to 25 per page.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



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

This class forms part of L<Paws>, documenting arguments for method ListSchemaVersions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

