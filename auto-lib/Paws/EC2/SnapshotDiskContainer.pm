package Paws::EC2::SnapshotDiskContainer;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has UserBucket => (is => 'ro', isa => 'Paws::EC2::UserBucket');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SnapshotDiskContainer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SnapshotDiskContainer object:

  $service_obj->Method(Att1 => { Description => $value, ..., UserBucket => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SnapshotDiskContainer object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the disk image being imported.


=head2 Format => Str

  The format of the disk image being imported.

Valid values: C<VHD> | C<VMDK>


=head2 Url => Str

  The URL to the Amazon S3-based disk image being imported. It can either
be a https URL (https://..) or an Amazon S3 URL (s3://..).


=head2 UserBucket => L<Paws::EC2::UserBucket>

  The S3 bucket for the disk image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
