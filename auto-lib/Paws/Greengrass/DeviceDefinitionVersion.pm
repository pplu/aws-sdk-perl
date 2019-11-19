# Generated from default/object.tt
package Paws::Greengrass::DeviceDefinitionVersion;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Device/;
  has Devices => (is => 'ro', isa => ArrayRef[Greengrass_Device]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Devices' => {
                              'type' => 'ArrayRef[Greengrass_Device]',
                              'class' => 'Paws::Greengrass::Device'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::DeviceDefinitionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::DeviceDefinitionVersion object:

  $service_obj->Method(Att1 => { Devices => $value, ..., Devices => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::DeviceDefinitionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->Devices

=head1 DESCRIPTION

Information about a device definition version.

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[Greengrass_Device]

  A list of devices in the definition version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

