# Generated from default/object.tt
package Paws::AlexaForBusiness::DeviceData;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_DeviceStatusInfo/;
  has DeviceArn => (is => 'ro', isa => Str);
  has DeviceName => (is => 'ro', isa => Str);
  has DeviceSerialNumber => (is => 'ro', isa => Str);
  has DeviceStatus => (is => 'ro', isa => Str);
  has DeviceStatusInfo => (is => 'ro', isa => AlexaForBusiness_DeviceStatusInfo);
  has DeviceType => (is => 'ro', isa => Str);
  has MacAddress => (is => 'ro', isa => Str);
  has NetworkProfileArn => (is => 'ro', isa => Str);
  has NetworkProfileName => (is => 'ro', isa => Str);
  has RoomArn => (is => 'ro', isa => Str);
  has RoomName => (is => 'ro', isa => Str);
  has SoftwareVersion => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeviceName' => {
                                 'type' => 'Str'
                               },
               'DeviceType' => {
                                 'type' => 'Str'
                               },
               'DeviceStatus' => {
                                   'type' => 'Str'
                                 },
               'NetworkProfileArn' => {
                                        'type' => 'Str'
                                      },
               'RoomArn' => {
                              'type' => 'Str'
                            },
               'NetworkProfileName' => {
                                         'type' => 'Str'
                                       },
               'DeviceStatusInfo' => {
                                       'type' => 'AlexaForBusiness_DeviceStatusInfo',
                                       'class' => 'Paws::AlexaForBusiness::DeviceStatusInfo'
                                     },
               'MacAddress' => {
                                 'type' => 'Str'
                               },
               'DeviceSerialNumber' => {
                                         'type' => 'Str'
                                       },
               'SoftwareVersion' => {
                                      'type' => 'Str'
                                    },
               'RoomName' => {
                               'type' => 'Str'
                             },
               'DeviceArn' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::DeviceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::DeviceData object:

  $service_obj->Method(Att1 => { DeviceArn => $value, ..., SoftwareVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::DeviceData object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceArn

=head1 DESCRIPTION

Device attributes.

=head1 ATTRIBUTES


=head2 DeviceArn => Str

  The ARN of a device.


=head2 DeviceName => Str

  The name of a device.


=head2 DeviceSerialNumber => Str

  The serial number of a device.


=head2 DeviceStatus => Str

  The status of a device.


=head2 DeviceStatusInfo => AlexaForBusiness_DeviceStatusInfo

  Detailed information about a device's status.


=head2 DeviceType => Str

  The type of a device.


=head2 MacAddress => Str

  The MAC address of a device.


=head2 NetworkProfileArn => Str

  The ARN of the network profile associated with a device.


=head2 NetworkProfileName => Str

  The name of the network profile associated with a device.


=head2 RoomArn => Str

  The room ARN associated with a device.


=head2 RoomName => Str

  The name of the room associated with a device.


=head2 SoftwareVersion => Str

  The software version of a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

