package Paws::EC2::ImportInstanceVolumeDetailItem;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has BytesConverted => (is => 'ro', isa => 'Int', request_name => 'bytesConverted', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Paws::EC2::DiskImageDescription', request_name => 'image', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Volume => (is => 'ro', isa => 'Paws::EC2::DiskImageVolumeDescription', request_name => 'volume', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportInstanceVolumeDetailItem

=head1 USAGE

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

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone where the resulting instance will reside.


=head2 BytesConverted => Int

  The number of bytes converted so far.


=head2 Description => Str

  A description of the task.


=head2 Image => L<Paws::EC2::DiskImageDescription>

  The image.


=head2 Status => Str

  The status of the import of this particular disk image.


=head2 StatusMessage => Str

  The status information or errors related to the disk image.


=head2 Volume => L<Paws::EC2::DiskImageVolumeDescription>

  The volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
