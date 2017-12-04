package Paws::EC2::LaunchTemplateEbsBlockDeviceRequest;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has SnapshotId => (is => 'ro', isa => 'Str');
  has VolumeSize => (is => 'ro', isa => 'Int');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateEbsBlockDeviceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateEbsBlockDeviceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the EBS volume is deleted on instance termination.


=head2 Encrypted => Bool

  Indicates whether the EBS volume is encrypted. Encrypted volumes can
only be attached to instances that support Amazon EBS encryption. If
you are creating a volume from a snapshot, you can't specify an
encryption value.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports. For io1, this represents the number of IOPS that are
provisioned for the volume. For gp2, this represents the baseline
performance of the volume and the rate at which the volume accumulates
I/O credits for bursting. For more information about General Purpose
SSD baseline performance, I/O credits, and bursting, see Amazon EBS
Volume Types in the Amazon Elastic Compute Cloud User Guide.

Condition: This parameter is required for requests to create io1
volumes; it is not used in requests to create gp2, st1, sc1, or
standard volumes.


=head2 KmsKeyId => Str

  The ARN of the AWS Key Management Service (AWS KMS) CMK used for
encryption.


=head2 SnapshotId => Str

  The ID of the snapshot.


=head2 VolumeSize => Int

  The size of the volume, in GiB.

Default: If you're creating the volume from a snapshot and don't
specify a volume size, the default is the snapshot size.


=head2 VolumeType => Str

  The volume type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
