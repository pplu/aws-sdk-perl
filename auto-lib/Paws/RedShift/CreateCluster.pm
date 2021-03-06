
package Paws::RedShift::CreateCluster;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AquaConfigurationStatus => (is => 'ro', isa => 'Str');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has AvailabilityZoneRelocation => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIp => (is => 'ro', isa => 'Str');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has HsmClientCertificateIdentifier => (is => 'ro', isa => 'Str');
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has IamRoles => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has ManualSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has MasterUsername => (is => 'ro', isa => 'Str', required => 1);
  has MasterUserPassword => (is => 'ro', isa => 'Str', required => 1);
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has SnapshotScheduleIdentifier => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::CreateClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateCluster - Arguments for method CreateCluster on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $CreateClusterResult = $redshift->CreateCluster(
      ClusterIdentifier                => 'MyString',
      MasterUserPassword               => 'MyString',
      MasterUsername                   => 'MyString',
      NodeType                         => 'MyString',
      AdditionalInfo                   => 'MyString',    # OPTIONAL
      AllowVersionUpgrade              => 1,             # OPTIONAL
      AquaConfigurationStatus          => 'enabled',     # OPTIONAL
      AutomatedSnapshotRetentionPeriod => 1,             # OPTIONAL
      AvailabilityZone                 => 'MyString',    # OPTIONAL
      AvailabilityZoneRelocation       => 1,             # OPTIONAL
      ClusterParameterGroupName        => 'MyString',    # OPTIONAL
      ClusterSecurityGroups            => [
        'MyString', ...                                  # max: 2147483647
      ],    # OPTIONAL
      ClusterSubnetGroupName         => 'MyString',    # OPTIONAL
      ClusterType                    => 'MyString',    # OPTIONAL
      ClusterVersion                 => 'MyString',    # OPTIONAL
      DBName                         => 'MyString',    # OPTIONAL
      ElasticIp                      => 'MyString',    # OPTIONAL
      Encrypted                      => 1,             # OPTIONAL
      EnhancedVpcRouting             => 1,             # OPTIONAL
      HsmClientCertificateIdentifier => 'MyString',    # OPTIONAL
      HsmConfigurationIdentifier     => 'MyString',    # OPTIONAL
      IamRoles                       => [
        'MyString', ...                                # max: 2147483647
      ],    # OPTIONAL
      KmsKeyId                      => 'MyString',    # OPTIONAL
      MaintenanceTrackName          => 'MyString',    # OPTIONAL
      ManualSnapshotRetentionPeriod => 1,             # OPTIONAL
      NumberOfNodes                 => 1,             # OPTIONAL
      Port                          => 1,             # OPTIONAL
      PreferredMaintenanceWindow    => 'MyString',    # OPTIONAL
      PubliclyAccessible            => 1,             # OPTIONAL
      SnapshotScheduleIdentifier    => 'MyString',    # OPTIONAL
      Tags                          => [
        {
          Key   => 'MyString',    # max: 2147483647
          Value => 'MyString',    # max: 2147483647
        },
        ...
      ],    # OPTIONAL
      VpcSecurityGroupIds => [
        'MyString', ...    # max: 2147483647
      ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResult->Cluster;

    # Returns a L<Paws::RedShift::CreateClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/CreateCluster>

=head1 ATTRIBUTES


=head2 AdditionalInfo => Str

Reserved.



=head2 AllowVersionUpgrade => Bool

If C<true>, major version upgrades can be applied during the
maintenance window to the Amazon Redshift engine that is running on the
cluster.

When a new major version of the Amazon Redshift engine is released, you
can request that the service automatically apply upgrades during the
maintenance window to the Amazon Redshift engine that is running on
your cluster.

Default: C<true>



=head2 AquaConfigurationStatus => Str

The value represents how the cluster is configured to use AQUA
(Advanced Query Accelerator) when it is created. Possible values
include the following.

=over

=item *

enabled - Use AQUA if it is available for the current AWS Region and
Amazon Redshift node type.

=item *

disabled - Don't use AQUA.

=item *

auto - Amazon Redshift determines whether to use AQUA.

=back


Valid values are: C<"enabled">, C<"disabled">, C<"auto">

=head2 AutomatedSnapshotRetentionPeriod => Int

The number of days that automated snapshots are retained. If the value
is 0, automated snapshots are disabled. Even if automated snapshots are
disabled, you can still create manual snapshots when you want with
CreateClusterSnapshot.

You can't disable automated snapshots for RA3 node types. Set the
automated retention period from 1-35 days.

Default: C<1>

Constraints: Must be a value from 0 to 35.



=head2 AvailabilityZone => Str

The EC2 Availability Zone (AZ) in which you want Amazon Redshift to
provision the cluster. For example, if you have several EC2 instances
running in a specific Availability Zone, then you might want the
cluster to be provisioned in the same zone in order to decrease network
latency.

Default: A random, system-chosen Availability Zone in the region that
is specified by the endpoint.

Example: C<us-east-2d>

Constraint: The specified Availability Zone must be in the same region
as the current endpoint.



=head2 AvailabilityZoneRelocation => Bool

The option to enable relocation for an Amazon Redshift cluster between
Availability Zones after the cluster is created.



=head2 B<REQUIRED> ClusterIdentifier => Str

A unique identifier for the cluster. You use this identifier to refer
to the cluster for any subsequent cluster operations such as deleting
or modifying. The identifier also appears in the Amazon Redshift
console.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

Alphabetic characters must be lowercase.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=item *

Must be unique for all clusters within an AWS account.

=back

Example: C<myexamplecluster>



=head2 ClusterParameterGroupName => Str

The name of the parameter group to be associated with this cluster.

Default: The default Amazon Redshift cluster parameter group. For
information about the default parameter group, go to Working with
Amazon Redshift Parameter Groups
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)

Constraints:

=over

=item *

Must be 1 to 255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 ClusterSecurityGroups => ArrayRef[Str|Undef]

A list of security groups to be associated with this cluster.

Default: The default cluster security group for Amazon Redshift.



=head2 ClusterSubnetGroupName => Str

The name of a cluster subnet group to be associated with this cluster.

If this parameter is not provided the resulting cluster will be
deployed outside virtual private cloud (VPC).



=head2 ClusterType => Str

The type of the cluster. When cluster type is specified as

=over

=item *

C<single-node>, the B<NumberOfNodes> parameter is not required.

=item *

C<multi-node>, the B<NumberOfNodes> parameter is required.

=back

Valid Values: C<multi-node> | C<single-node>

Default: C<multi-node>



=head2 ClusterVersion => Str

The version of the Amazon Redshift engine software that you want to
deploy on the cluster.

The version selected runs on all the nodes in the cluster.

Constraints: Only version 1.0 is currently available.

Example: C<1.0>



=head2 DBName => Str

The name of the first database to be created when the cluster is
created.

To create additional databases after the cluster is created, connect to
the cluster with a SQL client and use SQL commands to create a
database. For more information, go to Create a Database
(https://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html)
in the Amazon Redshift Database Developer Guide.

Default: C<dev>

Constraints:

=over

=item *

Must contain 1 to 64 alphanumeric characters.

=item *

Must contain only lowercase letters.

=item *

Cannot be a word that is reserved by the service. A list of reserved
words can be found in Reserved Words
(https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide.

=back




=head2 ElasticIp => Str

The Elastic IP (EIP) address for the cluster.

Constraints: The cluster must be provisioned in EC2-VPC and
publicly-accessible through an Internet gateway. For more information
about provisioning clusters in EC2-VPC, go to Supported Platforms to
Launch Your Cluster
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms)
in the Amazon Redshift Cluster Management Guide.



=head2 Encrypted => Bool

If C<true>, the data in the cluster is encrypted at rest.

Default: false



=head2 EnhancedVpcRouting => Bool

An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing
(https://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html)
in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false



=head2 HsmClientCertificateIdentifier => Str

Specifies the name of the HSM client certificate the Amazon Redshift
cluster uses to retrieve the data encryption keys stored in an HSM.



=head2 HsmConfigurationIdentifier => Str

Specifies the name of the HSM configuration that contains the
information the Amazon Redshift cluster can use to retrieve and store
keys in an HSM.



=head2 IamRoles => ArrayRef[Str|Undef]

A list of AWS Identity and Access Management (IAM) roles that can be
used by the cluster to access other AWS services. You must supply the
IAM roles in their Amazon Resource Name (ARN) format. You can supply up
to 10 IAM roles in a single request.

A cluster can have up to 10 IAM roles associated with it at any time.



=head2 KmsKeyId => Str

The AWS Key Management Service (KMS) key ID of the encryption key that
you want to use to encrypt data in the cluster.



=head2 MaintenanceTrackName => Str

An optional parameter for the name of the maintenance track for the
cluster. If you don't provide a maintenance track name, the cluster is
assigned to the C<current> track.



=head2 ManualSnapshotRetentionPeriod => Int

The default number of days to retain a manual snapshot. If the value is
-1, the snapshot is retained indefinitely. This setting doesn't change
the retention period of existing snapshots.

The value must be either -1 or an integer between 1 and 3,653.



=head2 B<REQUIRED> MasterUsername => Str

The user name associated with the master user account for the cluster
that is being created.

Constraints:

=over

=item *

Must be 1 - 128 alphanumeric characters. The user name can't be
C<PUBLIC>.

=item *

First character must be a letter.

=item *

Cannot be a reserved word. A list of reserved words can be found in
Reserved Words
(https://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html) in
the Amazon Redshift Database Developer Guide.

=back




=head2 B<REQUIRED> MasterUserPassword => Str

The password associated with the master user account for the cluster
that is being created.

Constraints:

=over

=item *

Must be between 8 and 64 characters in length.

=item *

Must contain at least one uppercase letter.

=item *

Must contain at least one lowercase letter.

=item *

Must contain one number.

=item *

Can be any printable ASCII character (ASCII code 33 to 126) except '
(single quote), " (double quote), \, /, @, or space.

=back




=head2 B<REQUIRED> NodeType => Str

The node type to be provisioned for the cluster. For information about
node types, go to Working with Clusters
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes)
in the I<Amazon Redshift Cluster Management Guide>.

Valid Values: C<ds2.xlarge> | C<ds2.8xlarge> | C<dc1.large> |
C<dc1.8xlarge> | C<dc2.large> | C<dc2.8xlarge> | C<ra3.xlplus> |
C<ra3.4xlarge> | C<ra3.16xlarge>



=head2 NumberOfNodes => Int

The number of compute nodes in the cluster. This parameter is required
when the B<ClusterType> parameter is specified as C<multi-node>.

For information about determining how many nodes you need, go to
Working with Clusters
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes)
in the I<Amazon Redshift Cluster Management Guide>.

If you don't specify this parameter, you get a single-node cluster.
When requesting a multi-node cluster, you must specify the number of
nodes that you want in the cluster.

Default: C<1>

Constraints: Value must be at least 1 and no more than 100.



=head2 Port => Int

The port number on which the cluster accepts incoming connections.

The cluster is accessible only via the JDBC and ODBC connection
strings. Part of the connection string requires the port on which the
cluster will listen for incoming connections.

Default: C<5439>

Valid Values: C<1150-65535>



=head2 PreferredMaintenanceWindow => Str

The weekly time range (in UTC) during which automated cluster
maintenance can occur.

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per region, occurring on a random day of the week. For more
information about the time blocks for each region, see Maintenance
Windows
(https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows)
in Amazon Redshift Cluster Management Guide.

Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun

Constraints: Minimum 30-minute window.



=head2 PubliclyAccessible => Bool

If C<true>, the cluster can be accessed from a public network.



=head2 SnapshotScheduleIdentifier => Str

A unique identifier for the snapshot schedule.



=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

A list of tag instances.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of Virtual Private Cloud (VPC) security groups to be associated
with the cluster.

Default: The default VPC security group is associated with the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

