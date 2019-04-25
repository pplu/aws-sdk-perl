
package Paws::DAX::CreateCluster;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has ParameterGroupName => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ReplicationFactor => (is => 'ro', isa => 'Int', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SSESpecification => (is => 'ro', isa => 'Paws::DAX::SSESpecification');
  has SubnetGroupName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::CreateClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::CreateCluster - Arguments for method CreateCluster on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $CreateClusterResponse = $dax->CreateCluster(
      ClusterName                => 'MyString',
      IamRoleArn                 => 'MyString',
      NodeType                   => 'MyString',
      ReplicationFactor          => 1,
      AvailabilityZones          => [ 'MyString', ... ],    # OPTIONAL
      Description                => 'MyString',             # OPTIONAL
      NotificationTopicArn       => 'MyString',             # OPTIONAL
      ParameterGroupName         => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow => 'MyString',             # OPTIONAL
      SSESpecification           => {
        Enabled => 1,

      },                                                    # OPTIONAL
      SecurityGroupIds => [ 'MyString', ... ],              # OPTIONAL
      SubnetGroupName  => 'MyString',                       # OPTIONAL
      Tags             => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterResponse->Cluster;

    # Returns a L<Paws::DAX::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/CreateCluster>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones (AZs) in which the cluster nodes will be
created. All nodes belonging to the cluster are placed in these
Availability Zones. Use this parameter if you want to distribute the
nodes across multiple AZs.



=head2 B<REQUIRED> ClusterName => Str

The cluster identifier. This parameter is stored as a lowercase string.

B<Constraints:>

=over

=item *

A name must contain from 1 to 20 alphanumeric characters or hyphens.

=item *

The first character must be a letter.

=item *

A name cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 Description => Str

A description of the cluster.



=head2 B<REQUIRED> IamRoleArn => Str

A valid Amazon Resource Name (ARN) that identifies an IAM role. At
runtime, DAX will assume this role and use the role's permissions to
access DynamoDB on your behalf.



=head2 B<REQUIRED> NodeType => Str

The compute and memory capacity of the nodes in the cluster.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon SNS topic to which
notifications will be sent.

The Amazon SNS topic owner must be same as the DAX cluster owner.



=head2 ParameterGroupName => Str

The parameter group to be associated with the DAX cluster.



=head2 PreferredMaintenanceWindow => Str

Specifies the weekly time range during which maintenance on the DAX
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period. Valid values for C<ddd> are:

=over

=item *

C<sun>

=item *

C<mon>

=item *

C<tue>

=item *

C<wed>

=item *

C<thu>

=item *

C<fri>

=item *

C<sat>

=back

Example: C<sun:05:00-sun:09:00>

If you don't specify a preferred maintenance window when you create or
modify a cache cluster, DAX assigns a 60-minute maintenance window on a
randomly selected day of the week.



=head2 B<REQUIRED> ReplicationFactor => Int

The number of nodes in the DAX cluster. A replication factor of 1 will
create a single-node cluster, without any read replicas. For additional
fault tolerance, you can create a multiple node cluster with one or
more read replicas. To do this, set I<ReplicationFactor> to 2 or more.

AWS recommends that you have at least two read replicas per cluster.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

A list of security group IDs to be assigned to each node in the DAX
cluster. (Each of the security group ID is system-generated.)

If this parameter is not specified, DAX assigns the default VPC
security group to each node.



=head2 SSESpecification => L<Paws::DAX::SSESpecification>

Represents the settings used to enable server-side encryption on the
cluster.



=head2 SubnetGroupName => Str

The name of the subnet group to be used for the replication group.

DAX clusters can only run in an Amazon VPC environment. All of the
subnets that you specify in a subnet group must exist in the same VPC.



=head2 Tags => ArrayRef[L<Paws::DAX::Tag>]

A set of tags to associate with the DAX cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

