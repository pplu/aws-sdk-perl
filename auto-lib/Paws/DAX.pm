package Paws::DAX;
  use Moose;
  sub service { 'dax' }
  sub version { '2017-04-19' }
  sub target_prefix { 'AmazonDAXV3' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::CreateParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::CreateSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DecreaseReplicationFactor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DecreaseReplicationFactor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DeleteParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DeleteSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDefaultParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeDefaultParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeParameterGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeParameterGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubnetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::DescribeSubnetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub IncreaseReplicationFactor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::IncreaseReplicationFactor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::RebootNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::UpdateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateParameterGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::UpdateParameterGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSubnetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::DAX::UpdateSubnetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateCluster CreateParameterGroup CreateSubnetGroup DecreaseReplicationFactor DeleteCluster DeleteParameterGroup DeleteSubnetGroup DescribeClusters DescribeDefaultParameters DescribeEvents DescribeParameterGroups DescribeParameters DescribeSubnetGroups IncreaseReplicationFactor ListTags RebootNode TagResource UntagResource UpdateCluster UpdateParameterGroup UpdateSubnetGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX - Perl Interface to AWS Amazon DynamoDB Accelerator (DAX)

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('DAX');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

DAX is a managed caching service engineered for Amazon DynamoDB. DAX
dramatically speeds up database reads by caching frequently-accessed
data from DynamoDB, so applications can access that data with
sub-millisecond latency. You can create a DAX cluster easily, using the
AWS Management Console. With a few simple modifications to your code,
your application can begin taking advantage of the DAX cluster and
realize significant improvements in read performance.

=head1 METHODS

=head2 CreateCluster(ClusterName => Str, IamRoleArn => Str, NodeType => Str, ReplicationFactor => Int, [AvailabilityZones => ArrayRef[Str|Undef], Description => Str, NotificationTopicArn => Str, ParameterGroupName => Str, PreferredMaintenanceWindow => Str, SecurityGroupIds => ArrayRef[Str|Undef], SubnetGroupName => Str, Tags => ArrayRef[L<Paws::DAX::Tag>]])

Each argument is described in detail in: L<Paws::DAX::CreateCluster>

Returns: a L<Paws::DAX::CreateClusterResponse> instance

  Creates a DAX cluster. All nodes in the cluster run the same DAX
caching software.


=head2 CreateParameterGroup(ParameterGroupName => Str, [Description => Str])

Each argument is described in detail in: L<Paws::DAX::CreateParameterGroup>

Returns: a L<Paws::DAX::CreateParameterGroupResponse> instance

  Creates a new parameter group. A parameter group is a collection of
parameters that you apply to all of the nodes in a DAX cluster.


=head2 CreateSubnetGroup(SubnetGroupName => Str, SubnetIds => ArrayRef[Str|Undef], [Description => Str])

Each argument is described in detail in: L<Paws::DAX::CreateSubnetGroup>

Returns: a L<Paws::DAX::CreateSubnetGroupResponse> instance

  Creates a new subnet group.


=head2 DecreaseReplicationFactor(ClusterName => Str, NewReplicationFactor => Int, [AvailabilityZones => ArrayRef[Str|Undef], NodeIdsToRemove => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::DecreaseReplicationFactor>

Returns: a L<Paws::DAX::DecreaseReplicationFactorResponse> instance

  Removes one or more nodes from a DAX cluster.

You cannot use C<DecreaseReplicationFactor> to remove the last node in
a DAX cluster. If you need to do this, use C<DeleteCluster> instead.


=head2 DeleteCluster(ClusterName => Str)

Each argument is described in detail in: L<Paws::DAX::DeleteCluster>

Returns: a L<Paws::DAX::DeleteClusterResponse> instance

  Deletes a previously provisioned DAX cluster. I<DeleteCluster> deletes
all associated nodes, node endpoints and the DAX cluster itself. When
you receive a successful response from this action, DAX immediately
begins deleting the cluster; you cannot cancel or revert this action.


=head2 DeleteParameterGroup(ParameterGroupName => Str)

Each argument is described in detail in: L<Paws::DAX::DeleteParameterGroup>

Returns: a L<Paws::DAX::DeleteParameterGroupResponse> instance

  Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any DAX clusters.


=head2 DeleteSubnetGroup(SubnetGroupName => Str)

Each argument is described in detail in: L<Paws::DAX::DeleteSubnetGroup>

Returns: a L<Paws::DAX::DeleteSubnetGroupResponse> instance

  Deletes a subnet group.

You cannot delete a subnet group if it is associated with any DAX
clusters.


=head2 DescribeClusters([ClusterNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DAX::DescribeClusters>

Returns: a L<Paws::DAX::DescribeClustersResponse> instance

  Returns information about all provisioned DAX clusters if no cluster
identifier is specified, or about a specific DAX cluster if a cluster
identifier is supplied.

If the cluster is in the CREATING state, only cluster level information
will be displayed until all of the nodes are successfully provisioned.

If the cluster is in the DELETING state, only cluster level information
will be displayed.

If nodes are currently being added to the DAX cluster, node endpoint
information and creation time for the additional nodes will not be
displayed until they are completely provisioned. When the DAX cluster
state is I<available>, the cluster is ready for use.

If nodes are currently being removed from the DAX cluster, no endpoint
information for the removed nodes is displayed.


=head2 DescribeDefaultParameters([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::DAX::DescribeDefaultParameters>

Returns: a L<Paws::DAX::DescribeDefaultParametersResponse> instance

  Returns the default system parameter information for the DAX caching
software.


=head2 DescribeEvents([Duration => Int, EndTime => Str, MaxResults => Int, NextToken => Str, SourceName => Str, SourceType => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::DAX::DescribeEvents>

Returns: a L<Paws::DAX::DescribeEventsResponse> instance

  Returns events related to DAX clusters and parameter groups. You can
obtain events specific to a particular DAX cluster or parameter group
by providing the name as a parameter.

By default, only the events occurring within the last hour are
returned; however, you can retrieve up to 14 days' worth of events if
necessary.


=head2 DescribeParameterGroups([MaxResults => Int, NextToken => Str, ParameterGroupNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::DescribeParameterGroups>

Returns: a L<Paws::DAX::DescribeParameterGroupsResponse> instance

  Returns a list of parameter group descriptions. If a parameter group
name is specified, the list will contain only the descriptions for that
group.


=head2 DescribeParameters(ParameterGroupName => Str, [MaxResults => Int, NextToken => Str, Source => Str])

Each argument is described in detail in: L<Paws::DAX::DescribeParameters>

Returns: a L<Paws::DAX::DescribeParametersResponse> instance

  Returns the detailed parameter list for a particular parameter group.


=head2 DescribeSubnetGroups([MaxResults => Int, NextToken => Str, SubnetGroupNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::DescribeSubnetGroups>

Returns: a L<Paws::DAX::DescribeSubnetGroupsResponse> instance

  Returns a list of subnet group descriptions. If a subnet group name is
specified, the list will contain only the description of that group.


=head2 IncreaseReplicationFactor(ClusterName => Str, NewReplicationFactor => Int, [AvailabilityZones => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::IncreaseReplicationFactor>

Returns: a L<Paws::DAX::IncreaseReplicationFactorResponse> instance

  Adds one or more nodes to a DAX cluster.


=head2 ListTags(ResourceName => Str, [NextToken => Str])

Each argument is described in detail in: L<Paws::DAX::ListTags>

Returns: a L<Paws::DAX::ListTagsResponse> instance

  List all of the tags for a DAX cluster. You can call C<ListTags> up to
10 times per second, per account.


=head2 RebootNode(ClusterName => Str, NodeId => Str)

Each argument is described in detail in: L<Paws::DAX::RebootNode>

Returns: a L<Paws::DAX::RebootNodeResponse> instance

  Reboots a single node of a DAX cluster. The reboot action takes place
as soon as possible. During the reboot, the node status is set to
REBOOTING.


=head2 TagResource(ResourceName => Str, Tags => ArrayRef[L<Paws::DAX::Tag>])

Each argument is described in detail in: L<Paws::DAX::TagResource>

Returns: a L<Paws::DAX::TagResourceResponse> instance

  Associates a set of tags with a DAX resource. You can call
C<TagResource> up to 5 times per second, per account.


=head2 UntagResource(ResourceName => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::DAX::UntagResource>

Returns: a L<Paws::DAX::UntagResourceResponse> instance

  Removes the association of tags from a DAX resource. You can call
C<UntagResource> up to 5 times per second, per account.


=head2 UpdateCluster(ClusterName => Str, [Description => Str, NotificationTopicArn => Str, NotificationTopicStatus => Str, ParameterGroupName => Str, PreferredMaintenanceWindow => Str, SecurityGroupIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::UpdateCluster>

Returns: a L<Paws::DAX::UpdateClusterResponse> instance

  Modifies the settings for a DAX cluster. You can use this action to
change one or more cluster configuration parameters by specifying the
parameters and the new values.


=head2 UpdateParameterGroup(ParameterGroupName => Str, ParameterNameValues => ArrayRef[L<Paws::DAX::ParameterNameValue>])

Each argument is described in detail in: L<Paws::DAX::UpdateParameterGroup>

Returns: a L<Paws::DAX::UpdateParameterGroupResponse> instance

  Modifies the parameters of a parameter group. You can modify up to 20
parameters in a single request by submitting a list parameter name and
value pairs.


=head2 UpdateSubnetGroup(SubnetGroupName => Str, [Description => Str, SubnetIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::DAX::UpdateSubnetGroup>

Returns: a L<Paws::DAX::UpdateSubnetGroupResponse> instance

  Modifies an existing subnet group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

