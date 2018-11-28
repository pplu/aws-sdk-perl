package Paws::FSX::CreateFileSystemWindowsConfiguration;
  use Moose;
  has ActiveDirectoryId => (is => 'ro', isa => 'Str');
  has AutomaticBackupRetentionDays => (is => 'ro', isa => 'Int');
  has CopyTagsToBackups => (is => 'ro', isa => 'Bool');
  has DailyAutomaticBackupStartTime => (is => 'ro', isa => 'Str');
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

  The ID for an existing Microsoft Active Directory instance that the
file system should join when it's created.


=head2 AutomaticBackupRetentionDays => Int

  The number of days to retain automatic backups. The default is to
retain backups for 7 days. Setting this value to 0 disables the
creation of automatic backups. The maximum retention period for backups
is 35 days.


=head2 CopyTagsToBackups => Bool

  A boolean flag indicating whether tags on the file system should be
copied to backups. This value defaults to false. If it's set to true,
all tags on the file system are copied to all automatic backups and any
user-initiated backups where the user doesn't specify any tags. If this
value is true, and you specify one or more tags, only the specified
tags are copied to backups.


=head2 DailyAutomaticBackupStartTime => Str

  The preferred time to take daily automatic backups, in the UTC time
zone.


=head2 B<REQUIRED> ThroughputCapacity => Int

  The throughput of an Amazon FSx file system, measured in megabytes per
second.


=head2 WeeklyMaintenanceStartTime => Str

  The preferred start time to perform weekly maintenance, in the UTC time
zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

