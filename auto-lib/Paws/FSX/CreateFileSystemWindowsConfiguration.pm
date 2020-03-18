package Paws::FSX::CreateFileSystemWindowsConfiguration;
  use Moose;
  has ActiveDirectoryId => (is => 'ro', isa => 'Str');
  has AutomaticBackupRetentionDays => (is => 'ro', isa => 'Int');
  has CopyTagsToBackups => (is => 'ro', isa => 'Bool');
  has DailyAutomaticBackupStartTime => (is => 'ro', isa => 'Str');
  has DeploymentType => (is => 'ro', isa => 'Str');
  has PreferredSubnetId => (is => 'ro', isa => 'Str');
  has SelfManagedActiveDirectoryConfiguration => (is => 'ro', isa => 'Paws::FSX::SelfManagedActiveDirectoryConfiguration');
  has ThroughputCapacity => (is => 'ro', isa => 'Int', required => 1);
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::CreateFileSystemWindowsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::CreateFileSystemWindowsConfiguration object:

  $service_obj->Method(Att1 => { ActiveDirectoryId => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::CreateFileSystemWindowsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveDirectoryId

=head1 DESCRIPTION

The configuration object for the Microsoft Windows file system used in
C<CreateFileSystem> and C<CreateFileSystemFromBackup> operations.

=head1 ATTRIBUTES


=head2 ActiveDirectoryId => Str

  The ID for an existing AWS Managed Microsoft Active Directory (AD)
instance that the file system should join when it's created.


=head2 AutomaticBackupRetentionDays => Int

  The number of days to retain automatic backups. The default is to
retain backups for 7 days. Setting this value to 0 disables the
creation of automatic backups. The maximum retention period for backups
is 35 days.


=head2 CopyTagsToBackups => Bool

  A boolean flag indicating whether tags for the file system should be
copied to backups. This value defaults to false. If it's set to true,
all tags for the file system are copied to all automatic and
user-initiated backups where the user doesn't specify tags. If this
value is true, and you specify one or more tags, only the specified
tags are copied to backups.


=head2 DailyAutomaticBackupStartTime => Str

  The preferred time to take daily automatic backups, formatted HH:MM in
the UTC time zone.


=head2 DeploymentType => Str

  Specifies the file system deployment type, valid values are the
following:

=over

=item *

MULTI_AZ_1 - Deploys a high availability file system that is configured
for Multi-AZ redundancy to tolerate temporary Availability Zone (AZ)
unavailability. You can only deploy a Multi-AZ file system in AWS
Regions that have a minimum of three Availability Zones.

=item *

SINGLE_AZ_1 - (Default) Choose to deploy a file system that is
configured for single AZ redundancy.

=back

To learn more about high availability Multi-AZ file systems, see High
Availability for Amazon FSx for Windows File Server
(https://docs.aws.amazon.com/fsx/latest/WindowsGuide/high-availability-multiAZ.html).


=head2 PreferredSubnetId => Str

  Required when C<DeploymentType> is set to C<MULTI_AZ_1>. This specifies
the subnet in which you want the preferred file server to be located.
For in-AWS applications, we recommend that you launch your clients in
the same Availability Zone (AZ) as your preferred file server to reduce
cross-AZ data transfer costs and minimize latency.


=head2 SelfManagedActiveDirectoryConfiguration => L<Paws::FSX::SelfManagedActiveDirectoryConfiguration>

  


=head2 B<REQUIRED> ThroughputCapacity => Int

  The throughput of an Amazon FSx file system, measured in megabytes per
second, in 2 to the I<n>th increments, between 2^3 (8) and 2^11 (2048).


=head2 WeeklyMaintenanceStartTime => Str

  The preferred start time to perform weekly maintenance, formatted
d:HH:MM in the UTC time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

