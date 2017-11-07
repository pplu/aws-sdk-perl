
package Paws::EMR::RunJobFlow;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Application]');
  has AutoScalingRole => (is => 'ro', isa => 'Str');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::BootstrapActionConfig]');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has CustomAmiId => (is => 'ro', isa => 'Str');
  has EbsRootVolumeSize => (is => 'ro', isa => 'Int');
  has Instances => (is => 'ro', isa => 'Paws::EMR::JobFlowInstancesConfig', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewSupportedProducts => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SupportedProductConfig]');
  has ReleaseLabel => (is => 'ro', isa => 'Str');
  has RepoUpgradeOnBoot => (is => 'ro', isa => 'Str');
  has ScaleDownBehavior => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepConfig]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunJobFlow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RunJobFlowOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RunJobFlow - Arguments for method RunJobFlow on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunJobFlow on the 
Amazon Elastic MapReduce service. Use the attributes of this class
as arguments to method RunJobFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunJobFlow.

As an example:

  $service_obj->RunJobFlow(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

A JSON string for selecting additional features.



=head2 AmiVersion => Str

For Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR releases 4.0
and later, the Linux AMI is determined by the C<ReleaseLabel> specified
or by C<CustomAmiID>. The version of the Amazon Machine Image (AMI) to
use when launching Amazon EC2 instances in the job flow. For details
about the AMI versions currently supported in EMR version 3.x and 2.x,
see AMI Versions Supported in EMR in the I<Amazon EMR Developer Guide>.

If the AMI supports multiple versions of Hadoop (for example, AMI 1.0
supports both Hadoop 0.18 and 0.20), you can use the
JobFlowInstancesConfig C<HadoopVersion> parameter to modify the version
of Hadoop from the defaults shown above.

Previously, the EMR AMI version API parameter options allowed you to
use latest for the latest AMI version rather than specify a numerical
value. Some regions no longer support this deprecated option as they
only have a newer release label version of EMR, which requires you to
specify an EMR release label release (EMR 4.x or later).



=head2 Applications => ArrayRef[L<Paws::EMR::Application>]

For Amazon EMR releases 4.0 and later. A list of applications for the
cluster. Valid values are: "Hadoop", "Hive", "Mahout", "Pig", and
"Spark." They are case insensitive.



=head2 AutoScalingRole => Str

An IAM role for automatic scaling policies. The default role is
C<EMR_AutoScaling_DefaultRole>. The IAM role provides permissions that
the automatic scaling feature requires to launch and terminate EC2
instances in an instance group.



=head2 BootstrapActions => ArrayRef[L<Paws::EMR::BootstrapActionConfig>]

A list of bootstrap actions to run before Hadoop starts on the cluster
nodes.



=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

For Amazon EMR releases 4.0 and later. The list of configurations
supplied for the EMR cluster you are creating.



=head2 CustomAmiId => Str

Available only in Amazon EMR version 5.7.0 and later. The ID of a
custom Amazon EBS-backed Linux AMI. If specified, Amazon EMR uses this
AMI when it launches cluster EC2 instances. For more information about
custom AMIs in Amazon EMR, see Using a Custom AMI in the I<Amazon EMR
Management Guide>. If omitted, the cluster uses the base Linux AMI for
the C<ReleaseLabel> specified. For Amazon EMR versions 2.x and 3.x, use
C<AmiVersion> instead.

For information about creating a custom AMI, see Creating an Amazon
EBS-Backed Linux AMI in the I<Amazon Elastic Compute Cloud User Guide
for Linux Instances>. For information about finding an AMI ID, see
Finding a Linux AMI.



=head2 EbsRootVolumeSize => Int

The size, in GiB, of the EBS root device volume of the Linux AMI that
is used for each EC2 instance. Available in Amazon EMR version 4.x and
later.



=head2 B<REQUIRED> Instances => L<Paws::EMR::JobFlowInstancesConfig>

A specification of the number and type of Amazon EC2 instances.



=head2 JobFlowRole => Str

Also called instance profile and EC2 role. An IAM role for an EMR
cluster. The EC2 instances of the cluster assume this role. The default
role is C<EMR_EC2_DefaultRole>. In order to use the default role, you
must have already created it using the CLI or console.



=head2 LogUri => Str

The location in Amazon S3 to write the log files of the job flow. If a
value is not provided, logs are not created.



=head2 B<REQUIRED> Name => Str

The name of the job flow.



=head2 NewSupportedProducts => ArrayRef[L<Paws::EMR::SupportedProductConfig>]

For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
later, use Applications.

A list of strings that indicates third-party software to use with the
job flow that accepts a user argument list. EMR accepts and forwards
the argument list to the corresponding installation script as bootstrap
action arguments. For more information, see "Launch a Job Flow on the
MapR Distribution for Hadoop" in the Amazon EMR Developer Guide.
Supported values are:

=over

=item *

"mapr-m3" - launch the cluster using MapR M3 Edition.

=item *

"mapr-m5" - launch the cluster using MapR M5 Edition.

=item *

"mapr" with the user arguments specifying "--edition,m3" or
"--edition,m5" - launch the job flow using MapR M3 or M5 Edition
respectively.

=item *

"mapr-m7" - launch the cluster using MapR M7 Edition.

=item *

"hunk" - launch the cluster with the Hunk Big Data Analtics Platform.

=item *

"hue"- launch the cluster with Hue installed.

=item *

"spark" - launch the cluster with Apache Spark installed.

=item *

"ganglia" - launch the cluster with the Ganglia Monitoring System
installed.

=back




=head2 ReleaseLabel => Str

The release label for the Amazon EMR release. For Amazon EMR 3.x and
2.x AMIs, use C<AmiVersion> instead.



=head2 RepoUpgradeOnBoot => Str

Applies only when C<CustomAmiID> is used. Specifies which updates from
the Amazon Linux AMI package repositories to apply automatically when
the instance boots using the AMI. If omitted, the default is
C<SECURITY>, which indicates that only security updates are applied. If
C<NONE> is specified, no updates are applied, and all updates must be
applied manually.

Valid values are: C<"SECURITY">, C<"NONE">

=head2 ScaleDownBehavior => Str

Specifies the way that individual Amazon EC2 instances terminate when
an automatic scale-in activity occurs or an instance group is resized.
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

Valid values are: C<"TERMINATE_AT_INSTANCE_HOUR">, C<"TERMINATE_AT_TASK_COMPLETION">

=head2 SecurityConfiguration => Str

The name of a security configuration to apply to the cluster.



=head2 ServiceRole => Str

The IAM role that will be assumed by the Amazon EMR service to access
AWS resources on your behalf.



=head2 Steps => ArrayRef[L<Paws::EMR::StepConfig>]

A list of steps to run.



=head2 SupportedProducts => ArrayRef[Str|Undef]

For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
later, use Applications.

A list of strings that indicates third-party software to use. For more
information, see Use Third Party Applications with Amazon EMR.
Currently supported values are:

=over

=item *

"mapr-m3" - launch the job flow using MapR M3 Edition.

=item *

"mapr-m5" - launch the job flow using MapR M5 Edition.

=back




=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

A list of tags to associate with a cluster and propagate to Amazon EC2
instances.



=head2 VisibleToAllUsers => Bool

Whether the cluster is visible to all IAM users of the AWS account
associated with the cluster. If this value is set to C<true>, all IAM
users of that AWS account can view and (if they have the proper policy
permissions set) manage the cluster. If it is set to C<false>, only the
IAM user that created the cluster can view and manage it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunJobFlow in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

