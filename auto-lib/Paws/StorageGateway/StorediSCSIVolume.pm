package Paws::StorageGateway::StorediSCSIVolume;
  use Moose;
  has PreservedExistingData => (is => 'ro', isa => 'Bool');
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeDiskId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Paws::StorageGateway::VolumeiSCSIAttributes');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StorediSCSIVolume

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::StorediSCSIVolume object:

  $service_obj->Method(Att1 => { PreservedExistingData => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::StorediSCSIVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->PreservedExistingData

=head1 ATTRIBUTES

=head2 PreservedExistingData => Bool

  

=head2 SourceSnapshotId => Str

  

=head2 VolumeARN => Str

  

=head2 VolumeDiskId => Str

  

=head2 VolumeId => Str

  

=head2 VolumeiSCSIAttributes => Paws::StorageGateway::VolumeiSCSIAttributes

  

=head2 VolumeProgress => Num

  

=head2 VolumeSizeInBytes => Int

  

=head2 VolumeStatus => Str

  

=head2 VolumeType => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

