package Paws::DAX::Cluster;
  use Moose;
  has ActiveNodes => (is => 'ro', isa => 'Int');
  has ClusterArn => (is => 'ro', isa => 'Str');
  has ClusterDiscoveryEndpoint => (is => 'ro', isa => 'Paws::DAX::Endpoint');
  has ClusterName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has NodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Node]');
  has NodeType => (is => 'ro', isa => 'Str');
  has NotificationConfiguration => (is => 'ro', isa => 'Paws::DAX::NotificationConfiguration');
  has ParameterGroup => (is => 'ro', isa => 'Paws::DAX::ParameterGroupStatus');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::DAX::SecurityGroupMembership]');
  has SSEDescription => (is => 'ro', isa => 'Paws::DAX::SSEDescription');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetGroup => (is => 'ro', isa => 'Str');
  has TotalNodes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Cluster object:

  $service_obj->Method(Att1 => { ActiveNodes => $value, ..., TotalNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveNodes

=head1 DESCRIPTION

Contains all of the attributes of a specific DAX cluster.

=head1 ATTRIBUTES


=head2 ActiveNodes => Int

  The number of nodes in the cluster that are active (i.e., capable of
serving requests).


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the cluster.


=head2 ClusterDiscoveryEndpoint => L<Paws::DAX::Endpoint>

  The configuration endpoint for this DAX cluster, consisting of a DNS
name and a port number. Client applications can specify this endpoint,
rather than an individual node endpoint, and allow the DAX client
software to intelligently route requests and responses to nodes in the
DAX cluster.


=head2 ClusterName => Str

  The name of the DAX cluster.


=head2 Description => Str

  The description of the cluster.


=head2 IamRoleArn => Str

  A valid Amazon Resource Name (ARN) that identifies an IAM role. At
runtime, DAX will assume this role and use the role's permissions to
access DynamoDB on your behalf.


=head2 NodeIdsToRemove => ArrayRef[Str|Undef]

  A list of nodes to be removed from the cluster.


=head2 Nodes => ArrayRef[L<Paws::DAX::Node>]

  A list of nodes that are currently in the cluster.


=head2 NodeType => Str

  The node type for the nodes in the cluster. (All nodes in a DAX cluster
are of the same type.)


=head2 NotificationConfiguration => L<Paws::DAX::NotificationConfiguration>

  Describes a notification topic and its status. Notification topics are
used for publishing DAX events to subscribers using Amazon Simple
Notification Service (SNS).


=head2 ParameterGroup => L<Paws::DAX::ParameterGroupStatus>

  The parameter group being used by nodes in the cluster.


=head2 PreferredMaintenanceWindow => Str

  A range of time when maintenance of DAX cluster software will be
performed. For example: C<sun:01:00-sun:09:00>. Cluster maintenance
normally takes less than 30 minutes, and is performed automatically
within the maintenance window.


=head2 SecurityGroups => ArrayRef[L<Paws::DAX::SecurityGroupMembership>]

  A list of security groups, and the status of each, for the nodes in the
cluster.


=head2 SSEDescription => L<Paws::DAX::SSEDescription>

  The description of the server-side encryption status on the specified
DAX cluster.


=head2 Status => Str

  The current status of the cluster.


=head2 SubnetGroup => Str

  The subnet group where the DAX cluster is running.


=head2 TotalNodes => Int

  The total number of nodes in the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

