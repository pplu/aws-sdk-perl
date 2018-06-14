
package Paws::Greengrass::GetDeviceDefinitionVersion;
  use Moose;
  has DeviceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionId', required => 1);
  has DeviceDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDeviceDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}/versions/{DeviceDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetDeviceDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetDeviceDefinitionVersion - Arguments for method GetDeviceDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeviceDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetDeviceDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeviceDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetDeviceDefinitionVersionResponse =
      $greengrass->GetDeviceDefinitionVersion(
      DeviceDefinitionId        => 'My__string',
      DeviceDefinitionVersionId => 'My__string',

      );

    # Results:
    my $CreationTimestamp =
      $GetDeviceDefinitionVersionResponse->CreationTimestamp;
    my $Version    = $GetDeviceDefinitionVersionResponse->Version;
    my $Definition = $GetDeviceDefinitionVersionResponse->Definition;
    my $Id         = $GetDeviceDefinitionVersionResponse->Id;
    my $Arn        = $GetDeviceDefinitionVersionResponse->Arn;

    # Returns a L<Paws::Greengrass::GetDeviceDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceDefinitionId => Str

The ID of the device definition.



=head2 B<REQUIRED> DeviceDefinitionVersionId => Str

The ID of the device definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeviceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

