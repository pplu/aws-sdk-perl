
package Paws::OpsWorksCM::CreateServer;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has BackupId => (is => 'ro', isa => 'Str');
  has BackupRetentionCount => (is => 'ro', isa => 'Int');
  has DisableAutomatedBackup => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has EngineModel => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
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

Paws::OpsWorksCM::CreateServer - Arguments for method CreateServer on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServer on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method CreateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServer.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $CreateServerResponse = $opsworks -cm->CreateServer(
      InstanceProfileArn       => 'MyInstanceProfileArn',
      InstanceType             => 'MyString',
      ServerName               => 'MyServerName',
      ServiceRoleArn           => 'MyServiceRoleArn',
      AssociatePublicIpAddress => 1,                        # OPTIONAL
      BackupId                 => 'MyBackupId',             # OPTIONAL
      BackupRetentionCount     => 1,                        # OPTIONAL
      DisableAutomatedBackup   => 1,                        # OPTIONAL
      Engine                   => 'MyString',               # OPTIONAL
      EngineAttributes         => [
        {
          Name  => 'MyEngineAttributeName',                 # OPTIONAL
          Value => 'MyEngineAttributeValue',                # OPTIONAL
        },
        ...
      ],                                                    # OPTIONAL
      EngineModel                => 'MyString',                  # OPTIONAL
      EngineVersion              => 'MyString',                  # OPTIONAL
      KeyPair                    => 'MyKeyPair',                 # OPTIONAL
      PreferredBackupWindow      => 'MyTimeWindowDefinition',    # OPTIONAL
      PreferredMaintenanceWindow => 'MyTimeWindowDefinition',    # OPTIONAL
      SecurityGroupIds           => [ 'MyString', ... ],         # OPTIONAL
      SubnetIds                  => [ 'MyString', ... ],         # OPTIONAL
    );

    # Results:
    my $Server = $CreateServerResponse->Server;

    # Returns a L<Paws::OpsWorksCM::CreateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_CreateServer.html>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

Associate a public IP address with a server that you are launching.
Valid values are C<true> or C<false>. The default value is C<true>.



=head2 BackupId => Str

If you specify this field, AWS OpsWorks CM creates the server by using
the backup represented by BackupId.



=head2 BackupRetentionCount => Int

The number of automated backups that you want to keep. Whenever a new
backup is created, AWS OpsWorks CM deletes the oldest backups if this
number is exceeded. The default value is C<1>.



=head2 DisableAutomatedBackup => Bool

Enable or disable scheduled backups. Valid values are C<true> or
C<false>. The default value is C<true>.



=head2 Engine => Str

The configuration management engine to use. Valid values include
C<Chef> and C<Puppet>.



=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Optional engine attributes on a specified server.

B<Attributes accepted in a Chef createServer request:>

=over

=item *

C<CHEF_PIVOTAL_KEY>: A base64-encoded RSA private key that is not
stored by AWS OpsWorks for Chef Automate. This private key is required
to access the Chef API. When no CHEF_PIVOTAL_KEY is set, one is
generated and returned in the response.

=item *

C<CHEF_DELIVERY_ADMIN_PASSWORD>: The password for the administrative
user in the Chef Automate GUI. The password length is a minimum of
eight characters, and a maximum of 32. The password can contain
letters, numbers, and special characters (!/@#$%^&+=_). The password
must contain at least one lower case letter, one upper case letter, one
number, and one special character. When no CHEF_DELIVERY_ADMIN_PASSWORD
is set, one is generated and returned in the response.

=back

B<Attributes accepted in a Puppet createServer request:>

=over

=item *

C<PUPPET_ADMIN_PASSWORD>: To work with the Puppet Enterprise console, a
password must use ASCII characters.

=back




=head2 EngineModel => Str

The engine model of the server. Valid values in this release include
C<Monolithic> for Puppet and C<Single> for Chef.



=head2 EngineVersion => Str

The major release version of the engine that you want to use. For a
Chef server, the valid value for EngineVersion is currently C<12>. For
a Puppet server, the valid value is C<2017>.



=head2 B<REQUIRED> InstanceProfileArn => Str

The ARN of the instance profile that your Amazon EC2 instances use.
Although the AWS OpsWorks console typically creates the instance
profile for you, if you are using API commands instead, run the
service-role-creation.yaml AWS CloudFormation template, located at
https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
This template creates a CloudFormation stack that includes the instance
profile you need.



=head2 B<REQUIRED> InstanceType => Str

The Amazon EC2 instance type to use. For example, C<m4.large>.
Recommended instance types include C<t2.medium> and greater, C<m4.*>,
or C<c4.xlarge> and greater.



=head2 KeyPair => Str

The Amazon EC2 key pair to set for the instance. This parameter is
optional; if desired, you may specify this parameter to connect to your
instances by using SSH.



=head2 PreferredBackupWindow => Str

The start time for a one-hour period during which AWS OpsWorks CM backs
up application-level data on your server if automated backups are
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
OpsWorks CM performs maintenance on the instance. Valid values must be
specified in the following format: C<DDD:HH:MM>. The specified time is
in coordinated universal time (UTC). The default value is a random
one-hour period on Tuesday, Wednesday, or Friday. See
C<TimeWindowDefinition> for more information.

B<Example:> C<Mon:08:00>, which represents a start time of every Monday
at 08:00 UTC. (8:00 a.m.)



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group IDs to attach to the Amazon EC2 instance. If
you add this parameter, the specified security groups must be within
the VPC that is specified by C<SubnetIds>.

If you do not specify this parameter, AWS OpsWorks CM creates one new
security group that uses TCP ports 22 and 443, open to 0.0.0.0/0
(everyone).



=head2 B<REQUIRED> ServerName => Str

The name of the server. The server name must be unique within your AWS
account, within each region. Server names must start with a letter;
then letters, numbers, or hyphens (-) are allowed, up to a maximum of
40 characters.



=head2 B<REQUIRED> ServiceRoleArn => Str

The service role that the AWS OpsWorks CM service backend uses to work
with your account. Although the AWS OpsWorks management console
typically creates the service role for you, if you are using the AWS
CLI or API commands, run the service-role-creation.yaml AWS
CloudFormation template, located at
https://s3.amazonaws.com/opsworks-cm-us-east-1-prod-default-assets/misc/opsworks-cm-roles.yaml.
This template creates a CloudFormation stack that includes the service
role and instance profile that you need.



=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of subnets in which to launch the server EC2 instance.

Amazon EC2-Classic customers: This field is required. All servers must
run within a VPC. The VPC must have "Auto Assign Public IP" enabled.

EC2-VPC customers: This field is optional. If you do not specify subnet
IDs, your EC2 instances are created in a default subnet that is
selected by Amazon EC2. If you specify subnet IDs, the VPC must have
"Auto Assign Public IP" enabled.

For more information about supported Amazon EC2 platforms, see
Supported Platforms
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServer in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

