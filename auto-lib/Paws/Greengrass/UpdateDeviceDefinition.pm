
package Paws::Greengrass::UpdateDeviceDefinition;
  use Moose;
  has DeviceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeviceDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateDeviceDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateDeviceDefinition - Arguments for method UpdateDeviceDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeviceDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method UpdateDeviceDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeviceDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $UpdateDeviceDefinitionResponse = $greengrass->UpdateDeviceDefinition(
      DeviceDefinitionId => 'My__string',
      Name               => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/UpdateDeviceDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceDefinitionId => Str

The ID of the device definition.



=head2 Name => Str

The name of the definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeviceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

