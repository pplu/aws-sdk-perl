package Paws::EC2::ImportVolumeTaskDetails;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped'], required => 1);
  has BytesConverted => (is => 'ro', isa => 'Int', xmlname => 'bytesConverted', traits => ['Unwrapped'], required => 1);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has Image => (is => 'ro', isa => 'Paws::EC2::DiskImageDescription', xmlname => 'image', traits => ['Unwrapped'], required => 1);
  has Volume => (is => 'ro', isa => 'Paws::EC2::DiskImageVolumeDescription', xmlname => 'volume', traits => ['Unwrapped'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportVolumeTaskDetails

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportVolumeTaskDetails object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Volume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportVolumeTaskDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 ATTRIBUTES

=head2 B<REQUIRED> AvailabilityZone => Str

  

The Availability Zone where the resulting volume will reside.










=head2 B<REQUIRED> BytesConverted => Int

  

The number of bytes converted so far.










=head2 Description => Str

  

The description you provided when starting the import volume task.










=head2 B<REQUIRED> Image => Paws::EC2::DiskImageDescription

  

The image.










=head2 B<REQUIRED> Volume => Paws::EC2::DiskImageVolumeDescription

  

The volume.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
