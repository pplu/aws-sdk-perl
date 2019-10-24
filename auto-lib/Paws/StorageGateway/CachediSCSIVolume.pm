# Generated from default/object.tt
package Paws::StorageGateway::CachediSCSIVolume;
  use Moo;
  use Types::Standard qw/Str Num Int/;
  use Paws::StorageGateway::Types qw/StorageGateway_VolumeiSCSIAttributes/;
  has CreatedDate => (is => 'ro', isa => Str);
  has KMSKey => (is => 'ro', isa => Str);
  has SourceSnapshotId => (is => 'ro', isa => Str);
  has TargetName => (is => 'ro', isa => Str);
  has VolumeARN => (is => 'ro', isa => Str);
  has VolumeAttachmentStatus => (is => 'ro', isa => Str);
  has VolumeId => (is => 'ro', isa => Str);
  has VolumeiSCSIAttributes => (is => 'ro', isa => StorageGateway_VolumeiSCSIAttributes);
  has VolumeProgress => (is => 'ro', isa => Num);
  has VolumeSizeInBytes => (is => 'ro', isa => Int);
  has VolumeStatus => (is => 'ro', isa => Str);
  has VolumeType => (is => 'ro', isa => Str);
  has VolumeUsedInBytes => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VolumeSizeInBytes' => {
                                        'type' => 'Int'
                                      },
               'VolumeiSCSIAttributes' => {
                                            'class' => 'Paws::StorageGateway::VolumeiSCSIAttributes',
                                            'type' => 'StorageGateway_VolumeiSCSIAttributes'
                                          },
               'TargetName' => {
                                 'type' => 'Str'
                               },
               'VolumeId' => {
                               'type' => 'Str'
                             },
               'VolumeUsedInBytes' => {
                                        'type' => 'Int'
                                      },
               'VolumeARN' => {
                                'type' => 'Str'
                              },
               'CreatedDate' => {
                                  'type' => 'Str'
                                },
               'VolumeStatus' => {
                                   'type' => 'Str'
                                 },
               'SourceSnapshotId' => {
                                       'type' => 'Str'
                                     },
               'VolumeAttachmentStatus' => {
                                             'type' => 'Str'
                                           },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'VolumeProgress' => {
                                     'type' => 'Num'
                                   },
               'VolumeType' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CachediSCSIVolume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::CachediSCSIVolume object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., VolumeUsedInBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::CachediSCSIVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Describes an iSCSI cached volume.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date the volume was created. Volumes created prior to March 28,
2017 donE<rsquo>t have this time stamp.


=head2 KMSKey => Str

  


=head2 SourceSnapshotId => Str

  If the cached volume was created from a snapshot, this field contains
the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not
included.


=head2 TargetName => Str

  The name of the iSCSI target used by an initiator to connect to a
volume and used as a suffix for the target ARN. For example, specifying
C<TargetName> as I<myvolume> results in the target ARN of
C<arn:aws:storagegateway:us-east-2:111122223333:gateway/sgw-12A3456B/target/iqn.1997-05.com.amazon:myvolume>.
The target name must be unique across all volumes on a gateway.

If you don't specify a value, Storage Gateway uses the value that was
previously used for this volume as the new target name.


=head2 VolumeARN => Str

  The Amazon Resource Name (ARN) of the storage volume.


=head2 VolumeAttachmentStatus => Str

  A value that indicates whether a storage volume is attached to or
detached from a gateway. For more information, see Moving Your Volumes
to a Different Gateway
(https://docs.aws.amazon.com/storagegateway/latest/userguide/managing-volumes.html#attach-detach-volume).


=head2 VolumeId => Str

  The unique identifier of the volume, e.g. vol-AE4B946D.


=head2 VolumeiSCSIAttributes => StorageGateway_VolumeiSCSIAttributes

  An VolumeiSCSIAttributes object that represents a collection of iSCSI
attributes for one stored volume.


=head2 VolumeProgress => Num

  Represents the percentage complete if the volume is restoring or
bootstrapping that represents the percent of data transferred. This
field does not appear in the response if the cached volume is not
restoring or bootstrapping.


=head2 VolumeSizeInBytes => Int

  The size, in bytes, of the volume capacity.


=head2 VolumeStatus => Str

  One of the VolumeStatus values that indicates the state of the storage
volume.


=head2 VolumeType => Str

  One of the VolumeType enumeration values that describes the type of the
volume.


=head2 VolumeUsedInBytes => Int

  The size of the data stored on the volume in bytes. This value is
calculated based on the number of blocks that are touched, instead of
the actual amount of data written. This value can be useful for
sequential write patterns but less accurate for random write patterns.
C<VolumeUsedInBytes> is different from the compressed size of the
volume, which is the value that is used to calculate your bill.

This value is not available for volumes created prior to May 13, 2015,
until you store data on the volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

