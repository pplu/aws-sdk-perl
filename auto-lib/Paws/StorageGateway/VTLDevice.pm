# Generated from default/object.tt
package Paws::StorageGateway::VTLDevice;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::StorageGateway::Types qw/StorageGateway_DeviceiSCSIAttributes/;
  has DeviceiSCSIAttributes => (is => 'ro', isa => StorageGateway_DeviceiSCSIAttributes);
  has VTLDeviceARN => (is => 'ro', isa => Str);
  has VTLDeviceProductIdentifier => (is => 'ro', isa => Str);
  has VTLDeviceType => (is => 'ro', isa => Str);
  has VTLDeviceVendor => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VTLDeviceType' => {
                                    'type' => 'Str'
                                  },
               'VTLDeviceVendor' => {
                                      'type' => 'Str'
                                    },
               'VTLDeviceProductIdentifier' => {
                                                 'type' => 'Str'
                                               },
               'VTLDeviceARN' => {
                                   'type' => 'Str'
                                 },
               'DeviceiSCSIAttributes' => {
                                            'class' => 'Paws::StorageGateway::DeviceiSCSIAttributes',
                                            'type' => 'StorageGateway_DeviceiSCSIAttributes'
                                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::VTLDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::VTLDevice object:

  $service_obj->Method(Att1 => { DeviceiSCSIAttributes => $value, ..., VTLDeviceVendor => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::VTLDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceiSCSIAttributes

=head1 DESCRIPTION

Represents a device object associated with a tape gateway.

=head1 ATTRIBUTES


=head2 DeviceiSCSIAttributes => StorageGateway_DeviceiSCSIAttributes

  A list of iSCSI information about a VTL device.


=head2 VTLDeviceARN => Str

  Specifies the unique Amazon Resource Name (ARN) of the device (tape
drive or media changer).


=head2 VTLDeviceProductIdentifier => Str

  Specifies the model number of device that the VTL device emulates.


=head2 VTLDeviceType => Str

  Specifies the type of device that the VTL device emulates.


=head2 VTLDeviceVendor => Str

  Specifies the vendor of the device that the VTL device object emulates.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

