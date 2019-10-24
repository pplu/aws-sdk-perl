# Generated from default/object.tt
package Paws::DeviceFarm::DevicePoolCompatibilityResult;
  use Moo;
  use Types::Standard qw/Bool ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_IncompatibilityMessage DeviceFarm_Device/;
  has Compatible => (is => 'ro', isa => Bool);
  has Device => (is => 'ro', isa => DeviceFarm_Device);
  has IncompatibilityMessages => (is => 'ro', isa => ArrayRef[DeviceFarm_IncompatibilityMessage]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Device' => {
                             'class' => 'Paws::DeviceFarm::Device',
                             'type' => 'DeviceFarm_Device'
                           },
               'Compatible' => {
                                 'type' => 'Bool'
                               },
               'IncompatibilityMessages' => {
                                              'class' => 'Paws::DeviceFarm::IncompatibilityMessage',
                                              'type' => 'ArrayRef[DeviceFarm_IncompatibilityMessage]'
                                            }
             },
  'NameInRequest' => {
                       'Device' => 'device',
                       'Compatible' => 'compatible',
                       'IncompatibilityMessages' => 'incompatibilityMessages'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DevicePoolCompatibilityResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DevicePoolCompatibilityResult object:

  $service_obj->Method(Att1 => { Compatible => $value, ..., IncompatibilityMessages => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DevicePoolCompatibilityResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Compatible

=head1 DESCRIPTION

Represents a device pool compatibility result.

=head1 ATTRIBUTES


=head2 Compatible => Bool

  Whether the result was compatible with the device pool.


=head2 Device => DeviceFarm_Device

  The device (phone or tablet) that you wish to return information about.


=head2 IncompatibilityMessages => ArrayRef[DeviceFarm_IncompatibilityMessage]

  Information about the compatibility.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

