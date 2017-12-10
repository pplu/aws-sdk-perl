package Paws::EC2::LaunchTemplateEbsBlockDevice;
  use Moose;
  has DeleteOnTermination => (is => 'ro', isa => 'Bool', request_name => 'deleteOnTermination', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest']);
  has VolumeType => (is => 'ro', isa => 'Str', request_name => 'volumeType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateEbsBlockDevice

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateEbsBlockDevice object:

  $service_obj->Method(Att1 => { DeleteOnTermination => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateEbsBlockDevice object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteOnTermination

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeleteOnTermination => Bool

  Indicates whether the EBS volume is deleted on instance termination.


=head2 Encrypted => Bool

  Indicates whether the EBS volume is encrypted.


=head2 Iops => Int

  The number of I/O operations per second (IOPS) that the volume
supports.


=head2 KmsKeyId => Str

  The ARN of the AWS Key Management Service (AWS KMS) CMK used for
encryption.


=head2 SnapshotId => Str

  The ID of the snapshot.


=head2 VolumeSize => Int

  The size of the volume, in GiB.


=head2 VolumeType => Str

  The volume type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
