
package Paws::Greengrass::CreateDeviceDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has DeviceDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DeviceDefinitionId', required => 1);
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Device]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeviceDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateDeviceDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateDeviceDefinitionVersion - Arguments for method CreateDeviceDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeviceDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateDeviceDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeviceDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateDeviceDefinitionVersionResponse =
      $greengrass->CreateDeviceDefinitionVersion(
      DeviceDefinitionId => 'My__string',
      AmznClientToken    => 'My__string',    # OPTIONAL
      Devices            => [
        {
          CertificateArn => 'My__string',
          Id             => 'My__string',
          SyncShadow     => 1,               # OPTIONAL
          ThingArn       => 'My__string',
        },
        ...
      ],                                     # OPTIONAL
      );

    # Results:
    my $Arn = $CreateDeviceDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateDeviceDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateDeviceDefinitionVersionResponse->Id;
    my $Version = $CreateDeviceDefinitionVersionResponse->Version;

  # Returns a L<Paws::Greengrass::CreateDeviceDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateDeviceDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> DeviceDefinitionId => Str

The ID of the device definition.



=head2 Devices => ArrayRef[L<Paws::Greengrass::Device>]

A list of devices in the definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeviceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

