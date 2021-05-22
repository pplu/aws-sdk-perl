
package Paws::Schemas::DescribeSchema;
  use Moose;
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has SchemaName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'schemaName', required => 1);
  has SchemaVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'schemaVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}/schemas/name/{schemaName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::DescribeSchemaResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::DescribeSchema - Arguments for method DescribeSchema on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSchema on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method DescribeSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSchema.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $DescribeSchemaResponse = $schemas->DescribeSchema(
      RegistryName  => 'My__string',
      SchemaName    => 'My__string',
      SchemaVersion => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Content            = $DescribeSchemaResponse->Content;
    my $Description        = $DescribeSchemaResponse->Description;
    my $LastModified       = $DescribeSchemaResponse->LastModified;
    my $SchemaArn          = $DescribeSchemaResponse->SchemaArn;
    my $SchemaName         = $DescribeSchemaResponse->SchemaName;
    my $SchemaVersion      = $DescribeSchemaResponse->SchemaVersion;
    my $Tags               = $DescribeSchemaResponse->Tags;
    my $Type               = $DescribeSchemaResponse->Type;
    my $VersionCreatedDate = $DescribeSchemaResponse->VersionCreatedDate;

    # Returns a L<Paws::Schemas::DescribeSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/DescribeSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistryName => Str

The name of the registry.



=head2 B<REQUIRED> SchemaName => Str

The name of the schema.



=head2 SchemaVersion => Str

Specifying this limits the results to only this schema version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSchema in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

