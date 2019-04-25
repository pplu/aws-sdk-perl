
package Paws::OpsWorks::UpdateInstance;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Os => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::UpdateInstance - Arguments for method UpdateInstance on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstance on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method UpdateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstance.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    $opsworks->UpdateInstance(
      InstanceId           => 'MyString',
      AgentVersion         => 'MyString',             # OPTIONAL
      AmiId                => 'MyString',             # OPTIONAL
      Architecture         => 'x86_64',               # OPTIONAL
      AutoScalingType      => 'load',                 # OPTIONAL
      EbsOptimized         => 1,                      # OPTIONAL
      Hostname             => 'MyString',             # OPTIONAL
      InstallUpdatesOnBoot => 1,                      # OPTIONAL
      InstanceType         => 'MyString',             # OPTIONAL
      LayerIds             => [ 'MyString', ... ],    # OPTIONAL
      Os                   => 'MyString',             # OPTIONAL
      SshKeyName           => 'MyString',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/UpdateInstance>

=head1 ATTRIBUTES


=head2 AgentVersion => Str

The default AWS OpsWorks Stacks agent version. You have the following
options:

=over

=item *

C<INHERIT> - Use the stack's default agent version setting.

=item *

I<version_number> - Use the specified agent version. This value
overrides the stack's default setting. To update the agent version, you
must edit the instance configuration and specify a new version. AWS
OpsWorks Stacks then automatically installs that version on the
instance.

=back

The default setting is C<INHERIT>. To specify an agent version, you
must use the complete version number, not the abbreviated number shown
on the console. For a list of available agent version numbers, call
DescribeAgentVersions.

AgentVersion cannot be set to Chef 12.2.



=head2 AmiId => Str

The ID of the AMI that was used to create the instance. The value of
this parameter must be the same AMI ID that the instance is already
using. You cannot apply a new AMI to an instance by running
UpdateInstance. UpdateInstance does not work on instances that are
using custom AMIs.



=head2 Architecture => Str

The instance architecture. Instance types do not necessarily support
both architectures. For a list of the architectures that are supported
by the different instance types, see Instance Families and Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

Valid values are: C<"x86_64">, C<"i386">

=head2 AutoScalingType => Str

For load-based or time-based instances, the type. Windows stacks can
use only time-based instances.

Valid values are: C<"load">, C<"timer">

=head2 EbsOptimized => Bool

This property cannot be updated.



=head2 Hostname => Str

The instance host name.



=head2 InstallUpdatesOnBoot => Bool

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or by manually running C<yum>
(Amazon Linux) or C<apt-get> (Ubuntu) on the instances.

We strongly recommend using the default value of C<true>, to ensure
that your instances have the latest security updates.



=head2 B<REQUIRED> InstanceId => Str

The instance ID.



=head2 InstanceType => Str

The instance type, such as C<t2.micro>. For a list of supported
instance types, open the stack in the console, choose B<Instances>, and
choose B<+ Instance>. The B<Size> list contains the currently supported
types. For more information, see Instance Families and Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
The parameter values that you use to specify the various types are in
the B<API Name> column of the B<Available Instance Types> table.



=head2 LayerIds => ArrayRef[Str|Undef]

The instance's layer IDs.



=head2 Os => Str

The instance's operating system, which must be set to one of the
following. You cannot update an instance that is using a custom AMI.

=over

=item *

A supported Linux operating system: An Amazon Linux version, such as
C<Amazon Linux 2017.09>, C<Amazon Linux 2017.03>, C<Amazon Linux
2016.09>, C<Amazon Linux 2016.03>, C<Amazon Linux 2015.09>, or C<Amazon
Linux 2015.03>.

=item *

A supported Ubuntu operating system, such as C<Ubuntu 16.04 LTS>,
C<Ubuntu 14.04 LTS>, or C<Ubuntu 12.04 LTS>.

=item *

C<CentOS Linux 7>

=item *

C<Red Hat Enterprise Linux 7>

=item *

A supported Windows operating system, such as C<Microsoft Windows
Server 2012 R2 Base>, C<Microsoft Windows Server 2012 R2 with SQL
Server Express>, C<Microsoft Windows Server 2012 R2 with SQL Server
Standard>, or C<Microsoft Windows Server 2012 R2 with SQL Server Web>.

=back

For more information about supported operating systems, see AWS
OpsWorks Stacks Operating Systems
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

The default option is the current Amazon Linux version. If you set this
parameter to C<Custom>, you must use the AmiId parameter to specify the
custom AMI that you want to use. For more information about supported
operating systems, see Operating Systems
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).
For more information about how to use custom AMIs with OpsWorks, see
Using Custom AMIs
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

You can specify a different Linux operating system for the updated
stack, but you cannot change from Linux to Windows or Windows to Linux.



=head2 SshKeyName => Str

The instance's Amazon EC2 key name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstance in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

