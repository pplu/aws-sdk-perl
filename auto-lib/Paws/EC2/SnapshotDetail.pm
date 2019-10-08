package Paws::EC2::SnapshotDetail;
  use Moo;  use Types::Standard qw/Str Num/;
  use Paws::EC2::Types qw/EC2_UserBucketDetails/;
  has Description => (is => 'ro', isa => Str);
  has DeviceName => (is => 'ro', isa => Str);
  has DiskImageSize => (is => 'ro', isa => Num);
  has Format => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has SnapshotId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);
  has UserBucket => (is => 'ro', isa => EC2_UserBucketDetails);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'DiskImageSize' => {
                                    'type' => 'Num'
                                  },
               'Status' => {
                             'type' => 'Str'
                           },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'Format' => {
                             'type' => 'Str'
                           },
               'DeviceName' => {
                                 'type' => 'Str'
                               },
               'UserBucket' => {
                                 'class' => 'Paws::EC2::UserBucketDetails',
                                 'type' => 'EC2_UserBucketDetails'
                               },
               'Url' => {
                          'type' => 'Str'
                        },
               'Progress' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'DiskImageSize' => 'diskImageSize',
                       'Status' => 'status',
                       'SnapshotId' => 'snapshotId',
                       'Format' => 'format',
                       'DeviceName' => 'deviceName',
                       'UserBucket' => 'userBucket',
                       'Url' => 'url',
                       'Progress' => 'progress',
                       'Description' => 'description',
                       'StatusMessage' => 'statusMessage'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SnapshotDetail object:

  $service_obj->Method(Att1 => { Description => $value, ..., UserBucket => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SnapshotDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  A description for the snapshot.


=head2 DeviceName => Str

  The block device mapping for the snapshot.


=head2 DiskImageSize => Num

  The size of the disk in the snapshot, in GiB.


=head2 Format => Str

  The format of the disk image from which the snapshot is created.


=head2 Progress => Str

  The percentage of progress for the task.


=head2 SnapshotId => Str

  The snapshot ID of the disk being imported.


=head2 Status => Str

  A brief status of the snapshot creation.


=head2 StatusMessage => Str

  A detailed status message for the snapshot creation.


=head2 Url => Str

  The URL used to access the disk image.


=head2 UserBucket => EC2_UserBucketDetails

  The S3 bucket for the disk image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
