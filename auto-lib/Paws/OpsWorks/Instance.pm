package Paws::OpsWorks::Instance;
  use Moose;
  has AgentVersion => (is => 'ro', isa => 'Str');
  has AmiId => (is => 'ro', isa => 'Str');
  has Architecture => (is => 'ro', isa => 'Str');
  has Arn => (is => 'ro', isa => 'Str');
  has AutoScalingType => (is => 'ro', isa => 'Str');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::BlockDeviceMapping]');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EbsOptimized => (is => 'ro', isa => 'Bool');
  has Ec2InstanceId => (is => 'ro', isa => 'Str');
  has EcsClusterArn => (is => 'ro', isa => 'Str');
  has EcsContainerInstanceArn => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Hostname => (is => 'ro', isa => 'Str');
  has InfrastructureClass => (is => 'ro', isa => 'Str');
  has InstallUpdatesOnBoot => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str');
  has InstanceProfileArn => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LastServiceErrorId => (is => 'ro', isa => 'Str');
  has LayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Os => (is => 'ro', isa => 'Str');
  has Platform => (is => 'ro', isa => 'Str');
  has PrivateDns => (is => 'ro', isa => 'Str');
  has PrivateIp => (is => 'ro', isa => 'Str');
  has PublicDns => (is => 'ro', isa => 'Str');
  has PublicIp => (is => 'ro', isa => 'Str');
  has RegisteredBy => (is => 'ro', isa => 'Str');
  has ReportedAgentVersion => (is => 'ro', isa => 'Str');
  has ReportedOs => (is => 'ro', isa => 'Paws::OpsWorks::ReportedOs');
  has RootDeviceType => (is => 'ro', isa => 'Str');
  has RootDeviceVolumeId => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SshHostDsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshHostRsaKeyFingerprint => (is => 'ro', isa => 'Str');
  has SshKeyName => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tenancy => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Instance object:

  $service_obj->Method(Att1 => { AgentVersion => $value, ..., VirtualizationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentVersion

=head1 DESCRIPTION

Describes an instance.

=head1 ATTRIBUTES


=head2 AgentVersion => Str

  The agent version. This parameter is set to C<INHERIT> if the instance
inherits the default stack setting or to a a version number for a fixed
agent version.


=head2 AmiId => Str

  A custom AMI ID to be used to create the instance. For more
information, see Instances
(http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-custom-ami.html)


=head2 Architecture => Str

  The instance architecture: "i386" or "x86_64".


=head2 Arn => Str

  The instance's Amazon Resource Number (ARN).


=head2 AutoScalingType => Str

  For load-based or time-based instances, the type.


=head2 AvailabilityZone => Str

  The instance Availability Zone. For more information, see Regions and
Endpoints (http://docs.aws.amazon.com/general/latest/gr/rande.html).


=head2 BlockDeviceMappings => ArrayRef[L<Paws::OpsWorks::BlockDeviceMapping>]

  An array of C<BlockDeviceMapping> objects that specify the instance's
block device mappings.


=head2 CreatedAt => Str

  The time that the instance was created.


=head2 EbsOptimized => Bool

  Whether this is an Amazon EBS-optimized instance.


=head2 Ec2InstanceId => Str

  The ID of the associated Amazon EC2 instance.


=head2 EcsClusterArn => Str

  For container instances, the Amazon ECS cluster's ARN.


=head2 EcsContainerInstanceArn => Str

  For container instances, the instance's ARN.


=head2 ElasticIp => Str

  The instance Elastic IP address
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).


=head2 Hostname => Str

  The instance host name.


=head2 InfrastructureClass => Str

  For registered instances, the infrastructure class: C<ec2> or
C<on-premises>.


=head2 InstallUpdatesOnBoot => Bool

  Whether to install operating system and package updates when the
instance boots. The default value is C<true>. If this value is set to
C<false>, you must then update your instances manually by using
CreateDeployment to run the C<update_dependencies> stack command or by
manually running C<yum> (Amazon Linux) or C<apt-get> (Ubuntu) on the
instances.

We strongly recommend using the default value of C<true>, to ensure
that your instances have the latest security updates.


=head2 InstanceId => Str

  The instance ID.


=head2 InstanceProfileArn => Str

  The ARN of the instance's IAM profile. For more information about IAM
ARNs, see Using Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html).


=head2 InstanceType => Str

  The instance type, such as C<t2.micro>.


=head2 LastServiceErrorId => Str

  The ID of the last service error. For more information, call
DescribeServiceErrors.


=head2 LayerIds => ArrayRef[Str|Undef]

  An array containing the instance layer IDs.


=head2 Os => Str

  The instance's operating system.


=head2 Platform => Str

  The instance's platform.


=head2 PrivateDns => Str

  The instance's private DNS name.


=head2 PrivateIp => Str

  The instance's private IP address.


=head2 PublicDns => Str

  The instance public DNS name.


=head2 PublicIp => Str

  The instance public IP address.


=head2 RegisteredBy => Str

  For registered instances, who performed the registration.


=head2 ReportedAgentVersion => Str

  The instance's reported AWS OpsWorks Stacks agent version.


=head2 ReportedOs => L<Paws::OpsWorks::ReportedOs>

  For registered instances, the reported operating system.


=head2 RootDeviceType => Str

  The instance's root device type. For more information, see Storage for
the Root Device
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ComponentsAMIs.html#storage-for-the-root-device).


=head2 RootDeviceVolumeId => Str

  The root device volume ID.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  An array containing the instance security group IDs.


=head2 SshHostDsaKeyFingerprint => Str

  The SSH key's Deep Security Agent (DSA) fingerprint.


=head2 SshHostRsaKeyFingerprint => Str

  The SSH key's RSA fingerprint.


=head2 SshKeyName => Str

  The instance's Amazon EC2 key-pair name.


=head2 StackId => Str

  The stack ID.


=head2 Status => Str

  The instance status:

=over

=item *

C<booting>

=item *

C<connection_lost>

=item *

C<online>

=item *

C<pending>

=item *

C<rebooting>

=item *

C<requested>

=item *

C<running_setup>

=item *

C<setup_failed>

=item *

C<shutting_down>

=item *

C<start_failed>

=item *

C<stop_failed>

=item *

C<stopped>

=item *

C<stopping>

=item *

C<terminated>

=item *

C<terminating>

=back



=head2 SubnetId => Str

  The instance's subnet ID; applicable only if the stack is running in a
VPC.


=head2 Tenancy => Str

  The instance's tenancy option, such as C<dedicated> or C<host>.


=head2 VirtualizationType => Str

  The instance's virtualization type: C<paravirtual> or C<hvm>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

