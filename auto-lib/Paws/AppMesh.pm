package Paws::AppMesh;
  use Moose;
  sub service { 'appmesh' }
  sub signing_name { 'appmesh' }
  sub version { '2018-10-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
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


  sub operations { qw/CreateMesh CreateRoute CreateVirtualNode CreateVirtualRouter DeleteMesh DeleteRoute DeleteVirtualNode DeleteVirtualRouter DescribeMesh DescribeRoute DescribeVirtualNode DescribeVirtualRouter ListMeshes ListRoutes ListVirtualNodes ListVirtualRouters UpdateRoute UpdateVirtualNode UpdateVirtualRouter / }

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
easy to monitor and control containerized microservices. App Mesh
standardizes how your microservices communicate, giving you end-to-end
visibility and helping to ensure high-availability for your
applications.

App Mesh gives you consistent visibility and network traffic controls
for every microservice in an application. You can use App Mesh with
Amazon ECS (using the Amazon EC2 launch type), Amazon EKS, and
Kubernetes on AWS.

App Mesh supports containerized microservice applications that use
service discovery naming for their components. To use App Mesh, you
must have a containerized application running on Amazon EC2 instances,
hosted in either Amazon ECS, Amazon EKS, or Kubernetes on AWS. For more
information about service discovery on Amazon ECS, see Service
Discovery
(http://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
in the I<Amazon Elastic Container Service Developer Guide>. Kubernetes
C<kube-dns> is supported. For more information, see DNS for Services
and Pods
(https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
in the Kubernetes documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh-2018-10-01>


=head1 METHODS

=head2 CreateMesh

=over

=item MeshName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateMesh>

Returns: a L<Paws::AppMesh::CreateMeshOutput> instance

Creates a new service mesh. A service mesh is a logical boundary for
network traffic between the services that reside within it.

After you create your service mesh, you can create virtual nodes,
virtual routers, and routes to distribute traffic between the
applications in your mesh.


=head2 CreateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => L<Paws::AppMesh::RouteSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateRoute>

Returns: a L<Paws::AppMesh::CreateRouteOutput> instance

Creates a new route that is associated with a virtual router.

You can use the C<prefix> parameter in your route specification for
path-based routing of requests. For example, if your virtual router
service name is C<my-service.local>, and you want the route to match
requests to C<my-service.local/metrics>, then your prefix should be
C</metrics>.

If your route matches a request, you can distribute traffic to one or
more target virtual nodes with relative weighting.


=head2 CreateVirtualNode

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualNodeSpec>

=item VirtualNodeName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualNode>

Returns: a L<Paws::AppMesh::CreateVirtualNodeOutput> instance

Creates a new virtual node within a service mesh.

A virtual node acts as logical pointer to a particular task group, such
as an Amazon ECS service or a Kubernetes deployment. When you create a
virtual node, you must specify the DNS service discovery name for your
task group.

Any inbound traffic that your virtual node expects should be specified
as a C<listener>. Any outbound traffic that your virtual node expects
to reach should be specified as a C<backend>.

The response metadata for your new virtual node contains the C<arn>
that is associated with the virtual node. Set this value (either the
full ARN or the truncated resource name, for example,
C<mesh/default/virtualNode/simpleapp>, as the
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

=item Spec => L<Paws::AppMesh::VirtualRouterSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualRouter>

Returns: a L<Paws::AppMesh::CreateVirtualRouterOutput> instance

Creates a new virtual router within a service mesh.

Virtual routers handle traffic for one or more service names within
your mesh. After you create your virtual router, create and associate
routes for your virtual router that direct incoming requests to
different virtual nodes.


=head2 DeleteMesh

=over

=item MeshName => Str


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteMesh>

Returns: a L<Paws::AppMesh::DeleteMeshOutput> instance

Deletes an existing service mesh.

You must delete all resources (routes, virtual routers, virtual nodes)
in the service mesh before you can delete the mesh itself.


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


=head2 UpdateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => L<Paws::AppMesh::RouteSpec>

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

=item Spec => L<Paws::AppMesh::VirtualNodeSpec>

=item VirtualNodeName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualNode>

Returns: a L<Paws::AppMesh::UpdateVirtualNodeOutput> instance

Updates an existing virtual node in a specified service mesh.


=head2 UpdateVirtualRouter

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualRouterSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualRouter>

Returns: a L<Paws::AppMesh::UpdateVirtualRouterOutput> instance

Updates an existing virtual router in a specified service mesh.




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





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

