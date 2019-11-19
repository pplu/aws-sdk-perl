# Generated from default/object.tt
package Paws::FSX::UpdateFileSystemWindowsConfiguration;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::FSX::Types qw/FSX_SelfManagedActiveDirectoryConfigurationUpdates/;
  has AutomaticBackupRetentionDays => (is => 'ro', isa => Int);
  has DailyAutomaticBackupStartTime => (is => 'ro', isa => Str);
  has SelfManagedActiveDirectoryConfiguration => (is => 'ro', isa => FSX_SelfManagedActiveDirectoryConfigurationUpdates);
  has WeeklyMaintenanceStartTime => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DailyAutomaticBackupStartTime' => {
                                                    'type' => 'Str'
                                                  },
               'SelfManagedActiveDirectoryConfiguration' => {
                                                              'type' => 'FSX_SelfManagedActiveDirectoryConfigurationUpdates',
                                                              'class' => 'Paws::FSX::SelfManagedActiveDirectoryConfigurationUpdates'
                                                            },
               'AutomaticBackupRetentionDays' => {
                                                   'type' => 'Int'
                                                 },
               'WeeklyMaintenanceStartTime' => {
                                                 'type' => 'Str'
                                               }
             }
}
;
    return $Params_map;
  }


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

Updates the Microsoft Windows configuration for an existing Amazon FSx
for Windows File Server file system. Amazon FSx overwrites existing
properties with non-null values provided in the request. If you don't
specify a non-null value for a property, that property is not updated.

=head1 ATTRIBUTES


=head2 AutomaticBackupRetentionDays => Int

  The number of days to retain automatic backups. Setting this to 0
disables automatic backups. You can retain automatic backups for a
maximum of 35 days.


=head2 DailyAutomaticBackupStartTime => Str

  The preferred time to take daily automatic backups, in the UTC time
zone.


=head2 SelfManagedActiveDirectoryConfiguration => FSX_SelfManagedActiveDirectoryConfigurationUpdates

  The configuration Amazon FSx uses to join the Windows File Server
instance to the self-managed Microsoft AD directory.


=head2 WeeklyMaintenanceStartTime => Str

  The preferred time to perform weekly maintenance, in the UTC time zone.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

