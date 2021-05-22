
package Paws::Schemas::ListSchemas;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has SchemaNamePrefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'schemaNamePrefix');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemas');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}/schemas');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::ListSchemasResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListSchemas - Arguments for method ListSchemas on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemas on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method ListSchemas.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemas.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $ListSchemasResponse = $schemas->ListSchemas(
      RegistryName     => 'My__string',
      Limit            => 1,               # OPTIONAL
      NextToken        => 'My__string',    # OPTIONAL
      SchemaNamePrefix => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchemasResponse->NextToken;
    my $Schemas   = $ListSchemasResponse->Schemas;

    # Returns a L<Paws::Schemas::ListSchemasResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/ListSchemas>

=head1 ATTRIBUTES


=head2 Limit => Int





=head2 NextToken => Str

The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.



=head2 B<REQUIRED> RegistryName => Str

The name of the registry.



=head2 SchemaNamePrefix => Str

Specifying this limits the results to only those schema names that
start with the specified prefix.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemas in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

