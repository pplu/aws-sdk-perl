package Paws::EKS;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'eks' }
  sub signing_name { 'eks' }
  sub version { '2017-11-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::CreateNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DeleteNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCluster {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeCluster', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNodegroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeNodegroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::DescribeUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListClusters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListClusters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNodegroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListNodegroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUpdates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::ListUpdates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateClusterConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateClusterVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateClusterVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNodegroupConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateNodegroupConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateNodegroupVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EKS::UpdateNodegroupVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllClusters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListClusters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListClusters(@_, nextToken => $next_result->nextToken);
        push @{ $result->clusters }, @{ $next_result->clusters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'clusters') foreach (@{ $result->clusters });
        $result = $self->ListClusters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'clusters') foreach (@{ $result->clusters });
    }

    return undef
  }
  sub ListAllNodegroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNodegroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListNodegroups(@_, nextToken => $next_result->nextToken);
        push @{ $result->nodegroups }, @{ $next_result->nodegroups };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'nodegroups') foreach (@{ $result->nodegroups });
        $result = $self->ListNodegroups(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'nodegroups') foreach (@{ $result->nodegroups });
    }

    return undef
  }
  sub ListAllUpdates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUpdates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListUpdates(@_, nextToken => $next_result->nextToken);
        push @{ $result->updateIds }, @{ $next_result->updateIds };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'updateIds') foreach (@{ $result->updateIds });
        $result = $self->ListUpdates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'updateIds') foreach (@{ $result->updateIds });
    }

    return undef
  }


  sub operations { qw/CreateCluster CreateNodegroup DeleteCluster DeleteNodegroup DescribeCluster DescribeNodegroup DescribeUpdate ListClusters ListNodegroups ListTagsForResource ListUpdates TagResource UntagResource UpdateClusterConfig UpdateClusterVersion UpdateNodegroupConfig UpdateNodegroupVersion / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS - Perl Interface to AWS Amazon Elastic Kubernetes Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EKS');
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

Amazon Elastic Kubernetes Service (Amazon EKS) is a managed service
that makes it easy for you to run Kubernetes on AWS without needing to
stand up or maintain your own Kubernetes control plane. Kubernetes is
an open-source system for automating the deployment, scaling, and
management of containerized applications.

Amazon EKS runs up-to-date versions of the open-source Kubernetes
software, so you can use all the existing plugins and tooling from the
Kubernetes community. Applications running on Amazon EKS are fully
compatible with applications running on any standard Kubernetes
environment, whether running in on-premises data centers or public
clouds. This means that you can easily migrate any standard Kubernetes
application to Amazon EKS without any code modification required.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks-2017-11-01>


=head1 METHODS

=head2 CreateCluster

=over

=item Name => Str

=item ResourcesVpcConfig => EKS_VpcConfigRequest

=item RoleArn => Str

=item [ClientRequestToken => Str]

=item [Logging => EKS_Logging]

=item [Tags => EKS_TagMap]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::CreateCluster>

Returns: a L<Paws::EKS::CreateClusterResponse> instance

Creates an Amazon EKS control plane.

The Amazon EKS control plane consists of control plane instances that
run the Kubernetes software, such as C<etcd> and the API server. The
control plane runs in an account managed by AWS, and the Kubernetes API
is exposed via the Amazon EKS API server endpoint. Each Amazon EKS
cluster control plane is single-tenant and unique and runs on its own
set of Amazon EC2 instances.

The cluster control plane is provisioned across multiple Availability
Zones and fronted by an Elastic Load Balancing Network Load Balancer.
Amazon EKS also provisions elastic network interfaces in your VPC
subnets to provide connectivity from the control plane instances to the
worker nodes (for example, to support C<kubectl exec>, C<logs>, and
C<proxy> data flows).

Amazon EKS worker nodes run in your AWS account and connect to your
cluster's control plane via the Kubernetes API server endpoint and a
certificate file that is created for your cluster.

You can use the C<endpointPublicAccess> and C<endpointPrivateAccess>
parameters to enable or disable public and private access to your
cluster's Kubernetes API server endpoint. By default, public access is
enabled, and private access is disabled. For more information, see
Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.

You can use the C<logging> parameter to enable or disable exporting the
Kubernetes control plane logs for your cluster to CloudWatch Logs. By
default, cluster control plane logs aren't exported to CloudWatch Logs.
For more information, see Amazon EKS Cluster Control Plane Logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see Amazon
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).

Cluster creation typically takes between 10 and 15 minutes. After you
create an Amazon EKS cluster, you must configure your Kubernetes
tooling to communicate with the API server and launch worker nodes into
your cluster. For more information, see Managing Cluster Authentication
(https://docs.aws.amazon.com/eks/latest/userguide/managing-auth.html)
and Launching Amazon EKS Worker Nodes
(https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html)
in the I<Amazon EKS User Guide>.


=head2 CreateNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str

=item NodeRole => Str

=item Subnets => ArrayRef[Str|Undef]

=item [AmiType => Str]

=item [ClientRequestToken => Str]

=item [DiskSize => Int]

=item [InstanceTypes => ArrayRef[Str|Undef]]

=item [Labels => EKS_labelsMap]

=item [ReleaseVersion => Str]

=item [RemoteAccess => EKS_RemoteAccessConfig]

=item [ScalingConfig => EKS_NodegroupScalingConfig]

=item [Tags => EKS_TagMap]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::CreateNodegroup>

Returns: a L<Paws::EKS::CreateNodegroupResponse> instance

Creates a managed worker node group for an Amazon EKS cluster. You can
only create a node group for your cluster that is equal to the current
Kubernetes version for the cluster. All node groups are created with
the latest AMI release version for the respective minor Kubernetes
version of the cluster.

An Amazon EKS managed node group is an Amazon EC2 Auto Scaling group
and associated Amazon EC2 instances that are managed by AWS for an
Amazon EKS cluster. Each node group uses a version of the Amazon
EKS-optimized Amazon Linux 2 AMI. For more information, see Managed
Node Groups
(https://docs.aws.amazon.com/eks/latest/userguide/managed-node-groups.html)
in the I<Amazon EKS User Guide>.


=head2 DeleteCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteCluster>

Returns: a L<Paws::EKS::DeleteClusterResponse> instance

Deletes the Amazon EKS cluster control plane.

If you have active services in your cluster that are associated with a
load balancer, you must delete those services before deleting the
cluster so that the load balancers are deleted properly. Otherwise, you
can have orphaned resources in your VPC that prevent you from being
able to delete the VPC. For more information, see Deleting a Cluster
(https://docs.aws.amazon.com/eks/latest/userguide/delete-cluster.html)
in the I<Amazon EKS User Guide>.

If you have managed node groups attached to the cluster, you must
delete them first. For more information, see DeleteNodegroup.


=head2 DeleteNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DeleteNodegroup>

Returns: a L<Paws::EKS::DeleteNodegroupResponse> instance

Deletes an Amazon EKS node group for a cluster.


=head2 DescribeCluster

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeCluster>

Returns: a L<Paws::EKS::DescribeClusterResponse> instance

Returns descriptive information about an Amazon EKS cluster.

The API server endpoint and certificate authority data returned by this
operation are required for C<kubelet> and C<kubectl> to communicate
with your Kubernetes API server. For more information, see Create a
kubeconfig for Amazon EKS
(https://docs.aws.amazon.com/eks/latest/userguide/create-kubeconfig.html).

The API server endpoint and certificate authority data aren't available
until the cluster reaches the C<ACTIVE> state.


=head2 DescribeNodegroup

=over

=item ClusterName => Str

=item NodegroupName => Str


=back

Each argument is described in detail in: L<Paws::EKS::DescribeNodegroup>

Returns: a L<Paws::EKS::DescribeNodegroupResponse> instance

Returns descriptive information about an Amazon EKS node group.


=head2 DescribeUpdate

=over

=item Name => Str

=item UpdateId => Str

=item [NodegroupName => Str]


=back

Each argument is described in detail in: L<Paws::EKS::DescribeUpdate>

Returns: a L<Paws::EKS::DescribeUpdateResponse> instance

Returns descriptive information about an update against your Amazon EKS
cluster or associated managed node group.

When the status of the update is C<Succeeded>, the update is complete.
If an update fails, the status is C<Failed>, and an error detail
explains the reason for the failure.


=head2 ListClusters

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListClusters>

Returns: a L<Paws::EKS::ListClustersResponse> instance

Lists the Amazon EKS clusters in your AWS account in the specified
Region.


=head2 ListNodegroups

=over

=item ClusterName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListNodegroups>

Returns: a L<Paws::EKS::ListNodegroupsResponse> instance

Lists the Amazon EKS node groups associated with the specified cluster
in your AWS account in the specified Region.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::EKS::ListTagsForResource>

Returns: a L<Paws::EKS::ListTagsForResourceResponse> instance

List the tags for an Amazon EKS resource.


=head2 ListUpdates

=over

=item Name => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [NodegroupName => Str]


=back

Each argument is described in detail in: L<Paws::EKS::ListUpdates>

Returns: a L<Paws::EKS::ListUpdatesResponse> instance

Lists the updates associated with an Amazon EKS cluster or managed node
group in your AWS account, in the specified Region.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => EKS_TagMap


=back

Each argument is described in detail in: L<Paws::EKS::TagResource>

Returns: a L<Paws::EKS::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are deleted as well. Tags that
you create for Amazon EKS resources do not propagate to any other
resources associated with the cluster. For example, if you tag a
cluster with this operation, that tag does not automatically propagate
to the subnets and worker nodes associated with the cluster.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EKS::UntagResource>

Returns: a L<Paws::EKS::UntagResourceResponse> instance

Deletes specified tags from a resource.


=head2 UpdateClusterConfig

=over

=item Name => Str

=item [ClientRequestToken => Str]

=item [Logging => EKS_Logging]

=item [ResourcesVpcConfig => EKS_VpcConfigRequest]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateClusterConfig>

Returns: a L<Paws::EKS::UpdateClusterConfigResponse> instance

Updates an Amazon EKS cluster configuration. Your cluster continues to
function during the update. The response output includes an update ID
that you can use to track the status of your cluster update with the
DescribeUpdate API operation.

You can use this API operation to enable or disable exporting the
Kubernetes control plane logs for your cluster to CloudWatch Logs. By
default, cluster control plane logs aren't exported to CloudWatch Logs.
For more information, see Amazon EKS Cluster Control Plane Logs
(https://docs.aws.amazon.com/eks/latest/userguide/control-plane-logs.html)
in the I< I<Amazon EKS User Guide> >.

CloudWatch Logs ingestion, archive storage, and data scanning rates
apply to exported control plane logs. For more information, see Amazon
CloudWatch Pricing (http://aws.amazon.com/cloudwatch/pricing/).

You can also use this API operation to enable or disable public and
private access to your cluster's Kubernetes API server endpoint. By
default, public access is enabled, and private access is disabled. For
more information, see Amazon EKS Cluster Endpoint Access Control
(https://docs.aws.amazon.com/eks/latest/userguide/cluster-endpoint.html)
in the I< I<Amazon EKS User Guide> >.

At this time, you can not update the subnets or security group IDs for
an existing cluster.

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to C<UPDATING>
(this status transition is eventually consistent). When the update is
complete (either C<Failed> or C<Successful>), the cluster status moves
to C<Active>.


=head2 UpdateClusterVersion

=over

=item Name => Str

=item Version => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateClusterVersion>

Returns: a L<Paws::EKS::UpdateClusterVersionResponse> instance

Updates an Amazon EKS cluster to the specified Kubernetes version. Your
cluster continues to function during the update. The response output
includes an update ID that you can use to track the status of your
cluster update with the DescribeUpdate API operation.

Cluster updates are asynchronous, and they should finish within a few
minutes. During an update, the cluster status moves to C<UPDATING>
(this status transition is eventually consistent). When the update is
complete (either C<Failed> or C<Successful>), the cluster status moves
to C<Active>.

If your cluster has managed node groups attached to it, all of your
node groupsE<rsquo> Kubernetes versions must match the clusterE<rsquo>s
Kubernetes version in order to update the cluster to a new Kubernetes
version.


=head2 UpdateNodegroupConfig

=over

=item ClusterName => Str

=item NodegroupName => Str

=item [ClientRequestToken => Str]

=item [Labels => EKS_UpdateLabelsPayload]

=item [ScalingConfig => EKS_NodegroupScalingConfig]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateNodegroupConfig>

Returns: a L<Paws::EKS::UpdateNodegroupConfigResponse> instance

Updates an Amazon EKS managed node group configuration. Your node group
continues to function during the update. The response output includes
an update ID that you can use to track the status of your node group
update with the DescribeUpdate API operation. Currently you can update
the Kubernetes labels for a node group or the scaling configuration.


=head2 UpdateNodegroupVersion

=over

=item ClusterName => Str

=item NodegroupName => Str

=item [ClientRequestToken => Str]

=item [Force => Bool]

=item [ReleaseVersion => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::EKS::UpdateNodegroupVersion>

Returns: a L<Paws::EKS::UpdateNodegroupVersionResponse> instance

Updates the Kubernetes version or AMI version of an Amazon EKS managed
node group.

You can update to the latest available AMI version of a node group's
current Kubernetes version by not specifying a Kubernetes version in
the request. You can update to the latest AMI version of your cluster's
current Kubernetes version by specifying your cluster's Kubernetes
version in the request. For more information, see Amazon EKS-Optimized
Linux AMI Versions
(https://docs.aws.amazon.com/eks/latest/userguide/eks-linux-ami-versions.html)
in the I<Amazon EKS User Guide>.

You cannot roll back a node group to an earlier Kubernetes version or
AMI version.

When a node in a managed node group is terminated due to a scaling
action or update, the pods in that node are drained first. Amazon EKS
attempts to drain the nodes gracefully and will fail if it is unable to
do so. You can C<force> the update if Amazon EKS is unable to drain the
nodes as a result of a pod disruption budget issue.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllClusters(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllClusters([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - clusters, passing the object as the first parameter, and the string 'clusters' as the second parameter 

If not, it will return a a L<Paws::EKS::ListClustersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNodegroups(sub { },ClusterName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllNodegroups(ClusterName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - nodegroups, passing the object as the first parameter, and the string 'nodegroups' as the second parameter 

If not, it will return a a L<Paws::EKS::ListNodegroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUpdates(sub { },Name => Str, [MaxResults => Int, NextToken => Str, NodegroupName => Str])

=head2 ListAllUpdates(Name => Str, [MaxResults => Int, NextToken => Str, NodegroupName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - updateIds, passing the object as the first parameter, and the string 'updateIds' as the second parameter 

If not, it will return a a L<Paws::EKS::ListUpdatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

