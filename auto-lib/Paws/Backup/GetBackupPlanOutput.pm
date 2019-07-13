
package Paws::Backup::GetBackupPlanOutput;
  use Moose;
  has BackupPlan => (is => 'ro', isa => 'Paws::Backup::BackupPlan');
  has BackupPlanArn => (is => 'ro', isa => 'Str');
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has DeletionDate => (is => 'ro', isa => 'Str');
  has LastExecutionDate => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::GetBackupPlanOutput

=head1 ATTRIBUTES


=head2 BackupPlan => L<Paws::Backup::BackupPlan>

Specifies the body of a backup plan. Includes a C<BackupPlanName> and
one or more sets of C<Rules>.


=head2 BackupPlanArn => Str

An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
for example,
C<arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50>.


=head2 BackupPlanId => Str

Uniquely identifies a backup plan.


=head2 CreationDate => Str

The date and time that a backup plan is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.


=head2 DeletionDate => Str

The date and time that a backup plan is deleted, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 LastExecutionDate => Str

The last time a job to back up resources was executed with this backup
plan. A date and time, in Unix format and Coordinated Universal Time
(UTC). The value of C<LastExecutionDate> is accurate to milliseconds.
For example, the value 1516925490.087 represents Friday, January 26,
2018 12:11:30.087 AM.


=head2 VersionId => Str

Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
most 1,024 bytes long. Version IDs cannot be edited.


=head2 _request_id => Str


=cut

