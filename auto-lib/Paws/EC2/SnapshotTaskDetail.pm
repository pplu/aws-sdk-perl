package Paws::EC2::SnapshotTaskDetail;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has DiskImageSize => (is => 'ro', isa => 'Num', xmlname => 'diskImageSize', traits => ['Unwrapped']);
  has Format => (is => 'ro', isa => 'Str', xmlname => 'format', traits => ['Unwrapped']);
  has Progress => (is => 'ro', isa => 'Str', xmlname => 'progress', traits => ['Unwrapped']);
  has SnapshotId => (is => 'ro', isa => 'Str', xmlname => 'snapshotId', traits => ['Unwrapped']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
  has Url => (is => 'ro', isa => 'Str', xmlname => 'url', traits => ['Unwrapped']);
  has UserBucket => (is => 'ro', isa => 'Paws::EC2::UserBucketDetails', xmlname => 'userBucket', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotTaskDetail

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 Description => Str

  The description of the snapshot.

=head2 DiskImageSize => Num

  The size of the disk in the snapshot, in GiB.

=head2 Format => Str

  The format of the disk image from which the snapshot is created.

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

=head2 UserBucket => Paws::EC2::UserBucketDetails

  The S3 bucket for the disk image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
