package Paws::EMR::JobFlowDetail;
  use Moose;
  has AmiVersion => (is => 'ro', isa => 'Str');
  has AutoScalingRole => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::BootstrapActionDetail]');
  has ExecutionStatusDetail => (is => 'ro', isa => 'Paws::EMR::JobFlowExecutionStatusDetail', required => 1);
  has Instances => (is => 'ro', isa => 'Paws::EMR::JobFlowInstancesDetail', required => 1);
  has JobFlowId => (is => 'ro', isa => 'Str', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ScaleDownBehavior => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepDetail]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::JobFlowDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::JobFlowDetail object:

  $service_obj->Method(Att1 => { AmiVersion => $value, ..., VisibleToAllUsers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::JobFlowDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiVersion

=head1 DESCRIPTION

A description of a job flow.

=head1 ATTRIBUTES


=head2 AmiVersion => Str

  The version of the AMI used to initialize Amazon EC2 instances in the
job flow. For a list of AMI versions currently supported by Amazon EMR,
see AMI Versions Supported in EMR in the I<Amazon EMR Developer Guide.>


=head2 AutoScalingRole => Str

  An IAM role for automatic scaling policies. The default role is
C<EMR_AutoScaling_DefaultRole>. The IAM role provides a way for the
automatic scaling feature to get the required permissions it needs to
launch and terminate EC2 instances in an instance group.


=head2 BootstrapActions => ArrayRef[L<Paws::EMR::BootstrapActionDetail>]

  A list of the bootstrap actions run by the job flow.


=head2 B<REQUIRED> ExecutionStatusDetail => L<Paws::EMR::JobFlowExecutionStatusDetail>

  Describes the execution status of the job flow.


=head2 B<REQUIRED> Instances => L<Paws::EMR::JobFlowInstancesDetail>

  Describes the Amazon EC2 instances of the job flow.


=head2 B<REQUIRED> JobFlowId => Str

  The job flow identifier.


=head2 JobFlowRole => Str

  The IAM role that was specified when the job flow was launched. The EC2
instances of the job flow assume this role.


=head2 LogUri => Str

  The location in Amazon S3 where log files for the job are stored.


=head2 B<REQUIRED> Name => Str

  The name of the job flow.


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
C<TERMINATE_AT_TASK_COMPLETION> available only in Amazon EMR version
4.1.0 and later, and is the default for versions of Amazon EMR earlier
than 5.1.0.


=head2 ServiceRole => Str

  The IAM role that will be assumed by the Amazon EMR service to access
AWS resources on your behalf.


=head2 Steps => ArrayRef[L<Paws::EMR::StepDetail>]

  A list of steps run by the job flow.


=head2 SupportedProducts => ArrayRef[Str|Undef]

  A list of strings set by third party software when the job flow is
launched. If you are not using third party software to manage the job
flow this value is empty.


=head2 VisibleToAllUsers => Bool

  Specifies whether the job flow is visible to all IAM users of the AWS
account associated with the job flow. If this value is set to C<true>,
all IAM users of that AWS account can view and (if they have the proper
policy permissions set) manage the job flow. If it is set to C<false>,
only the IAM user that created the job flow can view and manage it.
This value can be changed using the SetVisibleToAllUsers action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

