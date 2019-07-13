
package Paws::Backup::StartBackupJobOutput;
  use Moose;
  has BackupJobId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::StartBackupJobOutput

=head1 ATTRIBUTES


=head2 BackupJobId => Str

Uniquely identifies a request to AWS Backup to back up a resource.


=head2 CreationDate => Str

The date and time that a backup job is started, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 RecoveryPointArn => Str

An ARN that uniquely identifies a recovery point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 _request_id => Str


=cut

