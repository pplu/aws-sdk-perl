package Paws::Neptune::PendingModifiedValues;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CACertificateIdentifier => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DBSubnetGroupName => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has PendingCloudwatchLogsExports => (is => 'ro', isa => 'Paws::Neptune::PendingCloudwatchLogsExports');
  has Port => (is => 'ro', isa => 'Int');
  has StorageType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::PendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::PendingModifiedValues object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., StorageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::PendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

This data type is used as a response element in the ModifyDBInstance
action.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

  Contains the new C<AllocatedStorage> size for the DB instance that will
be applied or is currently being applied.


=head2 BackupRetentionPeriod => Int

  Specifies the pending number of days for which automated backups are
retained.


=head2 CACertificateIdentifier => Str

  Specifies the identifier of the CA certificate for the DB instance.


=head2 DBInstanceClass => Str

  Contains the new C<DBInstanceClass> for the DB instance that will be
applied or is currently being applied.


=head2 DBInstanceIdentifier => Str

  Contains the new C<DBInstanceIdentifier> for the DB instance that will
be applied or is currently being applied.


=head2 DBSubnetGroupName => Str

  The new DB subnet group for the DB instance.


=head2 EngineVersion => Str

  Indicates the database engine version.


=head2 Iops => Int

  Specifies the new Provisioned IOPS value for the DB instance that will
be applied or is currently being applied.


=head2 LicenseModel => Str

  The license model for the DB instance.

Valid values: C<license-included> | C<bring-your-own-license> |
C<general-public-license>


=head2 MasterUserPassword => Str

  Contains the pending or currently-in-progress change of the master
credentials for the DB instance.


=head2 MultiAZ => Bool

  Indicates that the Single-AZ DB instance is to change to a Multi-AZ
deployment.


=head2 PendingCloudwatchLogsExports => L<Paws::Neptune::PendingCloudwatchLogsExports>

  


=head2 Port => Int

  Specifies the pending port for the DB instance.


=head2 StorageType => Str

  Specifies the storage type to be associated with the DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

