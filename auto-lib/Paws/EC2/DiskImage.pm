package Paws::EC2::DiskImage;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Image => (is => 'ro', isa => 'Paws::EC2::DiskImageDetail');
  has Volume => (is => 'ro', isa => 'Paws::EC2::VolumeDetail');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DiskImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DiskImage object:

  $service_obj->Method(Att1 => { Description => $value, ..., Volume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DiskImage object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the disk image.


=head2 Image => L<Paws::EC2::DiskImageDetail>

  Information about the disk image.


=head2 Volume => L<Paws::EC2::VolumeDetail>

  Information about the volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
