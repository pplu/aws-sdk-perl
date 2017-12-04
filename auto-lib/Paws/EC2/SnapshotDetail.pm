package Paws::EC2::SnapshotDetail;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);
  has DiskImageSize => (is => 'ro', isa => 'Num', request_name => 'diskImageSize', traits => ['NameInRequest']);
  has Format => (is => 'ro', isa => 'Str', request_name => 'format', traits => ['NameInRequest']);
  has Progress => (is => 'ro', isa => 'Str', request_name => 'progress', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
  has UserBucket => (is => 'ro', isa => 'Paws::EC2::UserBucketDetails', request_name => 'userBucket', traits => ['NameInRequest']);
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


=head2 UserBucket => L<Paws::EC2::UserBucketDetails>

  The S3 bucket for the disk image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
