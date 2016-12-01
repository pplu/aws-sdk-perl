package Paws::EMR::JobFlowInstancesConfig;
  use Moose;
  has AdditionalMasterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalSlaveSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has EmrManagedMasterSecurityGroup => (is => 'ro', isa => 'Str');
  has EmrManagedSlaveSecurityGroup => (is => 'ro', isa => 'Str');
  has HadoopVersion => (is => 'ro', isa => 'Str');
  has InstanceCount => (is => 'ro', isa => 'Int');
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

A description of the Amazon EC2 instance running the job flow. A valid
JobFlowInstancesConfig must contain at least InstanceGroups, which is
the recommended configuration. However, a valid alternative is to have
MasterInstanceType, SlaveInstanceType, and InstanceCount (all three
must be present).

=head1 ATTRIBUTES


=head2 AdditionalMasterSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the master node.


=head2 AdditionalSlaveSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the slave nodes.


=head2 Ec2KeyName => Str

  The name of the EC2 key pair that can be used to ssh to the master node
as the user called "hadoop."


=head2 Ec2SubnetId => Str

  To launch the job flow in Amazon Virtual Private Cloud (Amazon VPC),
set this parameter to the identifier of the Amazon VPC subnet where you
want the job flow to launch. If you do not specify this value, the job
flow is launched in the normal Amazon Web Services cloud, outside of an
Amazon VPC.

Amazon VPC currently does not support cluster compute quadruple extra
large (cc1.4xlarge) instances. Thus you cannot specify the cc1.4xlarge
instance type for nodes of a job flow launched in a Amazon VPC.


=head2 EmrManagedMasterSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the master node.


=head2 EmrManagedSlaveSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the slave nodes.


=head2 HadoopVersion => Str

  The Hadoop version for the job flow. Valid inputs are "0.18"
(deprecated), "0.20" (deprecated), "0.20.205" (deprecated), "1.0.3",
"2.2.0", or "2.4.0". If you do not set this value, the default of 0.18
is used, unless the AmiVersion parameter is set in the RunJobFlow call,
in which case the default version of Hadoop for that AMI version is
used.


=head2 InstanceCount => Int

  The number of EC2 instances used to execute the job flow.


=head2 InstanceGroups => ArrayRef[L<Paws::EMR::InstanceGroupConfig>]

  Configuration for the job flow's instance groups.


=head2 KeepJobFlowAliveWhenNoSteps => Bool

  Specifies whether the job flow should be kept alive after completing
all steps.


=head2 MasterInstanceType => Str

  The EC2 instance type of the master node.


=head2 Placement => L<Paws::EMR::PlacementType>

  The Availability Zone the job flow will run in.


=head2 ServiceAccessSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the Amazon EMR
service to access clusters in VPC private subnets.


=head2 SlaveInstanceType => Str

  The EC2 instance type of the slave nodes.


=head2 TerminationProtected => Bool

  Specifies whether to lock the job flow to prevent the Amazon EC2
instances from being terminated by API call, user intervention, or in
the event of a job flow error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

