
package Paws::Schemas::UpdateRegistry;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has RegistryName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'registryName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRegistry');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registries/name/{registryName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Schemas::UpdateRegistryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::UpdateRegistry - Arguments for method UpdateRegistry on L<Paws::Schemas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRegistry on the
L<Schemas|Paws::Schemas> service. Use the attributes of this class
as arguments to method UpdateRegistry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRegistry.

=head1 SYNOPSIS

    my $schemas = Paws->service('Schemas');
    my $UpdateRegistryResponse = $schemas->UpdateRegistry(
      RegistryName => 'My__string',
      Description  => 'My__stringMin0Max256',    # OPTIONAL
    );

    # Results:
    my $Description  = $UpdateRegistryResponse->Description;
    my $RegistryArn  = $UpdateRegistryResponse->RegistryArn;
    my $RegistryName = $UpdateRegistryResponse->RegistryName;
    my $Tags         = $UpdateRegistryResponse->Tags;

    # Returns a L<Paws::Schemas::UpdateRegistryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/schemas/UpdateRegistry>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the registry to update.



=head2 B<REQUIRED> RegistryName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRegistry in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

