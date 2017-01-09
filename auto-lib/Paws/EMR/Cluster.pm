package Paws::EMR::Cluster;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Application]');
  has AutoScalingRole => (is => 'ro', isa => 'Str');
  has AutoTerminate => (is => 'ro', isa => 'Bool');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Ec2InstanceAttributes => (is => 'ro', isa => 'Paws::EMR::Ec2InstanceAttributes');
  has Id => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has MasterPublicDnsName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has NormalizedInstanceHours => (is => 'ro', isa => 'Int');
  has ReleaseLabel => (is => 'ro', isa => 'Str');
  has RequestedAmiVersion => (is => 'ro', isa => 'Str');
  has RunningAmiVersion => (is => 'ro', isa => 'Str');
  has ScaleDownBehavior => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::EMR::ClusterStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has TerminationProtected => (is => 'ro', isa => 'Bool');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::Cluster object:

  $service_obj->Method(Att1 => { Applications => $value, ..., VisibleToAllUsers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->Applications

=head1 DESCRIPTION

The detailed description of the cluster.

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::EMR::Application>]

  The applications installed on this cluster.


=head2 AutoScalingRole => Str

  An IAM role for automatic scaling policies. The default role is
C<EMR_AutoScaling_DefaultRole>. The IAM role provides permissions that
the automatic scaling feature requires to launch and terminate EC2
instances in an instance group.


=head2 AutoTerminate => Bool

  Specifies whether the cluster should terminate after completing all
steps.


=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Amazon EMR releases 4.x or later.

The list of Configurations supplied to the EMR cluster.


=head2 Ec2InstanceAttributes => L<Paws::EMR::Ec2InstanceAttributes>

  Provides information about the EC2 instances in a cluster grouped by
category. For example, key name, subnet ID, IAM instance profile, and
so on.


=head2 Id => Str

  The unique identifier for the cluster.


=head2 LogUri => Str

  The path to the Amazon S3 location where logs for this cluster are
stored.


=head2 MasterPublicDnsName => Str

  The public DNS name of the master EC2 instance.


=head2 Name => Str

  The name of the cluster.


=head2 NormalizedInstanceHours => Int

  An approximation of the cost of the job flow, represented in
m1.small/hours. This value is incremented one time for every hour an
m1.small instance runs. Larger instances are weighted more, so an EC2
instance that is roughly four times more expensive would result in the
normalized instance hours being incremented by four. This result is
only an approximation and does not reflect the actual billing rate.


=head2 ReleaseLabel => Str

  The release label for the Amazon EMR release. For Amazon EMR 3.x and
2.x AMIs, use amiVersion instead instead of ReleaseLabel.


=head2 RequestedAmiVersion => Str

  The AMI version requested for this cluster.


=head2 RunningAmiVersion => Str

  The AMI version running on this cluster.


=head2 ScaleDownBehavior => Str

  The way that individual Amazon EC2 instances terminate when an
automatic scale-in activity occurs or an instance group is resized.
C<TERMINATE_AT_INSTANCE_HOUR> indicates that Amazon EMR terminates
nodes at the instance-hour boundary, regardless of when the request to
terminate the instance was submitted. This option is only available
with Amazon EMR 5.1.0 and later and is the default for clusters created
using that version. C<TERMINATE_AT_TASK_COMPLETION> indicates that
Amazon EMR blacklists and drains tasks from nodes before terminating
the Amazon EC2 instances, regardless of the instance-hour boundary.
With either behavior, Amazon EMR removes the least active nodes first
and blocks instance termination if it could lead to HDFS corruption.
C<TERMINATE_AT_TASK_COMPLETION> is available only in Amazon EMR version
4.1.0 and later, and is the default for versions of Amazon EMR earlier
than 5.1.0.


=head2 SecurityConfiguration => Str

  The name of the security configuration applied to the cluster.


=head2 ServiceRole => Str

  The IAM role that will be assumed by the Amazon EMR service to access
AWS resources on your behalf.


=head2 Status => L<Paws::EMR::ClusterStatus>

  The current status details about the cluster.


=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

  A list of tags associated with a cluster.


=head2 TerminationProtected => Bool

  Indicates whether Amazon EMR will lock the cluster to prevent the EC2
instances from being terminated by an API call or user intervention, or
in the event of a cluster error.


=head2 VisibleToAllUsers => Bool

  Indicates whether the job flow is visible to all IAM users of the AWS
account associated with the job flow. If this value is set to C<true>,
all IAM users of that AWS account can view and manage the job flow if
they have the proper policy permissions set. If this value is C<false>,
only the IAM user that created the cluster can view and manage it. This
value can be changed using the SetVisibleToAllUsers action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

