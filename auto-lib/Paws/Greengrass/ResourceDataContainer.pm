package Paws::Greengrass::ResourceDataContainer;
  use Moose;
  has LocalDeviceResourceData => (is => 'ro', isa => 'Paws::Greengrass::LocalDeviceResourceData');
  has LocalVolumeResourceData => (is => 'ro', isa => 'Paws::Greengrass::LocalVolumeResourceData');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResourceDataContainer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ResourceDataContainer object:

  $service_obj->Method(Att1 => { LocalDeviceResourceData => $value, ..., LocalVolumeResourceData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ResourceDataContainer object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalDeviceResourceData

=head1 DESCRIPTION

A container of data for all resource types.

=head1 ATTRIBUTES


=head2 LocalDeviceResourceData => L<Paws::Greengrass::LocalDeviceResourceData>

  Attributes that define the Local Device Resource.


=head2 LocalVolumeResourceData => L<Paws::Greengrass::LocalVolumeResourceData>

  Attributes that define the Local Volume Resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

