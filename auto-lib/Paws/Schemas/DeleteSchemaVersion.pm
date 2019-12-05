
package Paws::Schemas::DeleteSchemaVersion;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);
  has SchemaVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSchemaVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}/schemas/name/{schemaName}/version/{schemaVersion}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DeleteSchemaVersion - Arguments for method DeleteSchemaVersion on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSchemaVersion on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method DeleteSchemaVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSchemaVersion.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    $schemas->DeleteSchemaVersion(
      RegistryName  => 'My__string',
      SchemaName    => 'My__string',
      SchemaVersion => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/DeleteSchemaVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistryName => Str





=head2 B<REQUIRED> SchemaName => Str





=head2 B<REQUIRED> SchemaVersion => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSchemaVersion in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

