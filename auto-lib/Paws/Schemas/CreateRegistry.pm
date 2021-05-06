
package Paws::Schemas::CreateRegistry;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Schemas::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRegistry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::CreateRegistryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::CreateRegistry - Arguments for method CreateRegistry on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRegistry on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method CreateRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRegistry.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $CreateRegistryResponse = $schemas->CreateRegistry(
      RegistryName => 'My__string',
      Description  => 'My__stringMin0Max256',               # OPTIONAL
      Tags         => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Description  = $CreateRegistryResponse->Description;
    my $RegistryArn  = $CreateRegistryResponse->RegistryArn;
    my $RegistryName = $CreateRegistryResponse->RegistryName;
    my $Tags         = $CreateRegistryResponse->Tags;

    # Returns a L<Paws::Schemas::CreateRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/CreateRegistry>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the registry to be created.



=head2 B<REQUIRED> RegistryName => Str





=head2 Tags => L<Paws::Schemas::Tags>

Tags to associate with the registry.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRegistry in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

