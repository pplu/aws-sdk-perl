package Paws::Backup::BackupRule;
  use Moose;
  has CompletionWindowMinutes => (is => 'ro', isa => 'Int');
  has Lifecycle => (is => 'ro', isa => 'Paws::Backup::Lifecycle');
  has RecoveryPointTags => (is => 'ro', isa => 'Paws::Backup::Tags');
  has RuleId => (is => 'ro', isa => 'Str');
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has StartWindowMinutes => (is => 'ro', isa => 'Int');
  has TargetBackupVaultName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupRule object:

  $service_obj->Method(Att1 => { CompletionWindowMinutes => $value, ..., TargetBackupVaultName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupRule object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionWindowMinutes

=head1 DESCRIPTION

Specifies a scheduled task used to back up a selection of resources.

=head1 ATTRIBUTES


=head2 CompletionWindowMinutes => Int

  A value in minutes after a backup job is successfully started before it
must be completed or it is canceled by AWS Backup. This value is
optional.


=head2 Lifecycle => L<Paws::Backup::Lifecycle>

  The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo> setting. The E<ldquo>transition to cold after
daysE<rdquo> setting cannot be changed after a backup has been
transitioned to cold.


=head2 RecoveryPointTags => L<Paws::Backup::Tags>

  An array of key-value pair strings that are assigned to resources that
are associated with this rule when restored from backup.


=head2 RuleId => Str

  Uniquely identifies a rule that is used to schedule the backup of a
selection of resources.


=head2 B<REQUIRED> RuleName => Str

  An optional display name for a backup rule.


=head2 ScheduleExpression => Str

  A CRON expression specifying when AWS Backup initiates a backup job.


=head2 StartWindowMinutes => Int

  An optional value that specifies a period of time in minutes after a
backup is scheduled before a job is canceled if it doesn't start
successfully.


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

