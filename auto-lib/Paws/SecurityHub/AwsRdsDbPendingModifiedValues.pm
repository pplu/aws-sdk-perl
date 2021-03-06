# Generated by default/object.tt
package Paws::SecurityHub::AwsRdsDbPendingModifiedValues;
  use Moose;
  has AllocatedStorage => (is => 'ro', isa => 'Int');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has CaCertificateIdentifier => (is => 'ro', isa => 'Str');
  has DbInstanceClass => (is => 'ro', isa => 'Str');
  has DbInstanceIdentifier => (is => 'ro', isa => 'Str');
  has DbSubnetGroupName => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has Iops => (is => 'ro', isa => 'Int');
  has LicenseModel => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has PendingCloudWatchLogsExports => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsPendingCloudWatchLogsExports');
  has Port => (is => 'ro', isa => 'Int');
  has ProcessorFeatures => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsRdsDbProcessorFeature]');
  has StorageType => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsRdsDbPendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsRdsDbPendingModifiedValues object:

  $service_obj->Method(Att1 => { AllocatedStorage => $value, ..., StorageType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsRdsDbPendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocatedStorage

=head1 DESCRIPTION

Changes to a DB instance that are currently pending.

=head1 ATTRIBUTES


=head2 AllocatedStorage => Int

The new value of the allocated storage for the DB instance.


=head2 BackupRetentionPeriod => Int

The new backup retention period for the DB instance.


=head2 CaCertificateIdentifier => Str

The new CA certificate identifier for the DB instance.


=head2 DbInstanceClass => Str

The new DB instance class for the DB instance.


=head2 DbInstanceIdentifier => Str

The new DB instance identifier for the DB instance.


=head2 DbSubnetGroupName => Str

The name of the new subnet group for the DB instance.


=head2 EngineVersion => Str

The new engine version for the DB instance.


=head2 Iops => Int

The new provisioned IOPS value for the DB instance.


=head2 LicenseModel => Str

The new license model value for the DB instance.


=head2 MasterUserPassword => Str

The new master user password for the DB instance.


=head2 MultiAZ => Bool

Indicates that a single Availability Zone DB instance is changing to a
multiple Availability Zone deployment.


=head2 PendingCloudWatchLogsExports => L<Paws::SecurityHub::AwsRdsPendingCloudWatchLogsExports>

A list of log types that are being enabled or disabled.


=head2 Port => Int

The new port for the DB instance.


=head2 ProcessorFeatures => ArrayRef[L<Paws::SecurityHub::AwsRdsDbProcessorFeature>]

Processor features that are being updated.


=head2 StorageType => Str

The new storage type for the DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

