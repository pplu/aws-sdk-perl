package Paws::EMR::Ec2InstanceAttributes;
  use Moose;
  has AdditionalMasterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalSlaveSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Ec2AvailabilityZone => (is => 'ro', isa => 'Str');
  has Ec2KeyName => (is => 'ro', isa => 'Str');
  has Ec2SubnetId => (is => 'ro', isa => 'Str');
  has EmrManagedMasterSecurityGroup => (is => 'ro', isa => 'Str');
  has EmrManagedSlaveSecurityGroup => (is => 'ro', isa => 'Str');
  has IamInstanceProfile => (is => 'ro', isa => 'Str');
  has ServiceAccessSecurityGroup => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Ec2InstanceAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Ec2InstanceAttributes object:

  $service_obj->Method(Att1 => { AdditionalMasterSecurityGroups => $value, ..., ServiceAccessSecurityGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Ec2InstanceAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalMasterSecurityGroups

=head1 DESCRIPTION

Provides information about the EC2 instances in a cluster grouped by
category. For example, key name, subnet ID, IAM instance profile, and
so on.

=head1 ATTRIBUTES


=head2 AdditionalMasterSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the master node.


=head2 AdditionalSlaveSecurityGroups => ArrayRef[Str|Undef]

  A list of additional Amazon EC2 security group IDs for the slave nodes.


=head2 Ec2AvailabilityZone => Str

  The Availability Zone in which the cluster will run.


=head2 Ec2KeyName => Str

  The name of the Amazon EC2 key pair to use when connecting with SSH
into the master node as a user named "hadoop".


=head2 Ec2SubnetId => Str

  To launch the job flow in Amazon VPC, set this parameter to the
identifier of the Amazon VPC subnet where you want the job flow to
launch. If you do not specify this value, the job flow is launched in
the normal AWS cloud, outside of a VPC.

Amazon VPC currently does not support cluster compute quadruple extra
large (cc1.4xlarge) instances. Thus, you cannot specify the cc1.4xlarge
instance type for nodes of a job flow launched in a VPC.


=head2 EmrManagedMasterSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the master node.


=head2 EmrManagedSlaveSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the slave nodes.


=head2 IamInstanceProfile => Str

  The IAM role that was specified when the job flow was launched. The EC2
instances of the job flow assume this role.


=head2 ServiceAccessSecurityGroup => Str

  The identifier of the Amazon EC2 security group for the Amazon EMR
service to access clusters in VPC private subnets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

