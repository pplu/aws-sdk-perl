package Paws::EC2::ImportInstanceVolumeDetailItem;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', xmlname => 'availabilityZone', traits => ['Unwrapped'], required => 1);
  has BytesConverted => (is => 'ro', isa => 'Int', xmlname => 'bytesConverted', traits => ['Unwrapped'], required => 1);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has Image => (is => 'ro', isa => 'Paws::EC2::DiskImageDescription', xmlname => 'image', traits => ['Unwrapped'], required => 1);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped'], required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
  has Volume => (is => 'ro', isa => 'Paws::EC2::DiskImageVolumeDescription', xmlname => 'volume', traits => ['Unwrapped'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceVolumeDetailItem

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportInstanceVolumeDetailItem object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Volume => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportInstanceVolumeDetailItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 ATTRIBUTES

=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone where the resulting instance will reside.

=head2 B<REQUIRED> BytesConverted => Int

  The number of bytes converted so far.

=head2 Description => Str

  A description of the task.

=head2 B<REQUIRED> Image => L<Paws::EC2::DiskImageDescription>

  The image.

=head2 B<REQUIRED> Status => Str

  The status of the import of this particular disk image.

=head2 StatusMessage => Str

  The status information or errors related to the disk image.

=head2 B<REQUIRED> Volume => L<Paws::EC2::DiskImageVolumeDescription>

  The volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
