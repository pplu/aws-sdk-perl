package Paws::AppMesh;
  use Moose;
  sub service { 'appmesh' }
  sub signing_name { 'appmesh' }
  sub version { '2019-01-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateGatewayRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub CreateVirtualGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::CreateVirtualGateway', @_);
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
  sub DeleteGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteGatewayRoute', @_);
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
  sub DeleteVirtualGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DeleteVirtualGateway', @_);
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
  sub DescribeGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeGatewayRoute', @_);
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
  sub DescribeVirtualGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::DescribeVirtualGateway', @_);
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
  sub ListGatewayRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListGatewayRoutes', @_);
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
  sub ListVirtualGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::ListVirtualGateways', @_);
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
  sub UpdateGatewayRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateGatewayRoute', @_);
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
  sub UpdateVirtualGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppMesh::UpdateVirtualGateway', @_);
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
  
  sub ListAllGatewayRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGatewayRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGatewayRoutes(@_, nextToken => $next_result->nextToken);
        push @{ $result->gatewayRoutes }, @{ $next_result->gatewayRoutes };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'gatewayRoutes') foreach (@{ $result->gatewayRoutes });
        $result = $self->ListGatewayRoutes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'gatewayRoutes') foreach (@{ $result->gatewayRoutes });
    }

    return undef
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
  sub ListAllVirtualGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListVirtualGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListVirtualGateways(@_, nextToken => $next_result->nextToken);
        push @{ $result->virtualGateways }, @{ $next_result->virtualGateways };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'virtualGateways') foreach (@{ $result->virtualGateways });
        $result = $self->ListVirtualGateways(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'virtualGateways') foreach (@{ $result->virtualGateways });
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


  sub operations { qw/CreateGatewayRoute CreateMesh CreateRoute CreateVirtualGateway CreateVirtualNode CreateVirtualRouter CreateVirtualService DeleteGatewayRoute DeleteMesh DeleteRoute DeleteVirtualGateway DeleteVirtualNode DeleteVirtualRouter DeleteVirtualService DescribeGatewayRoute DescribeMesh DescribeRoute DescribeVirtualGateway DescribeVirtualNode DescribeVirtualRouter DescribeVirtualService ListGatewayRoutes ListMeshes ListRoutes ListTagsForResource ListVirtualGateways ListVirtualNodes ListVirtualRouters ListVirtualServices TagResource UntagResource UpdateGatewayRoute UpdateMesh UpdateRoute UpdateVirtualGateway UpdateVirtualNode UpdateVirtualRouter UpdateVirtualService / }

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
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
in the I<Amazon Elastic Container Service Developer Guide>. Kubernetes
C<kube-dns> and C<coredns> are supported. For more information, see DNS
for Services and Pods
(https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
in the Kubernetes documentation.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh-2019-01-25>


=head1 METHODS

=head2 CreateGatewayRoute

=over

=item GatewayRouteName => Str

=item MeshName => Str

=item Spec => L<Paws::AppMesh::GatewayRouteSpec>

=item VirtualGatewayName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateGatewayRoute>

Returns: a L<Paws::AppMesh::CreateGatewayRouteOutput> instance

Creates a gateway route.

A gateway route is attached to a virtual gateway and routes traffic to
an existing virtual service. If a route matches a request, it can
distribute traffic to a target virtual service.

For more information about gateway routes, see Gateway routes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html).


=head2 CreateMesh

=over

=item MeshName => Str

=item [ClientToken => Str]

=item [Spec => L<Paws::AppMesh::MeshSpec>]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateMesh>

Returns: a L<Paws::AppMesh::CreateMeshOutput> instance

Creates a service mesh.

A service mesh is a logical boundary for network traffic between
services that are represented by resources within the mesh. After you
create your service mesh, you can create virtual services, virtual
nodes, virtual routers, and routes to distribute traffic between the
applications in your mesh.

For more information about service meshes, see Service meshes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html).


=head2 CreateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => L<Paws::AppMesh::RouteSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateRoute>

Returns: a L<Paws::AppMesh::CreateRouteOutput> instance

Creates a route that is associated with a virtual router.

You can route several different protocols and define a retry policy for
a route. Traffic can be routed to one or more virtual nodes.

For more information about routes, see Routes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html).


=head2 CreateVirtualGateway

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualGatewaySpec>

=item VirtualGatewayName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualGateway>

Returns: a L<Paws::AppMesh::CreateVirtualGatewayOutput> instance

Creates a virtual gateway.

A virtual gateway allows resources outside your mesh to communicate to
resources that are inside your mesh. The virtual gateway represents an
Envoy proxy running in an Amazon ECS task, in a Kubernetes service, or
on an Amazon EC2 instance. Unlike a virtual node, which represents an
Envoy running with an application, a virtual gateway represents Envoy
deployed by itself.

For more information about virtual gateways, see Virtual gateways
(https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html).


=head2 CreateVirtualNode

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualNodeSpec>

=item VirtualNodeName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualNode>

Returns: a L<Paws::AppMesh::CreateVirtualNodeOutput> instance

Creates a virtual node within a service mesh.

A virtual node acts as a logical pointer to a particular task group,
such as an Amazon ECS service or a Kubernetes deployment. When you
create a virtual node, you can specify the service discovery
information for your task group, and whether the proxy running in a
task group will communicate with other proxies using Transport Layer
Security (TLS).

You define a C<listener> for any inbound traffic that your virtual node
expects. Any virtual service that your virtual node expects to
communicate to is specified as a C<backend>.

The response metadata for your new virtual node contains the C<arn>
that is associated with the virtual node. Set this value to the full
ARN; for example,
C<arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp>)
as the C<APPMESH_RESOURCE_ARN> environment variable for your task
group's Envoy proxy container in your task definition or pod spec. This
is then mapped to the C<node.id> and C<node.cluster> Envoy parameters.

By default, App Mesh uses the name of the resource you specified in
C<APPMESH_RESOURCE_ARN> when Envoy is referring to itself in metrics
and traces. You can override this behavior by setting the
C<APPMESH_RESOURCE_CLUSTER> environment variable with your own name.

AWS Cloud Map is not available in the eu-south-1 Region.

For more information about virtual nodes, see Virtual nodes
(https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html).
You must be using C<1.15.0> or later of the Envoy image when setting
these variables. For more information about App Mesh Envoy variables,
see Envoy image
(https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html) in
the AWS App Mesh User Guide.


=head2 CreateVirtualRouter

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualRouterSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


=back

Each argument is described in detail in: L<Paws::AppMesh::CreateVirtualRouter>

Returns: a L<Paws::AppMesh::CreateVirtualRouterOutput> instance

Creates a virtual router within a service mesh.

Specify a C<listener> for any inbound traffic that your virtual router
receives. Create a virtual router for each protocol and port that you
need to route. Virtual routers handle traffic for one or more virtual
services within your mesh. After you create your virtual router, create
and associate routes for your virtual router that direct incoming
requests to different virtual nodes.

For more information about virtual routers, see Virtual routers
(https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html).


=head2 CreateVirtualService

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualServiceSpec>

=item VirtualServiceName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]

=item [Tags => ArrayRef[L<Paws::AppMesh::TagRef>]]


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

For more information about virtual services, see Virtual services
(https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html).


=head2 DeleteGatewayRoute

=over

=item GatewayRouteName => Str

=item MeshName => Str

=item VirtualGatewayName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteGatewayRoute>

Returns: a L<Paws::AppMesh::DeleteGatewayRouteOutput> instance

Deletes an existing gateway route.


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

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteRoute>

Returns: a L<Paws::AppMesh::DeleteRouteOutput> instance

Deletes an existing route.


=head2 DeleteVirtualGateway

=over

=item MeshName => Str

=item VirtualGatewayName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteVirtualGateway>

Returns: a L<Paws::AppMesh::DeleteVirtualGatewayOutput> instance

Deletes an existing virtual gateway. You cannot delete a virtual
gateway if any gateway routes are associated to it.


=head2 DeleteVirtualNode

=over

=item MeshName => Str

=item VirtualNodeName => Str

=item [MeshOwner => Str]


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

=item [MeshOwner => Str]


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

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DeleteVirtualService>

Returns: a L<Paws::AppMesh::DeleteVirtualServiceOutput> instance

Deletes an existing virtual service.


=head2 DescribeGatewayRoute

=over

=item GatewayRouteName => Str

=item MeshName => Str

=item VirtualGatewayName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeGatewayRoute>

Returns: a L<Paws::AppMesh::DescribeGatewayRouteOutput> instance

Describes an existing gateway route.


=head2 DescribeMesh

=over

=item MeshName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeMesh>

Returns: a L<Paws::AppMesh::DescribeMeshOutput> instance

Describes an existing service mesh.


=head2 DescribeRoute

=over

=item MeshName => Str

=item RouteName => Str

=item VirtualRouterName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeRoute>

Returns: a L<Paws::AppMesh::DescribeRouteOutput> instance

Describes an existing route.


=head2 DescribeVirtualGateway

=over

=item MeshName => Str

=item VirtualGatewayName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualGateway>

Returns: a L<Paws::AppMesh::DescribeVirtualGatewayOutput> instance

Describes an existing virtual gateway.


=head2 DescribeVirtualNode

=over

=item MeshName => Str

=item VirtualNodeName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualNode>

Returns: a L<Paws::AppMesh::DescribeVirtualNodeOutput> instance

Describes an existing virtual node.


=head2 DescribeVirtualRouter

=over

=item MeshName => Str

=item VirtualRouterName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualRouter>

Returns: a L<Paws::AppMesh::DescribeVirtualRouterOutput> instance

Describes an existing virtual router.


=head2 DescribeVirtualService

=over

=item MeshName => Str

=item VirtualServiceName => Str

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::DescribeVirtualService>

Returns: a L<Paws::AppMesh::DescribeVirtualServiceOutput> instance

Describes an existing virtual service.


=head2 ListGatewayRoutes

=over

=item MeshName => Str

=item VirtualGatewayName => Str

=item [Limit => Int]

=item [MeshOwner => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListGatewayRoutes>

Returns: a L<Paws::AppMesh::ListGatewayRoutesOutput> instance

Returns a list of existing gateway routes that are associated to a
virtual gateway.


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

=item [MeshOwner => Str]

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


=head2 ListVirtualGateways

=over

=item MeshName => Str

=item [Limit => Int]

=item [MeshOwner => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualGateways>

Returns: a L<Paws::AppMesh::ListVirtualGatewaysOutput> instance

Returns a list of existing virtual gateways in a service mesh.


=head2 ListVirtualNodes

=over

=item MeshName => Str

=item [Limit => Int]

=item [MeshOwner => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualNodes>

Returns: a L<Paws::AppMesh::ListVirtualNodesOutput> instance

Returns a list of existing virtual nodes.


=head2 ListVirtualRouters

=over

=item MeshName => Str

=item [Limit => Int]

=item [MeshOwner => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualRouters>

Returns: a L<Paws::AppMesh::ListVirtualRoutersOutput> instance

Returns a list of existing virtual routers in a service mesh.


=head2 ListVirtualServices

=over

=item MeshName => Str

=item [Limit => Int]

=item [MeshOwner => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::ListVirtualServices>

Returns: a L<Paws::AppMesh::ListVirtualServicesOutput> instance

Returns a list of existing virtual services in a service mesh.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::AppMesh::TagRef>]


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


=head2 UpdateGatewayRoute

=over

=item GatewayRouteName => Str

=item MeshName => Str

=item Spec => L<Paws::AppMesh::GatewayRouteSpec>

=item VirtualGatewayName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateGatewayRoute>

Returns: a L<Paws::AppMesh::UpdateGatewayRouteOutput> instance

Updates an existing gateway route that is associated to a specified
virtual gateway in a service mesh.


=head2 UpdateMesh

=over

=item MeshName => Str

=item [ClientToken => Str]

=item [Spec => L<Paws::AppMesh::MeshSpec>]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateMesh>

Returns: a L<Paws::AppMesh::UpdateMeshOutput> instance

Updates an existing service mesh.


=head2 UpdateRoute

=over

=item MeshName => Str

=item RouteName => Str

=item Spec => L<Paws::AppMesh::RouteSpec>

=item VirtualRouterName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateRoute>

Returns: a L<Paws::AppMesh::UpdateRouteOutput> instance

Updates an existing route for a specified service mesh and virtual
router.


=head2 UpdateVirtualGateway

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualGatewaySpec>

=item VirtualGatewayName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualGateway>

Returns: a L<Paws::AppMesh::UpdateVirtualGatewayOutput> instance

Updates an existing virtual gateway in a specified service mesh.


=head2 UpdateVirtualNode

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualNodeSpec>

=item VirtualNodeName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]


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

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualRouter>

Returns: a L<Paws::AppMesh::UpdateVirtualRouterOutput> instance

Updates an existing virtual router in a specified service mesh.


=head2 UpdateVirtualService

=over

=item MeshName => Str

=item Spec => L<Paws::AppMesh::VirtualServiceSpec>

=item VirtualServiceName => Str

=item [ClientToken => Str]

=item [MeshOwner => Str]


=back

Each argument is described in detail in: L<Paws::AppMesh::UpdateVirtualService>

Returns: a L<Paws::AppMesh::UpdateVirtualServiceOutput> instance

Updates an existing virtual service in a specified service mesh.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllGatewayRoutes(sub { },MeshName => Str, VirtualGatewayName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllGatewayRoutes(MeshName => Str, VirtualGatewayName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - gatewayRoutes, passing the object as the first parameter, and the string 'gatewayRoutes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListGatewayRoutesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMeshes(sub { },[Limit => Int, NextToken => Str])

=head2 ListAllMeshes([Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - meshes, passing the object as the first parameter, and the string 'meshes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListMeshesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllRoutes(sub { },MeshName => Str, VirtualRouterName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllRoutes(MeshName => Str, VirtualRouterName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - routes, passing the object as the first parameter, and the string 'routes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListRoutesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [Limit => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [Limit => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualGateways(sub { },MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllVirtualGateways(MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualGateways, passing the object as the first parameter, and the string 'virtualGateways' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualGatewaysOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualNodes(sub { },MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllVirtualNodes(MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualNodes, passing the object as the first parameter, and the string 'virtualNodes' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualNodesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualRouters(sub { },MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllVirtualRouters(MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualRouters, passing the object as the first parameter, and the string 'virtualRouters' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualRoutersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllVirtualServices(sub { },MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])

=head2 ListAllVirtualServices(MeshName => Str, [Limit => Int, MeshOwner => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - virtualServices, passing the object as the first parameter, and the string 'virtualServices' as the second parameter 

If not, it will return a a L<Paws::AppMesh::ListVirtualServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

