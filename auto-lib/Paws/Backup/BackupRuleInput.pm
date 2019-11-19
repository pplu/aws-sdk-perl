# Generated from default/object.tt
package Paws::Backup::BackupRuleInput;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Backup::Types qw/Backup_Tags Backup_Lifecycle/;
  has CompletionWindowMinutes => (is => 'ro', isa => Int);
  has Lifecycle => (is => 'ro', isa => Backup_Lifecycle);
  has RecoveryPointTags => (is => 'ro', isa => Backup_Tags);
  has RuleName => (is => 'ro', isa => Str, required => 1);
  has ScheduleExpression => (is => 'ro', isa => Str);
  has StartWindowMinutes => (is => 'ro', isa => Int);
  has TargetBackupVaultName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TargetBackupVaultName' => 1,
                    'RuleName' => 1
                  },
  'types' => {
               'Lifecycle' => {
                                'class' => 'Paws::Backup::Lifecycle',
                                'type' => 'Backup_Lifecycle'
                              },
               'CompletionWindowMinutes' => {
                                              'type' => 'Int'
                                            },
               'RecoveryPointTags' => {
                                        'type' => 'Backup_Tags',
                                        'class' => 'Paws::Backup::Tags'
                                      },
               'StartWindowMinutes' => {
                                         'type' => 'Int'
                                       },
               'ScheduleExpression' => {
                                         'type' => 'Str'
                                       },
               'RuleName' => {
                               'type' => 'Str'
                             },
               'TargetBackupVaultName' => {
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

Paws::Backup::BackupRuleInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupRuleInput object:

  $service_obj->Method(Att1 => { CompletionWindowMinutes => $value, ..., TargetBackupVaultName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupRuleInput object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionWindowMinutes

=head1 DESCRIPTION

Specifies a scheduled task used to back up a selection of resources.

=head1 ATTRIBUTES


=head2 CompletionWindowMinutes => Int

  The amount of time AWS Backup attempts a backup before canceling the
job and returning an error.


=head2 Lifecycle => Backup_Lifecycle

  The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup will transition and expire
backups automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo>. The E<ldquo>transition to cold after daysE<rdquo>
setting cannot be changed after a backup has been transitioned to cold.


=head2 RecoveryPointTags => Backup_Tags

  To help organize your resources, you can assign your own metadata to
the resources that you create. Each tag is a key-value pair.


=head2 B<REQUIRED> RuleName => Str

  E<gt>An optional display name for a backup rule.


=head2 ScheduleExpression => Str

  A CRON expression specifying when AWS Backup initiates a backup job.


=head2 StartWindowMinutes => Int

  The amount of time in minutes before beginning a backup.


=head2 B<REQUIRED> TargetBackupVaultName => Str

  The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

