# Generated from default/object.tt
package Paws::DeviceFarm::Device;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Bool/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_CPU DeviceFarm_DeviceInstance DeviceFarm_Resolution/;
  has Arn => (is => 'ro', isa => Str);
  has Availability => (is => 'ro', isa => Str);
  has Carrier => (is => 'ro', isa => Str);
  has Cpu => (is => 'ro', isa => DeviceFarm_CPU);
  has FleetName => (is => 'ro', isa => Str);
  has FleetType => (is => 'ro', isa => Str);
  has FormFactor => (is => 'ro', isa => Str);
  has HeapSize => (is => 'ro', isa => Int);
  has Image => (is => 'ro', isa => Str);
  has Instances => (is => 'ro', isa => ArrayRef[DeviceFarm_DeviceInstance]);
  has Manufacturer => (is => 'ro', isa => Str);
  has Memory => (is => 'ro', isa => Int);
  has Model => (is => 'ro', isa => Str);
  has ModelId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Os => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has Radio => (is => 'ro', isa => Str);
  has RemoteAccessEnabled => (is => 'ro', isa => Bool);
  has RemoteDebugEnabled => (is => 'ro', isa => Bool);
  has Resolution => (is => 'ro', isa => DeviceFarm_Resolution);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Manufacturer' => {
                                   'type' => 'Str'
                                 },
               'RemoteDebugEnabled' => {
                                         'type' => 'Bool'
                                       },
               'FormFactor' => {
                                 'type' => 'Str'
                               },
               'Radio' => {
                            'type' => 'Str'
                          },
               'Carrier' => {
                              'type' => 'Str'
                            },
               'ModelId' => {
                              'type' => 'Str'
                            },
               'Instances' => {
                                'class' => 'Paws::DeviceFarm::DeviceInstance',
                                'type' => 'ArrayRef[DeviceFarm_DeviceInstance]'
                              },
               'Resolution' => {
                                 'type' => 'DeviceFarm_Resolution',
                                 'class' => 'Paws::DeviceFarm::Resolution'
                               },
               'FleetName' => {
                                'type' => 'Str'
                              },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Os' => {
                         'type' => 'Str'
                       },
               'Memory' => {
                             'type' => 'Int'
                           },
               'FleetType' => {
                                'type' => 'Str'
                              },
               'RemoteAccessEnabled' => {
                                          'type' => 'Bool'
                                        },
               'Availability' => {
                                   'type' => 'Str'
                                 },
               'HeapSize' => {
                               'type' => 'Int'
                             },
               'Model' => {
                            'type' => 'Str'
                          },
               'Image' => {
                            'type' => 'Str'
                          },
               'Platform' => {
                               'type' => 'Str'
                             },
               'Cpu' => {
                          'type' => 'DeviceFarm_CPU',
                          'class' => 'Paws::DeviceFarm::CPU'
                        },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Os' => 'os',
                       'FleetType' => 'fleetType',
                       'Memory' => 'memory',
                       'RemoteAccessEnabled' => 'remoteAccessEnabled',
                       'Availability' => 'availability',
                       'HeapSize' => 'heapSize',
                       'Image' => 'image',
                       'Model' => 'model',
                       'Cpu' => 'cpu',
                       'Platform' => 'platform',
                       'Name' => 'name',
                       'RemoteDebugEnabled' => 'remoteDebugEnabled',
                       'Manufacturer' => 'manufacturer',
                       'FormFactor' => 'formFactor',
                       'Radio' => 'radio',
                       'Carrier' => 'carrier',
                       'ModelId' => 'modelId',
                       'Instances' => 'instances',
                       'Resolution' => 'resolution',
                       'FleetName' => 'fleetName',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Device object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Resolution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a device type that an app is tested against.

=head1 ATTRIBUTES


=head2 Arn => Str

  The device's ARN.


=head2 Availability => Str

  Reflects how likely a device will be available for a test run. It is
currently available in the ListDevices and GetDevice API methods.


=head2 Carrier => Str

  The device's carrier.


=head2 Cpu => DeviceFarm_CPU

  Information about the device's CPU.


=head2 FleetName => Str

  The name of the fleet to which this device belongs.


=head2 FleetType => Str

  The type of fleet to which this device belongs. Possible values for
fleet type are PRIVATE and PUBLIC.


=head2 FormFactor => Str

  The device's form factor.

Allowed values include:

=over

=item *

PHONE: The phone form factor.

=item *

TABLET: The tablet form factor.

=back



=head2 HeapSize => Int

  The device's heap size, expressed in bytes.


=head2 Image => Str

  The device's image name.


=head2 Instances => ArrayRef[DeviceFarm_DeviceInstance]

  The instances belonging to this device.


=head2 Manufacturer => Str

  The device's manufacturer name.


=head2 Memory => Int

  The device's total memory size, expressed in bytes.


=head2 Model => Str

  The device's model name.


=head2 ModelId => Str

  The device's model ID.


=head2 Name => Str

  The device's display name.


=head2 Os => Str

  The device's operating system type.


=head2 Platform => Str

  The device's platform.

Allowed values include:

=over

=item *

ANDROID: The Android platform.

=item *

IOS: The iOS platform.

=back



=head2 Radio => Str

  The device's radio.


=head2 RemoteAccessEnabled => Bool

  Specifies whether remote access has been enabled for the specified
device.


=head2 RemoteDebugEnabled => Bool

  This flag is set to C<true> if remote debugging is enabled for the
device.

I<Remote debugging is no longer supported
(https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html).>


=head2 Resolution => DeviceFarm_Resolution

  The resolution of the device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

