package Paws::EC2::SnapshotTaskDetail;
  use Moo;  use Types::Standard qw/Str Num Bool/;
  use Paws::EC2::Types qw/EC2_UserBucketDetails/;
  has Description => (is => 'ro', isa => Str);
  has DiskImageSize => (is => 'ro', isa => Num);
  has Encrypted => (is => 'ro', isa => Bool);
  has Format => (is => 'ro', isa => Str);
  has KmsKeyId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Str);
  has SnapshotId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);
  has UserBucket => (is => 'ro', isa => EC2_UserBucketDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Encrypted' => {
                                'type' => 'Bool'
                              },
               'Progress' => {
                               'type' => 'Str'
                             },
               'Format' => {
                             'type' => 'Str'
                           },
               'SnapshotId' => {
                                 'type' => 'Str'
                               },
               'Url' => {
                          'type' => 'Str'
                        },
               'DiskImageSize' => {
                                    'type' => 'Num'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'UserBucket' => {
                                 'type' => 'EC2_UserBucketDetails',
                                 'class' => 'Paws::EC2::UserBucketDetails'
                               },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Encrypted' => 'encrypted',
                       'Progress' => 'progress',
                       'Format' => 'format',
                       'SnapshotId' => 'snapshotId',
                       'Url' => 'url',
                       'DiskImageSize' => 'diskImageSize',
                       'Description' => 'description',
                       'KmsKeyId' => 'kmsKeyId',
                       'StatusMessage' => 'statusMessage',
                       'UserBucket' => 'userBucket',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotTaskDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SnapshotTaskDetail object:

  $service_obj->Method(Att1 => { Description => $value, ..., UserBucket => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SnapshotTaskDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the snapshot.


=head2 DiskImageSize => Num

  The size of the disk in the snapshot, in GiB.


=head2 Encrypted => Bool

  Indicates whether the snapshot is encrypted.


=head2 Format => Str

  The format of the disk image from which the snapshot is created.


=head2 KmsKeyId => Str

  The identifier for the AWS Key Management Service (AWS KMS) customer
master key (CMK) that was used to create the encrypted snapshot.


=head2 Progress => Str

  The percentage of completion for the import snapshot task.


=head2 SnapshotId => Str

  The snapshot ID of the disk being imported.


=head2 Status => Str

  A brief status for the import snapshot task.


=head2 StatusMessage => Str

  A detailed status message for the import snapshot task.


=head2 Url => Str

  The URL of the disk image from which the snapshot is created.


=head2 UserBucket => EC2_UserBucketDetails

  The S3 bucket for the disk image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
