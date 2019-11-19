
package Paws::Greengrass::CreateDeviceDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Device/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has DeviceDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Devices => (is => 'ro', isa => ArrayRef[Greengrass_Device], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeviceDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/devices/{DeviceDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateDeviceDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'ParamInURI' => {
                    'DeviceDefinitionId' => 'DeviceDefinitionId'
                  },
  'types' => {
               'Devices' => {
                              'class' => 'Paws::Greengrass::Device',
                              'type' => 'ArrayRef[Greengrass_Device]'
                            },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    },
               'DeviceDefinitionId' => {
                                         'type' => 'Str'
                                       }
             },
  'IsRequired' => {
                    'DeviceDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

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
          ThingArn       => 'My__string',
          SyncShadow     => 1,               # OPTIONAL
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



=head2 Devices => ArrayRef[Greengrass_Device]

A list of devices in the definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeviceDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

