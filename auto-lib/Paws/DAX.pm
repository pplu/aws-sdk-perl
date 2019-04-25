package Paws::DAX;
  use Moose;
  sub service { 'dax' }
  sub signing_name { 'dax' }
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
  
  sub DescribeAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeClusters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Clusters }, @{ $next_result->Clusters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
        $result = $self->DescribeClusters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Clusters') foreach (@{ $result->Clusters });
    }

    return undef
  }
  sub DescribeAllDefaultParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDefaultParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDefaultParameters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeDefaultParameters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }
  sub DescribeAllParameterGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeParameterGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeParameterGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->ParameterGroups }, @{ $next_result->ParameterGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
        $result = $self->DescribeParameterGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ParameterGroups') foreach (@{ $result->ParameterGroups });
    }

    return undef
  }
  sub DescribeAllParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeParameters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeParameters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub DescribeAllSubnetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSubnetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSubnetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->SubnetGroups }, @{ $next_result->SubnetGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SubnetGroups') foreach (@{ $result->SubnetGroups });
        $result = $self->DescribeSubnetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SubnetGroups') foreach (@{ $result->SubnetGroups });
    }

    return undef
  }
  sub ListAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
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

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax-2017-04-19>


=head1 METHODS

=head2 CreateCluster

=over

=item ClusterName => Str

=item IamRoleArn => Str

=item NodeType => Str

=item ReplicationFactor => Int

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [NotificationTopicArn => Str]

=item [ParameterGroupName => Str]

=item [PreferredMaintenanceWindow => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [SSESpecification => L<Paws::DAX::SSESpecification>]

=item [SubnetGroupName => Str]

=item [Tags => ArrayRef[L<Paws::DAX::Tag>]]


=back

Each argument is described in detail in: L<Paws::DAX::CreateCluster>

Returns: a L<Paws::DAX::CreateClusterResponse> instance

Creates a DAX cluster. All nodes in the cluster run the same DAX
caching software.


=head2 CreateParameterGroup

=over

=item ParameterGroupName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DAX::CreateParameterGroup>

Returns: a L<Paws::DAX::CreateParameterGroupResponse> instance

Creates a new parameter group. A parameter group is a collection of
parameters that you apply to all of the nodes in a DAX cluster.


=head2 CreateSubnetGroup

=over

=item SubnetGroupName => Str

=item SubnetIds => ArrayRef[Str|Undef]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::DAX::CreateSubnetGroup>

Returns: a L<Paws::DAX::CreateSubnetGroupResponse> instance

Creates a new subnet group.


=head2 DecreaseReplicationFactor

=over

=item ClusterName => Str

=item NewReplicationFactor => Int

=item [AvailabilityZones => ArrayRef[Str|Undef]]

=item [NodeIdsToRemove => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::DecreaseReplicationFactor>

Returns: a L<Paws::DAX::DecreaseReplicationFactorResponse> instance

Removes one or more nodes from a DAX cluster.

You cannot use C<DecreaseReplicationFactor> to remove the last node in
a DAX cluster. If you need to do this, use C<DeleteCluster> instead.


=head2 DeleteCluster

=over

=item ClusterName => Str


=back

Each argument is described in detail in: L<Paws::DAX::DeleteCluster>

Returns: a L<Paws::DAX::DeleteClusterResponse> instance

Deletes a previously provisioned DAX cluster. I<DeleteCluster> deletes
all associated nodes, node endpoints and the DAX cluster itself. When
you receive a successful response from this action, DAX immediately
begins deleting the cluster; you cannot cancel or revert this action.


=head2 DeleteParameterGroup

=over

=item ParameterGroupName => Str


=back

Each argument is described in detail in: L<Paws::DAX::DeleteParameterGroup>

Returns: a L<Paws::DAX::DeleteParameterGroupResponse> instance

Deletes the specified parameter group. You cannot delete a parameter
group if it is associated with any DAX clusters.


=head2 DeleteSubnetGroup

=over

=item SubnetGroupName => Str


=back

Each argument is described in detail in: L<Paws::DAX::DeleteSubnetGroup>

Returns: a L<Paws::DAX::DeleteSubnetGroupResponse> instance

Deletes a subnet group.

You cannot delete a subnet group if it is associated with any DAX
clusters.


=head2 DescribeClusters

=over

=item [ClusterNames => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

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


=head2 DescribeDefaultParameters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DAX::DescribeDefaultParameters>

Returns: a L<Paws::DAX::DescribeDefaultParametersResponse> instance

Returns the default system parameter information for the DAX caching
software.


=head2 DescribeEvents

=over

=item [Duration => Int]

=item [EndTime => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SourceName => Str]

=item [SourceType => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::DAX::DescribeEvents>

Returns: a L<Paws::DAX::DescribeEventsResponse> instance

Returns events related to DAX clusters and parameter groups. You can
obtain events specific to a particular DAX cluster or parameter group
by providing the name as a parameter.

By default, only the events occurring within the last hour are
returned; however, you can retrieve up to 14 days' worth of events if
necessary.


=head2 DescribeParameterGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ParameterGroupNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::DescribeParameterGroups>

Returns: a L<Paws::DAX::DescribeParameterGroupsResponse> instance

Returns a list of parameter group descriptions. If a parameter group
name is specified, the list will contain only the descriptions for that
group.


=head2 DescribeParameters

=over

=item ParameterGroupName => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Source => Str]


=back

Each argument is described in detail in: L<Paws::DAX::DescribeParameters>

Returns: a L<Paws::DAX::DescribeParametersResponse> instance

Returns the detailed parameter list for a particular parameter group.


=head2 DescribeSubnetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [SubnetGroupNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::DescribeSubnetGroups>

Returns: a L<Paws::DAX::DescribeSubnetGroupsResponse> instance

Returns a list of subnet group descriptions. If a subnet group name is
specified, the list will contain only the description of that group.


=head2 IncreaseReplicationFactor

=over

=item ClusterName => Str

=item NewReplicationFactor => Int

=item [AvailabilityZones => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::IncreaseReplicationFactor>

Returns: a L<Paws::DAX::IncreaseReplicationFactorResponse> instance

Adds one or more nodes to a DAX cluster.


=head2 ListTags

=over

=item ResourceName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::DAX::ListTags>

Returns: a L<Paws::DAX::ListTagsResponse> instance

List all of the tags for a DAX cluster. You can call C<ListTags> up to
10 times per second, per account.


=head2 RebootNode

=over

=item ClusterName => Str

=item NodeId => Str


=back

Each argument is described in detail in: L<Paws::DAX::RebootNode>

Returns: a L<Paws::DAX::RebootNodeResponse> instance

Reboots a single node of a DAX cluster. The reboot action takes place
as soon as possible. During the reboot, the node status is set to
REBOOTING.


=head2 TagResource

=over

=item ResourceName => Str

=item Tags => ArrayRef[L<Paws::DAX::Tag>]


=back

Each argument is described in detail in: L<Paws::DAX::TagResource>

Returns: a L<Paws::DAX::TagResourceResponse> instance

Associates a set of tags with a DAX resource. You can call
C<TagResource> up to 5 times per second, per account.


=head2 UntagResource

=over

=item ResourceName => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::DAX::UntagResource>

Returns: a L<Paws::DAX::UntagResourceResponse> instance

Removes the association of tags from a DAX resource. You can call
C<UntagResource> up to 5 times per second, per account.


=head2 UpdateCluster

=over

=item ClusterName => Str

=item [Description => Str]

=item [NotificationTopicArn => Str]

=item [NotificationTopicStatus => Str]

=item [ParameterGroupName => Str]

=item [PreferredMaintenanceWindow => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::UpdateCluster>

Returns: a L<Paws::DAX::UpdateClusterResponse> instance

Modifies the settings for a DAX cluster. You can use this action to
change one or more cluster configuration parameters by specifying the
parameters and the new values.


=head2 UpdateParameterGroup

=over

=item ParameterGroupName => Str

=item ParameterNameValues => ArrayRef[L<Paws::DAX::ParameterNameValue>]


=back

Each argument is described in detail in: L<Paws::DAX::UpdateParameterGroup>

Returns: a L<Paws::DAX::UpdateParameterGroupResponse> instance

Modifies the parameters of a parameter group. You can modify up to 20
parameters in a single request by submitting a list parameter name and
value pairs.


=head2 UpdateSubnetGroup

=over

=item SubnetGroupName => Str

=item [Description => Str]

=item [SubnetIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::DAX::UpdateSubnetGroup>

Returns: a L<Paws::DAX::UpdateSubnetGroupResponse> instance

Modifies an existing subnet group.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllClusters(sub { },[ClusterNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllClusters([ClusterNames => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Clusters, passing the object as the first parameter, and the string 'Clusters' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDefaultParameters(sub { },[MaxResults => Int, NextToken => Str])

=head2 DescribeAllDefaultParameters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeDefaultParametersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvents(sub { },[Duration => Int, EndTime => Str, MaxResults => Int, NextToken => Str, SourceName => Str, SourceType => Str, StartTime => Str])

=head2 DescribeAllEvents([Duration => Int, EndTime => Str, MaxResults => Int, NextToken => Str, SourceName => Str, SourceType => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllParameterGroups(sub { },[MaxResults => Int, NextToken => Str, ParameterGroupNames => ArrayRef[Str|Undef]])

=head2 DescribeAllParameterGroups([MaxResults => Int, NextToken => Str, ParameterGroupNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ParameterGroups, passing the object as the first parameter, and the string 'ParameterGroups' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeParameterGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllParameters(sub { },ParameterGroupName => Str, [MaxResults => Int, NextToken => Str, Source => Str])

=head2 DescribeAllParameters(ParameterGroupName => Str, [MaxResults => Int, NextToken => Str, Source => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeParametersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSubnetGroups(sub { },[MaxResults => Int, NextToken => Str, SubnetGroupNames => ArrayRef[Str|Undef]])

=head2 DescribeAllSubnetGroups([MaxResults => Int, NextToken => Str, SubnetGroupNames => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SubnetGroups, passing the object as the first parameter, and the string 'SubnetGroups' as the second parameter 

If not, it will return a a L<Paws::DAX::DescribeSubnetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTags(sub { },ResourceName => Str, [NextToken => Str])

=head2 ListAllTags(ResourceName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::DAX::ListTagsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

