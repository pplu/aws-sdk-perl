package Paws::OpsWorksCM::Backup;
  use Moose;
  has BackupArn => (is => 'ro', isa => 'Str');
  has BackupId => (is => 'ro', isa => 'Str');
  has BackupType => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineModel => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KeyPair => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has S3DataSize => (is => 'ro', isa => 'Int');
  has S3DataUrl => (is => 'ro', isa => 'Str');
  has S3LogUrl => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDescription => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ToolsVersion => (is => 'ro', isa => 'Str');
  has UserArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::Backup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorksCM::Backup object:

  $service_obj->Method(Att1 => { BackupArn => $value, ..., UserArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorksCM::Backup object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupArn

=head1 DESCRIPTION

Describes a single backup.

=head1 ATTRIBUTES


=head2 BackupArn => Str

  The ARN of the backup.


=head2 BackupId => Str

  The generated ID of the backup. Example:
C<myServerName-yyyyMMddHHmmssSSS>


=head2 BackupType => Str

  The backup type. Valid values are C<automated> or C<manual>.


=head2 CreatedAt => Str

  The time stamp when the backup was created in the database. Example:
C<2016-07-29T13:38:47.520Z>


=head2 Description => Str

  A user-provided description for a manual backup. This field is empty
for automated backups.


=head2 Engine => Str

  The engine type that is obtained from the server when the backup is
created.


=head2 EngineModel => Str

  The engine model that is obtained from the server when the backup is
created.


=head2 EngineVersion => Str

  The engine version that is obtained from the server when the backup is
created.


=head2 InstanceProfileArn => Str

  The EC2 instance profile ARN that is obtained from the server when the
backup is created. Because this value is stored, you are not required
to provide the InstanceProfileArn again if you restore a backup.


=head2 InstanceType => Str

  The instance type that is obtained from the server when the backup is
created.


=head2 KeyPair => Str

  The key pair that is obtained from the server when the backup is
created.


=head2 PreferredBackupWindow => Str

  The preferred backup period that is obtained from the server when the
backup is created.


=head2 PreferredMaintenanceWindow => Str

  The preferred maintenance period that is obtained from the server when
the backup is created.


=head2 S3DataSize => Int

  The size of the backup, in bytes. The size is returned by the instance
in the command results.


=head2 S3DataUrl => Str

  The Amazon S3 URL of the backup's tar.gz file.


=head2 S3LogUrl => Str

  The Amazon S3 URL of the backup's log file.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security group IDs that are obtained from the server when the
backup is created.


=head2 ServerName => Str

  The name of the server from which the backup was made.


=head2 ServiceRoleArn => Str

  The service role ARN that is obtained from the server when the backup
is created.


=head2 Status => Str

  The status of a backup while in progress.


=head2 StatusDescription => Str

  An informational message about backup status.


=head2 SubnetIds => ArrayRef[Str|Undef]

  The subnet IDs that are obtained from the server when the backup is
created.


=head2 ToolsVersion => Str

  The version of AWS OpsWorks for Chef Automate-specific tools that is
obtained from the server when the backup is created.


=head2 UserArn => Str

  The IAM user ARN of the requester for manual backups. This field is
empty for automated backups.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

