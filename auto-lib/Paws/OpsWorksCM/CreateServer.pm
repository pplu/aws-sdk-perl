
package Paws::OpsWorksCM::CreateServer;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str');
  has BackupRetentionCount => (is => 'ro', isa => 'Int');
  has DisableAutomatedBackup => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has EngineModel => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has KeyPair => (is => 'ro', isa => 'Str');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::CreateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::CreateServer - Arguments for method CreateServer on Paws::OpsWorksCM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServer on the 
AWS OpsWorks for Chef Automate service. Use the attributes of this class
as arguments to method CreateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServer.

As an example:

  $service_obj->CreateServer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BackupId => Str

If you specify this field, AWS OpsWorks for Chef Automate creates the
server by using the backup represented by BackupId.



=head2 BackupRetentionCount => Int

The number of automated backups that you want to keep. Whenever a new
backup is created, AWS OpsWorks for Chef Automate deletes the oldest
backups if this number is exceeded. The default value is C<1>.



=head2 DisableAutomatedBackup => Bool

Enable or disable scheduled backups. Valid values are C<true> or
C<false>. The default value is C<true>.



=head2 Engine => Str

The configuration management engine to use. Valid values include
C<Chef>.



=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes on a specified server.

B<Attributes accepted in a createServer request:>

=over

=item *

C<CHEF_PIVOTAL_KEY>: A base64-encoded RSA private key that is not
stored by AWS OpsWorks for Chef Automate. This private key is required
to access the Chef API.

=back




=head2 EngineModel => Str

The engine model, or option. Valid values include C<Single>.



=head2 EngineVersion => Str

The major release version of the engine that you want to use. Values
depend on the engine that you choose.



=head2 B<REQUIRED> InstanceProfileArn => Str

The ARN of the instance profile that your Amazon EC2 instances use.
Although the AWS OpsWorks console typically creates the instance
profile for you, in this release of AWS OpsWorks for Chef Automate, run
the service-role-creation.yaml AWS CloudFormation template, located at
https://s3.amazonaws.com/opsworks-stuff/latest/service-role-creation.yaml.
This template creates a stack that includes the instance profile you
need.



=head2 InstanceType => Str

The Amazon EC2 instance type to use. Valid values must be specified in
the following format: C<^([cm][34]|t2).*> For example, C<c3.large>.



=head2 KeyPair => Str

The Amazon EC2 key pair to set for the instance. You may specify this
parameter to connect to your instances by using SSH.



=head2 PreferredBackupWindow => Str

The start time for a one-hour period during which AWS OpsWorks for Chef
Automate backs up application-level data on your server if backups are
enabled. Valid values must be specified in one of the following
formats:

=over

=item *

C<HH:MM> for daily backups

=item *

C<DDD:HH:MM> for weekly backups

=back

The specified time is in coordinated universal time (UTC). The default
value is a random, daily start time.

B<Example:> C<08:00>, which represents a daily start time of 08:00 UTC.

B<Example:> C<Mon:08:00>, which represents a start time of every Monday
at 08:00 UTC. (8:00 a.m.)



=head2 PreferredMaintenanceWindow => Str

The start time for a one-hour period each week during which AWS
OpsWorks for Chef Automate performs maintenance on the instance. Valid
values must be specified in the following format: C<DDD:HH:MM>. The
specified time is in coordinated universal time (UTC). The default
value is a random one-hour period on Tuesday, Wednesday, or Friday. See
C<TimeWindowDefinition> for more information.

B<Example:> C<Mon:08:00>, which represents a start time of every Monday
at 08:00 UTC. (8:00 a.m.)



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group IDs to attach to the Amazon EC2 instance. If
you add this parameter, the specified security groups must be within
the VPC that is specified by C<SubnetIds>.

If you do not specify this parameter, AWS OpsWorks for Chef Automate
creates one new security group that uses TCP ports 22 and 443, open to
0.0.0.0/0 (everyone).



=head2 B<REQUIRED> ServerName => Str

The name of the server. The server name must be unique within your AWS
account, within each region. Server names must start with a letter;
then letters, numbers, or hyphens (-) are allowed, up to a maximum of
32 characters.



=head2 B<REQUIRED> ServiceRoleArn => Str

The service role that the AWS OpsWorks for Chef Automate service
backend uses to work with your account. Although the AWS OpsWorks
console typically creates the service role for you, in this release of
AWS OpsWorks for Chef Automate, run the service-role-creation.yaml AWS
CloudFormation template, located at
https://s3.amazonaws.com/opsworks-stuff/latest/service-role-creation.yaml.
This template creates a stack that includes the service role that you
need.



=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of subnets in which to launch the server EC2 instance.

Amazon EC2-Classic customers: This field is required. All servers must
run within a VPC. The VPC must have "Auto Assign Public IP" enabled.

EC2-VPC customers: This field is optional. If you do not specify subnet
IDs, your EC2 instances are created in a default subnet that is
selected by Amazon EC2. If you specify subnet IDs, the VPC must have
"Auto Assign Public IP" enabled.

For more information about supported Amazon EC2 platforms, see
Supported Platforms.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServer in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

