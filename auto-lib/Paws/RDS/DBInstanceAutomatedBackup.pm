package Paws::RDS::DBInstanceAutomatedBackup;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DBInstanceArn => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbiResourceId => (is => 'ro', isa => 'Str');
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
  has Port => (is => 'ro', isa => 'Int');
  has Region => (is => 'ro', isa => 'Str');
  has RestoreWindow => (is => 'ro', isa => 'Paws::RDS::RestoreWindow');
  has Status => (is => 'ro', isa => 'Str');
  has StorageType => (is => 'ro', isa => 'Str');
  has TdeCredentialArn => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBInstanceAutomatedBackup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::DBInstanceAutomatedBackup object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::DBInstanceAutomatedBackup object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

An automated backup of a DB instance. It it consists of system backups,
transaction logs, and the database instance properties that existed at
the time you deleted the source instance.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  Specifies the allocated storage size in gibibytes (GiB).


=head2 AvailabilityZone => Str

  The Availability Zone that the automated backup was created in. For
information on AWS Regions and Availability Zones, see Regions and
Availability Zones
(http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RegionsAndAvailabilityZones.html).


=head2 DBInstanceArn => Str

  The Amazon Resource Name (ARN) for the automated backup.


=head2 DBInstanceIdentifier => Str

  The customer id of the instance that is/was associated with the
automated backup.


=head2 DbiResourceId => Str

  The identifier for the source DB instance, which can't be changed and
which is unique to an AWS Region.


=head2 Encrypted => Bool

  Specifies whether the automated backup is encrypted.


=head2 Engine => Str

  The name of the database engine for this automated backup.


=head2 EngineVersion => Str

  The version of the database engine for the automated backup.


=head2 IAMDatabaseAuthenticationEnabled => Bool

  True if mapping of AWS Identity and Access Management (IAM) accounts to
database accounts is enabled, and otherwise false.


=head2 InstanceCreateTime => Str

  Provides the date and time that the DB instance was created.


=head2 Iops => Int

  The IOPS (I/O operations per second) value for the automated backup.


=head2 KmsKeyId => Str

  The AWS KMS key ID for an automated backup. The KMS key ID is the
Amazon Resource Name (ARN), KMS key identifier, or the KMS key alias
for the KMS encryption key.


=head2 LicenseModel => Str

  License model information for the automated backup.


=head2 MasterUsername => Str

  The license model of an automated backup.


=head2 OptionGroupName => Str

  The option group the automated backup is associated with. If omitted,
the default option group for the engine specified is used.


=head2 Port => Int

  The port number that the automated backup used for connections.

Default: Inherits from the source DB instance

Valid Values: C<1150-65535>


=head2 Region => Str

  The AWS Region associated with the automated backup.


=head2 RestoreWindow => L<Paws::RDS::RestoreWindow>

  Earliest and latest time an instance can be restored to.


=head2 Status => Str

  Provides a list of status information for an automated backup:

=over

=item *

C<active> - automated backups for current instances

=item *

C<retained> - automated backups for deleted instances

=item *

C<creating> - automated backups that are waiting for the first
automated snapshot to be available.

=back



=head2 StorageType => Str

  Specifies the storage type associated with the automated backup.


=head2 TdeCredentialArn => Str

  The ARN from the key store with which the automated backup is
associated for TDE encryption.


=head2 Timezone => Str

  The time zone of the automated backup. In most cases, the C<Timezone>
element is empty. C<Timezone> content appears only for Microsoft SQL
Server DB instances that were created with a time zone specified.


=head2 VpcId => Str

  Provides the VPC ID associated with the DB instance



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

