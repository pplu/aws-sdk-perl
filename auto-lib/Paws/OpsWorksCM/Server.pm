package Paws::OpsWorksCM::Server;
  use Moose;
  has BackupRetentionCount => (is => 'ro', isa => 'Int');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has DisableAutomatedBackup => (is => 'ro', isa => 'Bool');
  has Endpoint => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has EngineModel => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KeyPair => (is => 'ro', isa => 'Str');
  has MaintenanceStatus => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerArn => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::Server

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorksCM::Server object:

  $service_obj->Method(Att1 => { BackupRetentionCount => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorksCM::Server object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupRetentionCount

=head1 DESCRIPTION

Describes a configuration management server.

=head1 ATTRIBUTES


=head2 BackupRetentionCount => Int

  The number of automated backups to keep.


=head2 CreatedAt => Str

  Time stamp of server creation. Example C<2016-07-29T13:38:47.520Z>


=head2 DisableAutomatedBackup => Bool

  Disables automated backups. The number of stored backups is dependent
on the value of PreferredBackupCount.


=head2 Endpoint => Str

  A DNS name that can be used to access the engine. Example:
C<myserver-asdfghjkl.us-east-1.opsworks.io>


=head2 Engine => Str

  The engine type of the server. The valid value in this release is
C<Chef>.


=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

  The response of a createServer() request returns the master credential
to access the server in EngineAttributes. These credentials are not
stored by AWS OpsWorks for Chef Automate; they are returned only as
part of the result of createServer().

B<Attributes returned in a createServer response:>

=over

=item *

C<CHEF_PIVOTAL_KEY>: A base64-encoded RSA private key that is generated
by AWS OpsWorks for Chef Automate. This private key is required to
access the Chef API.

=item *

C<CHEF_STARTER_KIT>: A base64-encoded ZIP file. The ZIP file contains a
Chef starter kit, which includes a README, a configuration file, and
the required RSA private key. Save this file, unzip it, and then change
to the directory where you've unzipped the file contents. From this
directory, you can run Knife commands.

=back



=head2 EngineModel => Str

  The engine model of the server. The valid value in this release is
C<Single>.


=head2 EngineVersion => Str

  The engine version of the server. Because Chef is the engine available
in this release, the valid value for EngineVersion is C<12>.


=head2 InstanceProfileArn => Str

  The instance profile ARN of the server.


=head2 InstanceType => Str

  The instance type for the server, as specified in the CloudFormation
stack. This might not be the same instance type that is shown in the
EC2 console.


=head2 KeyPair => Str

  The key pair associated with the server.


=head2 MaintenanceStatus => Str

  The status of the most recent server maintenance run. Shows C<SUCCESS>
or C<FAILED>.


=head2 PreferredBackupWindow => Str

  The preferred backup period specified for the server.


=head2 PreferredMaintenanceWindow => Str

  The preferred maintenance period specified for the server.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  The security group IDs for the server, as specified in the
CloudFormation stack. These might not be the same security groups that
are shown in the EC2 console.


=head2 ServerArn => Str

  The ARN of the server.


=head2 ServerName => Str

  The name of the server.


=head2 ServiceRoleArn => Str

  The service role ARN used to create the server.


=head2 Status => Str

  The server's status. This field displays the states of actions in
progress, such as creating, running, or backing up the server, as well
as server health.


=head2 StatusReason => Str

  Depending on the server status, this field has either a human-readable
message (such as a create or backup error), or an escaped block of JSON
(used for health check results).


=head2 SubnetIds => ArrayRef[Str|Undef]

  The subnet IDs specified in a CreateServer request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

