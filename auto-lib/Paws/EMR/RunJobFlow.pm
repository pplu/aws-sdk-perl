
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
  has KerberosAttributes => (is => 'ro', isa => 'Paws::EMR::KerberosAttributes');
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
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method RunJobFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunJobFlow.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $RunJobFlowOutput = $elasticmapreduce->RunJobFlow(
      Instances => {
        AdditionalMasterSecurityGroups => [
          'MyXmlStringMaxLen256', ...    # max: 256; OPTIONAL
        ],                               # OPTIONAL
        AdditionalSlaveSecurityGroups => [
          'MyXmlStringMaxLen256', ...    # max: 256; OPTIONAL
        ],                               # OPTIONAL
        Ec2KeyName   => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        Ec2SubnetId  => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        Ec2SubnetIds => [
          'MyXmlStringMaxLen256', ...              # max: 256; OPTIONAL
        ],                                         # OPTIONAL
        EmrManagedMasterSecurityGroup =>
          'MyXmlStringMaxLen256',                  # max: 256; OPTIONAL
        EmrManagedSlaveSecurityGroup =>
          'MyXmlStringMaxLen256',                  # max: 256; OPTIONAL
        HadoopVersion  => 'MyXmlStringMaxLen256',  # max: 256; OPTIONAL
        InstanceCount  => 1,                       # OPTIONAL
        InstanceFleets => [
          {
            InstanceFleetType   => 'MASTER',       # values: MASTER, CORE, TASK
            InstanceTypeConfigs => [
              {
                InstanceType => 'MyInstanceType',          # min: 1, max: 256
                BidPrice     => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
                BidPriceAsPercentageOfOnDemandPrice => 1,
                Configurations                      => [
                  {
                    Classification => 'MyString',
                    Configurations => <ConfigurationList>,
                    Properties     => { 'MyString' => 'MyString', },  # OPTIONAL
                  },
                  ...
                ],                                                    # OPTIONAL
                EbsConfiguration => {
                  EbsBlockDeviceConfigs => [
                    {
                      VolumeSpecification => {
                        SizeInGB   => 1,                              # OPTIONAL
                        VolumeType => 'MyString',
                        Iops       => 1,                              # OPTIONAL
                      },
                      VolumesPerInstance => 1,                        # OPTIONAL
                    },
                    ...
                  ],                                                  # OPTIONAL
                  EbsOptimized => 1,                                  # OPTIONAL
                },    # OPTIONAL
                WeightedCapacity => 1,    # OPTIONAL
              },
              ...
            ],                            # OPTIONAL
            LaunchSpecifications => {
              SpotSpecification => {
                TimeoutAction => 'SWITCH_TO_ON_DEMAND'
                ,    # values: SWITCH_TO_ON_DEMAND, TERMINATE_CLUSTER
                TimeoutDurationMinutes => 1,    # OPTIONAL
                BlockDurationMinutes   => 1,    # OPTIONAL
              },

            },    # OPTIONAL
            Name => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
            TargetOnDemandCapacity => 1,       # OPTIONAL
            TargetSpotCapacity     => 1,       # OPTIONAL
          },
          ...
        ],                                     # OPTIONAL
        InstanceGroups => [
          {
            InstanceCount     => 1,                 # OPTIONAL
            InstanceRole      => 'MASTER',          # values: MASTER, CORE, TASK
            InstanceType      => 'MyInstanceType',  # min: 1, max: 256
            AutoScalingPolicy => {
              Constraints => {
                MaxCapacity => 1,                   # OPTIONAL
                MinCapacity => 1,                   # OPTIONAL

              },
              Rules => [
                {
                  Action => {
                    SimpleScalingPolicyConfiguration => {
                      ScalingAdjustment => 1,                     # OPTIONAL
                      AdjustmentType    => 'CHANGE_IN_CAPACITY'
                      , # values: CHANGE_IN_CAPACITY, PERCENT_CHANGE_IN_CAPACITY, EXACT_CAPACITY; OPTIONAL
                      CoolDown => 1,    # OPTIONAL
                    },
                    Market => 'ON_DEMAND',   # values: ON_DEMAND, SPOT; OPTIONAL
                  },
                  Name    => 'MyString',
                  Trigger => {
                    CloudWatchAlarmDefinition => {
                      ComparisonOperator => 'GREATER_THAN_OR_EQUAL'
                      , # values: GREATER_THAN_OR_EQUAL, GREATER_THAN, LESS_THAN, LESS_THAN_OR_EQUAL
                      MetricName => 'MyString',
                      Period     => 1,            # OPTIONAL
                      Threshold  => 1,
                      Dimensions => [
                        {
                          Key   => 'MyString',
                          Value => 'MyString',
                        },
                        ...
                      ],                          # OPTIONAL
                      EvaluationPeriods => 1,               # OPTIONAL
                      Namespace         => 'MyString',
                      Statistic         => 'SAMPLE_COUNT'
                      , # values: SAMPLE_COUNT, AVERAGE, SUM, MINIMUM, MAXIMUM; OPTIONAL
                      Unit => 'NONE'
                      , # values: NONE, SECONDS, MICRO_SECONDS, MILLI_SECONDS, BYTES, KILO_BYTES, MEGA_BYTES, GIGA_BYTES, TERA_BYTES, BITS, KILO_BITS, MEGA_BITS, GIGA_BITS, TERA_BITS, PERCENT, COUNT, BYTES_PER_SECOND, KILO_BYTES_PER_SECOND, MEGA_BYTES_PER_SECOND, GIGA_BYTES_PER_SECOND, TERA_BYTES_PER_SECOND, BITS_PER_SECOND, KILO_BITS_PER_SECOND, MEGA_BITS_PER_SECOND, GIGA_BITS_PER_SECOND, TERA_BITS_PER_SECOND, COUNT_PER_SECOND; OPTIONAL
                    },

                  },
                  Description => 'MyString',
                },
                ...
              ],

            },    # OPTIONAL
            BidPrice       => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
            Configurations => [
              {
                Classification => 'MyString',
                Configurations => <ConfigurationList>,
                Properties     => { 'MyString' => 'MyString', },    # OPTIONAL
              },
              ...
            ],                                                      # OPTIONAL
            EbsConfiguration => {
              EbsBlockDeviceConfigs => [
                {
                  VolumeSpecification => {
                    SizeInGB   => 1,                                # OPTIONAL
                    VolumeType => 'MyString',
                    Iops       => 1,                                # OPTIONAL
                  },
                  VolumesPerInstance => 1,                          # OPTIONAL
                },
                ...
              ],                                                    # OPTIONAL
              EbsOptimized => 1,                                    # OPTIONAL
            },    # OPTIONAL
            Market => 'ON_DEMAND',    # values: ON_DEMAND, SPOT; OPTIONAL
            Name => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
          },
          ...
        ],                                     # OPTIONAL
        KeepJobFlowAliveWhenNoSteps => 1,                   # OPTIONAL
        MasterInstanceType          => 'MyInstanceType',    # min: 1, max: 256
        Placement                   => {
          AvailabilityZone  => 'MyXmlString',    # max: 10280; OPTIONAL
          AvailabilityZones => [
            'MyXmlStringMaxLen256', ...          # max: 256; OPTIONAL
          ],                                     # OPTIONAL
        },    # OPTIONAL
        ServiceAccessSecurityGroup =>
          'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        SlaveInstanceType    => 'MyInstanceType',    # min: 1, max: 256
        TerminationProtected => 1,                   # OPTIONAL
      },
      Name           => 'MyXmlStringMaxLen256',
      AdditionalInfo => 'MyXmlString',               # OPTIONAL
      AmiVersion     => 'MyXmlStringMaxLen256',      # OPTIONAL
      Applications   => [
        {
          AdditionalInfo => { 'MyString' => 'MyString', },    # OPTIONAL
          Args           => [ 'MyString', ... ],              # OPTIONAL
          Name           => 'MyString',
          Version        => 'MyString',
        },
        ...
      ],                                                      # OPTIONAL
      AutoScalingRole  => 'MyXmlString',                      # OPTIONAL
      BootstrapActions => [
        {
          Name                  => 'MyXmlStringMaxLen256',  # max: 256; OPTIONAL
          ScriptBootstrapAction => {
            Path => 'MyXmlString',    # max: 10280; OPTIONAL
            Args => [
              'MyXmlString', ...      # max: 10280; OPTIONAL
            ],                        # OPTIONAL
          },

        },
        ...
      ],                              # OPTIONAL
      Configurations => [
        {
          Classification => 'MyString',
          Configurations => <ConfigurationList>,
          Properties     => { 'MyString' => 'MyString', },    # OPTIONAL
        },
        ...
      ],                                                      # OPTIONAL
      CustomAmiId        => 'MyXmlStringMaxLen256',           # OPTIONAL
      EbsRootVolumeSize  => 1,                                # OPTIONAL
      JobFlowRole        => 'MyXmlString',                    # OPTIONAL
      KerberosAttributes => {
        KdcAdminPassword     => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        Realm                => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        ADDomainJoinPassword => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        ADDomainJoinUser     => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
        CrossRealmTrustPrincipalPassword =>
          'MyXmlStringMaxLen256',                          # max: 256; OPTIONAL
      },    # OPTIONAL
      LogUri               => 'MyXmlString',    # OPTIONAL
      NewSupportedProducts => [
        {
          Args => [
            'MyXmlString', ...                  # max: 10280; OPTIONAL
          ],                                    # OPTIONAL
          Name => 'MyXmlStringMaxLen256',       # max: 256; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      ReleaseLabel          => 'MyXmlStringMaxLen256',          # OPTIONAL
      RepoUpgradeOnBoot     => 'SECURITY',                      # OPTIONAL
      ScaleDownBehavior     => 'TERMINATE_AT_INSTANCE_HOUR',    # OPTIONAL
      SecurityConfiguration => 'MyXmlString',                   # OPTIONAL
      ServiceRole           => 'MyXmlString',                   # OPTIONAL
      Steps                 => [
        {
          HadoopJarStep => {
            Jar  => 'MyXmlString',    # max: 10280; OPTIONAL
            Args => [
              'MyXmlString', ...      # max: 10280; OPTIONAL
            ],                        # OPTIONAL
            MainClass  => 'MyXmlString',    # max: 10280; OPTIONAL
            Properties => [
              {
                Key   => 'MyXmlString',     # max: 10280; OPTIONAL
                Value => 'MyXmlString',     # max: 10280; OPTIONAL
              },
              ...
            ],                              # OPTIONAL
          },
          Name            => 'MyXmlStringMaxLen256',    # max: 256; OPTIONAL
          ActionOnFailure => 'TERMINATE_JOB_FLOW'
          , # values: TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, CONTINUE; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SupportedProducts => [
        'MyXmlStringMaxLen256', ...    # max: 256; OPTIONAL
      ],                               # OPTIONAL
      Tags => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                               # OPTIONAL
      VisibleToAllUsers => 1,          # OPTIONAL
    );

    # Results:
    my $JobFlowId = $RunJobFlowOutput->JobFlowId;

    # Returns a L<Paws::EMR::RunJobFlowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/RunJobFlow>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

A JSON string for selecting additional features.



=head2 AmiVersion => Str

Applies only to Amazon EMR AMI versions 3.x and 2.x. For Amazon EMR
releases 4.0 and later, C<ReleaseLabel> is used. To specify a custom
AMI, use C<CustomAmiID>.



=head2 Applications => ArrayRef[L<Paws::EMR::Application>]

Applies to Amazon EMR releases 4.0 and later. A case-insensitive list
of applications for Amazon EMR to install and configure when launching
the cluster. For a list of applications available for each Amazon EMR
release version, see the Amazon EMR Release Guide
(http://docs.aws.amazon.com/emr/latest/ReleaseGuide/).



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
custom AMIs in Amazon EMR, see Using a Custom AMI
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-custom-ami.html)
in the I<Amazon EMR Management Guide>. If omitted, the cluster uses the
base Linux AMI for the C<ReleaseLabel> specified. For Amazon EMR
versions 2.x and 3.x, use C<AmiVersion> instead.

For information about creating a custom AMI, see Creating an Amazon
EBS-Backed Linux AMI
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/creating-an-ami-ebs.html)
in the I<Amazon Elastic Compute Cloud User Guide for Linux Instances>.
For information about finding an AMI ID, see Finding a Linux AMI
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/finding-an-ami.html).



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



=head2 KerberosAttributes => L<Paws::EMR::KerberosAttributes>

Attributes for Kerberos configuration when Kerberos authentication is
enabled using a security configuration. For more information see Use
Kerberos Authentication
(http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html)
in the I<EMR Management Guide>.



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
MapR Distribution for Hadoop" in the Amazon EMR Developer Guide
(http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf).
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

The Amazon EMR release label, which determines the version of
open-source application packages installed on the cluster. Release
labels are in the form C<emr-x.x.x>, where x.x.x is an Amazon EMR
release version, for example, C<emr-5.14.0>. For more information about
Amazon EMR release versions and included application versions and
features, see http://docs.aws.amazon.com/emr/latest/ReleaseGuide/
(http://docs.aws.amazon.com/emr/latest/ReleaseGuide/). The release
label applies only to Amazon EMR releases versions 4.x and later.
Earlier versions use C<AmiVersion>.



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
information, see the Amazon EMR Developer Guide
(http://docs.aws.amazon.com/emr/latest/DeveloperGuide/emr-dg.pdf).
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

