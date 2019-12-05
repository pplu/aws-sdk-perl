package Paws::ImageBuilder::InstanceBlockDeviceMapping;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);
  has Ebs => (is => 'ro', isa => 'Paws::ImageBuilder::EbsInstanceBlockDeviceSpecification', request_name => 'ebs', traits => ['NameInRequest']);
  has NoDevice => (is => 'ro', isa => 'Str', request_name => 'noDevice', traits => ['NameInRequest']);
  has VirtualName => (is => 'ro', isa => 'Str', request_name => 'virtualName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::InstanceBlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::InstanceBlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., VirtualName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::InstanceBlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

Defines block device mappings for the instance used to configure your
image.

=head1 ATTRIBUTES


=head2 DeviceName => Str

  The device to which these mappings apply.


=head2 Ebs => L<Paws::ImageBuilder::EbsInstanceBlockDeviceSpecification>

  Use to manage EBS specific configuration for this mapping.


=head2 NoDevice => Str

  Use to remove a mapping from the parent image.


=head2 VirtualName => Str

  Use to manage instance ephemeral devices.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

