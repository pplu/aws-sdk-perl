# Generated from default/object.tt
package Paws::IoT1ClickDevices::Device;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices_Attributes/;
  has Attributes => (is => 'ro', isa => IoT1ClickDevices_Attributes);
  has DeviceId => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Attributes' => {
                                 'class' => 'Paws::IoT1ClickDevices::Attributes',
                                 'type' => 'IoT1ClickDevices_Attributes'
                               },
               'DeviceId' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Attributes' => 'attributes',
                       'DeviceId' => 'deviceId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::Device

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT1ClickDevices::Device object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT1ClickDevices::Device object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Attributes => IoT1ClickDevices_Attributes

  The user specified attributes associated with the device for an event.


=head2 DeviceId => Str

  The unique identifier of the device.


=head2 Type => Str

  The device type, such as "button".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT1ClickDevices>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

