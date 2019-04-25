
package Paws::OpsWorks::CreateInstance;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::BlockDeviceMapping]');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Hostname => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Os => (is => 'ro', isa => 'Str');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tenancy => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::CreateInstanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CreateInstance - Arguments for method CreateInstance on L<Paws::OpsWorks>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstance on the
L<AWS OpsWorks|Paws::OpsWorks> service. Use the attributes of this class
as arguments to method CreateInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstance.

=head1 SYNOPSIS

    my $opsworks = Paws->service('OpsWorks');
    my $CreateInstanceResult = $opsworks->CreateInstance(
      InstanceType        => 'MyString',
      LayerIds            => [ 'MyString', ... ],
      StackId             => 'MyString',
      AgentVersion        => 'MyString',            # OPTIONAL
      AmiId               => 'MyString',            # OPTIONAL
      Architecture        => 'x86_64',              # OPTIONAL
      AutoScalingType     => 'load',                # OPTIONAL
      AvailabilityZone    => 'MyString',            # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination => 1,               # OPTIONAL
            Iops                => 1,               # OPTIONAL
            SnapshotId          => 'MyString',
            VolumeSize          => 1,               # OPTIONAL
            VolumeType => 'gp2',    # values: gp2, io1, standard; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],        # OPTIONAL
      EbsOptimized         => 1,             # OPTIONAL
      Hostname             => 'MyString',    # OPTIONAL
      InstallUpdatesOnBoot => 1,             # OPTIONAL
      Os                   => 'MyString',    # OPTIONAL
      RootDeviceType       => 'ebs',         # OPTIONAL
      SshKeyName           => 'MyString',    # OPTIONAL
      SubnetId             => 'MyString',    # OPTIONAL
      Tenancy              => 'MyString',    # OPTIONAL
      VirtualizationType   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $InstanceId = $CreateInstanceResult->InstanceId;

    # Returns a L<Paws::OpsWorks::CreateInstanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/opsworks/CreateInstance>

=head1 ATTRIBUTES


=head2 AgentVersion => Str

The default AWS OpsWorks Stacks agent version. You have the following
options:

=over

=item *

C<INHERIT> - Use the stack's default agent version setting.

=item *

I<version_number> - Use the specified agent version. This value
overrides the stack's default setting. To update the agent version,
edit the instance configuration and specify a new version. AWS OpsWorks
Stacks then automatically installs that version on the instance.

=back

The default setting is C<INHERIT>. To specify an agent version, you
must use the complete version number, not the abbreviated number shown
on the console. For a list of available agent version numbers, call
DescribeAgentVersions. AgentVersion cannot be set to Chef 12.2.



=head2 AmiId => Str

A custom AMI ID to be used to create the instance. The AMI should be
based on one of the supported operating systems. For more information,
see Using Custom AMIs
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).

If you specify a custom AMI, you must set C<Os> to C<Custom>.



=head2 Architecture => Str

The instance architecture. The default option is C<x86_64>. Instance
types do not necessarily support both architectures. For a list of the
architectures that are supported by the different instance types, see
Instance Families and Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).

Valid values are: C<"x86_64">, C<"i386">

=head2 AutoScalingType => Str

For load-based or time-based instances, the type. Windows stacks can
use only time-based instances.

Valid values are: C<"load">, C<"timer">

=head2 AvailabilityZone => Str

The instance Availability Zone. For more information, see Regions and
Endpoints (http://docs.aws.amazon.com/general/latest/gr/rande.html).



=head2 BlockDeviceMappings => ArrayRef[L<Paws::OpsWorks::BlockDeviceMapping>]

An array of C<BlockDeviceMapping> objects that specify the instance's
block devices. For more information, see Block Device Mapping
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/block-device-mapping-concepts.html).
Note that block device mappings are not supported for custom AMIs.



=head2 EbsOptimized => Bool

Whether to create an Amazon EBS-optimized instance.



=head2 Hostname => Str

The instance host name.



=head2 InstallUpdatesOnBoot => Bool

Whether to install operating system and package updates when the
instance boots. The default value is C<true>. To control when updates
are installed, set this value to C<false>. You must then update your
instances manually by using CreateDeployment to run the
C<update_dependencies> stack command or by manually running C<yum>
(Amazon Linux) or C<apt-get> (Ubuntu) on the instances.

We strongly recommend using the default value of C<true> to ensure that
your instances have the latest security updates.



=head2 B<REQUIRED> InstanceType => Str

The instance type, such as C<t2.micro>. For a list of supported
instance types, open the stack in the console, choose B<Instances>, and
choose B<+ Instance>. The B<Size> list contains the currently supported
types. For more information, see Instance Families and Types
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html).
The parameter values that you use to specify the various types are in
the B<API Name> column of the B<Available Instance Types> table.



=head2 B<REQUIRED> LayerIds => ArrayRef[Str|Undef]

An array that contains the instance's layer IDs.



=head2 Os => Str

The instance's operating system, which must be set to one of the
following.

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

=item *

A custom AMI: C<Custom>.

=back

For more information about the supported operating systems, see AWS
OpsWorks Stacks Operating Systems
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html).

The default option is the current Amazon Linux version. If you set this
parameter to C<Custom>, you must use the CreateInstance action's AmiId
parameter to specify the custom AMI that you want to use. Block device
mappings are not supported if the value is C<Custom>. For more
information about supported operating systems, see Operating Systems
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-os.html)For
more information about how to use custom AMIs with AWS OpsWorks Stacks,
see Using Custom AMIs
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html).



=head2 RootDeviceType => Str

The instance root device type. For more information, see Storage for
the Root Device
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).

Valid values are: C<"ebs">, C<"instance-store">

=head2 SshKeyName => Str

The instance's Amazon EC2 key-pair name.



=head2 B<REQUIRED> StackId => Str

The stack ID.



=head2 SubnetId => Str

The ID of the instance's subnet. If the stack is running in a VPC, you
can use this parameter to override the stack's default subnet ID value
and direct AWS OpsWorks Stacks to launch the instance in a different
subnet.



=head2 Tenancy => Str

The instance's tenancy option. The default option is no tenancy, or if
the instance is running in a VPC, inherit tenancy settings from the
VPC. The following are valid values for this parameter: C<dedicated>,
C<default>, or C<host>. Because there are costs associated with changes
in tenancy options, we recommend that you research tenancy options
before choosing them for your instances. For more information about
dedicated hosts, see Dedicated Hosts Overview
(http://aws.amazon.com/ec2/dedicated-hosts/) and Amazon EC2 Dedicated
Hosts (http://aws.amazon.com/ec2/dedicated-hosts/). For more
information about dedicated instances, see Dedicated Instances
(http://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/dedicated-instance.html)
and Amazon EC2 Dedicated Instances
(http://aws.amazon.com/ec2/purchasing-options/dedicated-instances/).



=head2 VirtualizationType => Str

The instance's virtualization type, C<paravirtual> or C<hvm>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstance in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

