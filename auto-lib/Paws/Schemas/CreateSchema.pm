
package Paws::Schemas::CreateSchema;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}/schemas/name/{schemaName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::CreateSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::CreateSchema - Arguments for method CreateSchema on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSchema on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method CreateSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSchema.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $CreateSchemaResponse = $schemas->CreateSchema(
      Content      => 'My__stringMin1Max100000',
      RegistryName => 'My__string',
      SchemaName   => 'My__string',
      Type         => 'OpenApi3',
      Description  => 'My__stringMin0Max256',               # OPTIONAL
      Tags         => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Description        = $CreateSchemaResponse->Description;
    my $LastModified       = $CreateSchemaResponse->LastModified;
    my $SchemaArn          = $CreateSchemaResponse->SchemaArn;
    my $SchemaName         = $CreateSchemaResponse->SchemaName;
    my $SchemaVersion      = $CreateSchemaResponse->SchemaVersion;
    my $Tags               = $CreateSchemaResponse->Tags;
    my $Type               = $CreateSchemaResponse->Type;
    my $VersionCreatedDate = $CreateSchemaResponse->VersionCreatedDate;

    # Returns a L<Paws::Schemas::CreateSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/CreateSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

The source of the schema definition.



=head2 Description => Str

A description of the schema.



=head2 B<REQUIRED> RegistryName => Str

The name of the registry.



=head2 B<REQUIRED> SchemaName => Str

The name of the schema.



=head2 Tags => L<Paws::Schemas::Tags>

Tags associated with the schema.



=head2 B<REQUIRED> Type => Str

The type of schema.

Valid values are: C<"OpenApi3">, C<"JSONSchemaDraft4">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSchema in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

