package Paws::FSX::UpdateFileSystemWindowsConfiguration;
  use Moose;
  has AutomaticBackupRetentionDays => (is => 'ro', isa => 'Int');
  has DailyAutomaticBackupStartTime => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::UpdateFileSystemWindowsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::UpdateFileSystemWindowsConfiguration object:

  $service_obj->Method(Att1 => { AutomaticBackupRetentionDays => $value, ..., WeeklyMaintenanceStartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::UpdateFileSystemWindowsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomaticBackupRetentionDays

=head1 DESCRIPTION

The configuration object for the Microsoft Windows file system used in
the C<UpdateFileSystem> operation.

=head1 ATTRIBUTES


=head2 AutomaticBackupRetentionDays => Int

  The number of days to retain automatic backups. Setting this to 0
disables automatic backups. You can retain automatic backups for a
maximum of 35 days.


=head2 DailyAutomaticBackupStartTime => Str

  The preferred time to take daily automatic backups, in the UTC time
zone.


=head2 WeeklyMaintenanceStartTime => Str

  The preferred time to perform weekly maintenance, in the UTC time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

