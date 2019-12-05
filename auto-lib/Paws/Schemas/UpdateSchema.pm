
package Paws::Schemas::UpdateSchema;
  use Moose;
  has ClientTokenId => (is => 'ro', isa => 'Str');
  has Content => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}/schemas/name/{schemaName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::UpdateSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::UpdateSchema - Arguments for method UpdateSchema on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSchema on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method UpdateSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSchema.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $UpdateSchemaResponse = $schemas->UpdateSchema(
      RegistryName  => 'My__string',
      SchemaName    => 'My__string',
      ClientTokenId => 'My__stringMin0Max36',        # OPTIONAL
      Content       => 'My__stringMin1Max100000',    # OPTIONAL
      Description   => 'My__stringMin0Max256',       # OPTIONAL
      Type          => 'OpenApi3',                   # OPTIONAL
    );

    # Results:
    my $Description        = $UpdateSchemaResponse->Description;
    my $LastModified       = $UpdateSchemaResponse->LastModified;
    my $SchemaArn          = $UpdateSchemaResponse->SchemaArn;
    my $SchemaName         = $UpdateSchemaResponse->SchemaName;
    my $SchemaVersion      = $UpdateSchemaResponse->SchemaVersion;
    my $Tags               = $UpdateSchemaResponse->Tags;
    my $Type               = $UpdateSchemaResponse->Type;
    my $VersionCreatedDate = $UpdateSchemaResponse->VersionCreatedDate;

    # Returns a L<Paws::Schemas::UpdateSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/UpdateSchema>

=head1 ATTRIBUTES


=head2 ClientTokenId => Str

The ID of the client token.



=head2 Content => Str

The source of the schema definition.



=head2 Description => Str

The description of the schema.



=head2 B<REQUIRED> RegistryName => Str





=head2 B<REQUIRED> SchemaName => Str





=head2 Type => Str

The schema type for the events schema.

Valid values are: C<"OpenApi3">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSchema in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

