package Paws::RDS::DBSnapshot;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
  has DBSnapshotArn => (is => 'ro', isa => 'Str');
  has DBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has IAMDatabaseAuthenticationEnabled => (is => 'ro', isa => 'Bool');
  has InstanceCreateTime => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has PercentProgress => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ProcessorFeature]', request_name => 'ProcessorFeature', traits => ['NameInRequest']);
  has SnapshotCreateTime => (is => 'ro', isa => 'Str');
  has SnapshotType => (is => 'ro', isa => 'Str');
  has SourceDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBSnapshot

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBSnapshot object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBSnapshot object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Contains the details of an Amazon RDS DB snapshot.

This data type is used as a response element in the DescribeDBSnapshots
action.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  Specifies the allocated storage size in gibibytes (GiB).


=head2 AvailabilityZone => Str

  Specifies the name of the Availability Zone the DB instance was located
in at the time of the DB snapshot.


=head2 DBInstanceIdentifier => Str

  Specifies the DB instance identifier of the DB instance this DB
snapshot was created from.


=head2 DbiResourceId => Str

  The identifier for the source DB instance, which can't be changed and
which is unique to an AWS Region.


=head2 DBSnapshotArn => Str

  The Amazon Resource Name (ARN) for the DB snapshot.


=head2 DBSnapshotIdentifier => Str

  Specifies the identifier for the DB snapshot.


=head2 Encrypted => Bool

  Specifies whether the DB snapshot is encrypted.


=head2 Engine => Str

  Specifies the name of the database engine.


=head2 EngineVersion => Str

  Specifies the version of the database engine.


=head2 IAMDatabaseAuthenticationEnabled => Bool

  True if mapping of AWS Identity and Access Management (IAM) accounts to
database accounts is enabled, and otherwise false.


=head2 InstanceCreateTime => Str

  Specifies the time when the snapshot was taken, in Universal
Coordinated Time (UTC).


=head2 Iops => Int

  Specifies the Provisioned IOPS (I/O operations per second) value of the
DB instance at the time of the snapshot.


=head2 KmsKeyId => Str

  If C<Encrypted> is true, the AWS KMS key identifier for the encrypted
DB snapshot.


=head2 LicenseModel => Str

  License model information for the restored DB instance.


=head2 MasterUsername => Str

  Provides the master username for the DB snapshot.


=head2 OptionGroupName => Str

  Provides the option group name for the DB snapshot.


=head2 PercentProgress => Int

  The percentage of the estimated data that has been transferred.


=head2 Port => Int

  Specifies the port that the database engine was listening on at the
time of the snapshot.


=head2 ProcessorFeatures => ArrayRef[L<Paws::RDS::ProcessorFeature>]

  The number of CPU cores and the number of threads per core for the DB
instance class of the DB instance when the DB snapshot was created.


=head2 SnapshotCreateTime => Str

  Provides the time when the snapshot was taken, in Universal Coordinated
Time (UTC).


=head2 SnapshotType => Str

  Provides the type of the DB snapshot.


=head2 SourceDBSnapshotIdentifier => Str

  The DB snapshot Amazon Resource Name (ARN) that the DB snapshot was
copied from. It only has value in case of cross-customer or
cross-region copy.


=head2 SourceRegion => Str

  The AWS Region that the DB snapshot was created in or copied from.


=head2 Status => Str

  Specifies the status of this DB snapshot.


=head2 StorageType => Str

  Specifies the storage type associated with DB snapshot.


=head2 TdeCredentialArn => Str

  The ARN from the key store with which to associate the instance for TDE
encryption.


=head2 Timezone => Str

  The time zone of the DB snapshot. In most cases, the C<Timezone>
element is empty. C<Timezone> content appears only for snapshots taken
from Microsoft SQL Server DB instances that were created with a time
zone specified.


=head2 VpcId => Str

  Provides the VPC ID associated with the DB snapshot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

