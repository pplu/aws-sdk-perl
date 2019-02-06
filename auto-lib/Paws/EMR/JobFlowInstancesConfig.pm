package Paws::EMR::JobFlowInstancesConfig;
  use Moose;
  has AdditionalMasterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalSlaveSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has Ec2SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EmrManagedMasterSecurityGroup => (is => 'ro', isa => 'Str');
  has EmrManagedSlaveSecurityGroup => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has InstanceFleets => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceFleetConfig]');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::EMR::InstanceGroupConfig]');
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => 'Bool');
  has MasterInstanceType => (is => 'ro', isa => 'Str');
  has Placement => (is => 'ro', isa => 'Paws::EMR::PlacementType');
  has ServiceAccessSecurityGroup => (is => 'ro', isa => 'Str');
  has SlaveInstanceType => (is => 'ro', isa => 'Str');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::JobFlowInstancesConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::JobFlowInstancesConfig object:

  $service_obj->Method(Att1 => { AdditionalMasterSecurityGroups => $value, ..., TerminationProtected => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::JobFlowInstancesConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalMasterSecurityGroups

=head1 DESCRIPTION

A description of the Amazon EC2 instance on which the cluster (job
flow) runs. A valid JobFlowInstancesConfig must contain either
InstanceGroups or InstanceFleets, which is the recommended
configuration. They cannot be used together. You may also have
MasterInstanceType, SlaveInstanceType, and InstanceCount (all three
must be present), but we don't recommend this configuration.

=head1 ATTRIBUTES


=head2 AdditionalMasterSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the master node.


=head2 AdditionalSlaveSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the core and
task nodes.


=head2 Ec2KeyName => Str

  The name of the EC2 key pair that can be used to ssh to the master node
as the user called "hadoop."


=head2 Ec2SubnetId => Str

  Applies to clusters that use the uniform instance group configuration.
To launch the cluster in Amazon Virtual Private Cloud (Amazon VPC), set
this parameter to the identifier of the Amazon VPC subnet where you
want the cluster to launch. If you do not specify this value, the
cluster launches in the normal Amazon Web Services cloud, outside of an
Amazon VPC, if the account launching the cluster supports EC2 Classic
networks in the region where the cluster launches.

Amazon VPC currently does not support cluster compute quadruple extra
large (cc1.4xlarge) instances. Thus you cannot specify the cc1.4xlarge
instance type for clusters launched in an Amazon VPC.


=head2 Ec2SubnetIds => ArrayRef[Str|Undef]

  Applies to clusters that use the instance fleet configuration. When
multiple EC2 subnet IDs are specified, Amazon EMR evaluates them and
launches instances in the optimal subnet.

The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.


=head2 EmrManagedMasterSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the master node.


=head2 EmrManagedSlaveSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the core and task
nodes.


=head2 HadoopVersion => Str

  Applies only to Amazon EMR release versions earlier than 4.0. The
Hadoop version for the cluster. Valid inputs are "0.18" (deprecated),
"0.20" (deprecated), "0.20.205" (deprecated), "1.0.3", "2.2.0", or
"2.4.0". If you do not set this value, the default of 0.18 is used,
unless the C<AmiVersion> parameter is set in the RunJobFlow call, in
which case the default version of Hadoop for that AMI version is used.


=head2 InstanceCount => Int

  The number of EC2 instances in the cluster.


=head2 InstanceFleets => ArrayRef[L<Paws::EMR::InstanceFleetConfig>]

  The instance fleet configuration is available only in Amazon EMR
versions 4.8.0 and later, excluding 5.0.x versions.

Describes the EC2 instances and instance configurations for clusters
that use the instance fleet configuration.


=head2 InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupConfig>]

  Configuration for the instance groups in a cluster.


=head2 KeepJobFlowAliveWhenNoSteps => Bool

  Specifies whether the cluster should remain available after completing
all steps.


=head2 MasterInstanceType => Str

  The EC2 instance type of the master node.


=head2 Placement => L<Paws::EMR::PlacementType>

  The Availability Zone in which the cluster runs.


=head2 ServiceAccessSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the Amazon EMR
service to access clusters in VPC private subnets.


=head2 SlaveInstanceType => Str

  The EC2 instance type of the core and task nodes.


=head2 TerminationProtected => Bool

  Specifies whether to lock the cluster to prevent the Amazon EC2
instances from being terminated by API call, user intervention, or in
the event of a job-flow error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

