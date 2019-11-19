package Paws::AppMesh;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'appmesh' }
  sub signing_name { 'appmesh' }
  sub version { '2019-01-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateMesh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateMesh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVirtualNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateVirtualNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVirtualRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateVirtualRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVirtualService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateVirtualService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMesh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteMesh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVirtualNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteVirtualNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVirtualRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteVirtualRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVirtualService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteVirtualService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMesh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeMesh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeVirtualNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeVirtualRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVirtualService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeVirtualService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMeshes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListMeshes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualNodes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListVirtualNodes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualRouters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListVirtualRouters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVirtualServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListVirtualServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMesh {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateMesh', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVirtualNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateVirtualNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVirtualRouter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateVirtualRouter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVirtualService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateVirtualService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllMeshes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMeshes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMeshes(@_, nextToken => $next_result->nextToken);
        push @{ $result->meshes }, @{ $next_result->meshes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'meshes') foreach (@{ $result->meshes });
        $result = $self->ListMeshes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'meshes') foreach (@{ $result->meshes });
    }

    return undef
  }
  sub ListAllRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListRoutes(@_, nextToken => $next_result->nextToken);
        push @{ $result->routes }, @{ $next_result->routes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'routes') foreach (@{ $result->routes });
        $result = $self->ListRoutes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'routes') foreach (@{ $result->routes });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTagsForResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->ListTagsForResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
    }

    return undef
  }
  sub ListAllVirtualNodes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualNodes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVirtualNodes(@_, nextToken => $next_result->nextToken);
        push @{ $result->virtualNodes }, @{ $next_result->virtualNodes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'virtualNodes') foreach (@{ $result->virtualNodes });
        $result = $self->ListVirtualNodes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'virtualNodes') foreach (@{ $result->virtualNodes });
    }

    return undef
  }
  sub ListAllVirtualRouters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualRouters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVirtualRouters(@_, nextToken => $next_result->nextToken);
        push @{ $result->virtualRouters }, @{ $next_result->virtualRouters };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'virtualRouters') foreach (@{ $result->virtualRouters });
        $result = $self->ListVirtualRouters(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'virtualRouters') foreach (@{ $result->virtualRouters });
    }

    return undef
  }
  sub ListAllVirtualServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVirtualServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->virtualServices }, @{ $next_result->virtualServices };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'virtualServices') foreach (@{ $result->virtualServices });
        $result = $self->ListVirtualServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'virtualServices') foreach (@{ $result->virtualServices });
    }

    return undef
  }


  sub operations { qw/CreateMesh CreateRoute CreateVirtualNode CreateVirtualRouter CreateVirtualService DeleteMesh DeleteRoute DeleteVirtualNode DeleteVirtualRouter DeleteVirtualService DescribeMesh DescribeRoute DescribeVirtualNode DescribeVirtualRouter DescribeVirtualService ListMeshes ListRoutes ListTagsForResource ListVirtualNodes ListVirtualRouters ListVirtualServices TagResource UntagResource UpdateMesh UpdateRoute UpdateVirtualNode UpdateVirtualRouter UpdateVirtualService / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh - Perl Interface to AWS AWS App Mesh

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppMesh');
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

AWS App Mesh is a service mesh based on the Envoy proxy that makes it
easy to monitor and control microservices. App Mesh standardizes how
your microservices communicate, giving you end-to-end visibility and
helping to ensure high availability for your applications.

App Mesh gives you consistent visibility and network traffic controls
for every microservice in an application. You can use App Mesh with AWS
Fargate, Amazon ECS, Amazon EKS, Kubernetes on AWS, and Amazon EC2.

App Mesh supports microservice applications that use service discovery
naming for their components. For more information about service
discovery on Amazon ECS, see Service Discovery
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
in the I<Amazon Elastic Container Service Developer Guide>. Kubernetes
C<kube-dns> and C<coredns> are supported. For more information, see DNS
for Services and Pods
(https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
in the Kubernetes documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25>


=head1 METHODS

=head2 CreateMesh

=over

=item MeshName => Str

=item [ClientToken => Str]

=item [Spec => AppMesh_MeshSpec]

=item [Tags => ArrayRef[AppMesh_TagRef]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateMesh>

Returns: a L<Paws::AppMesh::CreateMeshOutput> instance

Creates a service mesh. A service mesh is a logical boundary for
network traffic between the services that reside within it.

After you create your service mesh, you can create virtual services,
virtual nodes, virtual routers, and routes to distribute traffic
between the applications in your mesh.


=head2 CreateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => AppMesh_RouteSpec

=item VirtualRouterName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[AppMesh_TagRef]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateRoute>

Returns: a L<Paws::AppMesh::CreateRouteOutput> instance

Creates a route that is associated with a virtual router.

You can use the C<prefix> parameter in your route specification for
path-based routing of requests. For example, if your virtual service
name is C<my-service.local> and you want the route to match requests to
C<my-service.local/metrics>, your prefix should be C</metrics>.

If your route matches a request, you can distribute traffic to one or
more target virtual nodes with relative weighting.


=head2 CreateVirtualNode

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualNodeSpec

=item VirtualNodeName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[AppMesh_TagRef]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualNode>

Returns: a L<Paws::AppMesh::CreateVirtualNodeOutput> instance

Creates a virtual node within a service mesh.

A virtual node acts as a logical pointer to a particular task group,
such as an Amazon ECS service or a Kubernetes deployment. When you
create a virtual node, you can specify the service discovery
information for your task group.

Any inbound traffic that your virtual node expects should be specified
as a C<listener>. Any outbound traffic that your virtual node expects
to reach should be specified as a C<backend>.

The response metadata for your new virtual node contains the C<arn>
that is associated with the virtual node. Set this value (either the
full ARN or the truncated resource name: for example,
C<mesh/default/virtualNode/simpleapp>) as the
C<APPMESH_VIRTUAL_NODE_NAME> environment variable for your task group's
Envoy proxy container in your task definition or pod spec. This is then
mapped to the C<node.id> and C<node.cluster> Envoy parameters.

If you require your Envoy stats or tracing to use a different name, you
can override the C<node.cluster> value that is set by
C<APPMESH_VIRTUAL_NODE_NAME> with the C<APPMESH_VIRTUAL_NODE_CLUSTER>
environment variable.


=head2 CreateVirtualRouter

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualRouterSpec

=item VirtualRouterName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[AppMesh_TagRef]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualRouter>

Returns: a L<Paws::AppMesh::CreateVirtualRouterOutput> instance

Creates a virtual router within a service mesh.

Any inbound traffic that your virtual router expects should be
specified as a C<listener>.

Virtual routers handle traffic for one or more virtual services within
your mesh. After you create your virtual router, create and associate
routes for your virtual router that direct incoming requests to
different virtual nodes.


=head2 CreateVirtualService

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualServiceSpec

=item VirtualServiceName => Str

=item [ClientToken => Str]

=item [Tags => ArrayRef[AppMesh_TagRef]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualService>

Returns: a L<Paws::AppMesh::CreateVirtualServiceOutput> instance

Creates a virtual service within a service mesh.

A virtual service is an abstraction of a real service that is provided
by a virtual node directly or indirectly by means of a virtual router.
Dependent services call your virtual service by its
C<virtualServiceName>, and those requests are routed to the virtual
node or virtual router that is specified as the provider for the
virtual service.


=head2 DeleteMesh

=over

=item MeshName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteMesh>

Returns: a L<Paws::AppMesh::DeleteMeshOutput> instance

Deletes an existing service mesh.

You must delete all resources (virtual services, routes, virtual
routers, and virtual nodes) in the service mesh before you can delete
the mesh itself.


=head2 DeleteRoute

=over

=item MeshName => Str

=item RouteName => Str

=item VirtualRouterName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteRoute>

Returns: a L<Paws::AppMesh::DeleteRouteOutput> instance

Deletes an existing route.


=head2 DeleteVirtualNode

=over

=item MeshName => Str

=item VirtualNodeName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteVirtualNode>

Returns: a L<Paws::AppMesh::DeleteVirtualNodeOutput> instance

Deletes an existing virtual node.

You must delete any virtual services that list a virtual node as a
service provider before you can delete the virtual node itself.


=head2 DeleteVirtualRouter

=over

=item MeshName => Str

=item VirtualRouterName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteVirtualRouter>

Returns: a L<Paws::AppMesh::DeleteVirtualRouterOutput> instance

Deletes an existing virtual router.

You must delete any routes associated with the virtual router before
you can delete the router itself.


=head2 DeleteVirtualService

=over

=item MeshName => Str

=item VirtualServiceName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteVirtualService>

Returns: a L<Paws::AppMesh::DeleteVirtualServiceOutput> instance

Deletes an existing virtual service.


=head2 DescribeMesh

=over

=item MeshName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeMesh>

Returns: a L<Paws::AppMesh::DescribeMeshOutput> instance

Describes an existing service mesh.


=head2 DescribeRoute

=over

=item MeshName => Str

=item RouteName => Str

=item VirtualRouterName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeRoute>

Returns: a L<Paws::AppMesh::DescribeRouteOutput> instance

Describes an existing route.


=head2 DescribeVirtualNode

=over

=item MeshName => Str

=item VirtualNodeName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualNode>

Returns: a L<Paws::AppMesh::DescribeVirtualNodeOutput> instance

Describes an existing virtual node.


=head2 DescribeVirtualRouter

=over

=item MeshName => Str

=item VirtualRouterName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualRouter>

Returns: a L<Paws::AppMesh::DescribeVirtualRouterOutput> instance

Describes an existing virtual router.


=head2 DescribeVirtualService

=over

=item MeshName => Str

=item VirtualServiceName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualService>

Returns: a L<Paws::AppMesh::DescribeVirtualServiceOutput> instance

Describes an existing virtual service.


=head2 ListMeshes

=over

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListMeshes>

Returns: a L<Paws::AppMesh::ListMeshesOutput> instance

Returns a list of existing service meshes.


=head2 ListRoutes

=over

=item MeshName => Str

=item VirtualRouterName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListRoutes>

Returns: a L<Paws::AppMesh::ListRoutesOutput> instance

Returns a list of existing routes in a service mesh.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListTagsForResource>

Returns: a L<Paws::AppMesh::ListTagsForResourceOutput> instance

List the tags for an App Mesh resource.


=head2 ListVirtualNodes

=over

=item MeshName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualNodes>

Returns: a L<Paws::AppMesh::ListVirtualNodesOutput> instance

Returns a list of existing virtual nodes.


=head2 ListVirtualRouters

=over

=item MeshName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualRouters>

Returns: a L<Paws::AppMesh::ListVirtualRoutersOutput> instance

Returns a list of existing virtual routers in a service mesh.


=head2 ListVirtualServices

=over

=item MeshName => Str

=item [Limit => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualServices>

Returns: a L<Paws::AppMesh::ListVirtualServicesOutput> instance

Returns a list of existing virtual services in a service mesh.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[AppMesh_TagRef]


=back

Each argument is described in detail in: L<Paws::AppMesh::TagResource>

Returns: a L<Paws::AppMesh::TagResourceOutput> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource aren't specified in the
request parameters, they aren't changed. When a resource is deleted,
the tags associated with that resource are also deleted.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppMesh::UntagResource>

Returns: a L<Paws::AppMesh::UntagResourceOutput> instance

Deletes specified tags from a resource.


=head2 UpdateMesh

=over

=item MeshName => Str

=item [ClientToken => Str]

=item [Spec => AppMesh_MeshSpec]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateMesh>

Returns: a L<Paws::AppMesh::UpdateMeshOutput> instance

Updates an existing service mesh.


=head2 UpdateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => AppMesh_RouteSpec

=item VirtualRouterName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateRoute>

Returns: a L<Paws::AppMesh::UpdateRouteOutput> instance

Updates an existing route for a specified service mesh and virtual
router.


=head2 UpdateVirtualNode

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualNodeSpec

=item VirtualNodeName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualNode>

Returns: a L<Paws::AppMesh::UpdateVirtualNodeOutput> instance

Updates an existing virtual node in a specified service mesh.


=head2 UpdateVirtualRouter

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualRouterSpec

=item VirtualRouterName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualRouter>

Returns: a L<Paws::AppMesh::UpdateVirtualRouterOutput> instance

Updates an existing virtual router in a specified service mesh.


=head2 UpdateVirtualService

=over

=item MeshName => Str

=item Spec => AppMesh_VirtualServiceSpec

=item VirtualServiceName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualService>

Returns: a L<Paws::AppMesh::UpdateVirtualServiceOutput> instance

Updates an existing virtual service in a specified service mesh.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllMeshes(sub { },[Limit => Int, NextToken => Str])

=head2 ListAllMeshes([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - meshes, passing the object as the first parameter, and the string 'meshes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListMeshesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutes(sub { },MeshName => Str, VirtualRouterName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllRoutes(MeshName => Str, VirtualRouterName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - routes, passing the object as the first parameter, and the string 'routes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListRoutesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [Limit => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualNodes(sub { },MeshName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllVirtualNodes(MeshName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualNodes, passing the object as the first parameter, and the string 'virtualNodes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualNodesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualRouters(sub { },MeshName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllVirtualRouters(MeshName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualRouters, passing the object as the first parameter, and the string 'virtualRouters' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualRoutersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualServices(sub { },MeshName => Str, [Limit => Int, NextToken => Str])

=head2 ListAllVirtualServices(MeshName => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualServices, passing the object as the first parameter, and the string 'virtualServices' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

