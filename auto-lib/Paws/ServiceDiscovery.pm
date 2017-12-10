package Paws::ServiceDiscovery;
  use Moose;
  sub service { 'servicediscovery' }
  sub version { '2017-03-14' }
  sub target_prefix { 'Route53AutoNaming_v20170314' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreatePrivateDnsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::CreatePrivateDnsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePublicDnsNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::CreatePublicDnsNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::DeleteNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::DeregisterInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::GetInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstancesHealthStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::GetInstancesHealthStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::GetNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOperation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::GetOperation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::ListNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOperations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::ListOperations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::RegisterInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreatePrivateDnsNamespace CreatePublicDnsNamespace CreateService DeleteNamespace DeleteService DeregisterInstance GetInstance GetInstancesHealthStatus GetNamespace GetOperation GetService ListInstances ListNamespaces ListOperations ListServices RegisterInstance UpdateService / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery - Perl Interface to AWS Amazon Route 53 Auto Naming

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ServiceDiscovery');
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

Amazon Route 53 autonaming lets you configure public or private
namespaces that your microservice applications run in. When instances
of the service become available, you can call the autonaming API to
register the instance, and Amazon Route 53 automatically creates up to
five DNS records and an optional health check. Clients that submit DNS
queries for the service receive an answer that contains up to eight
healthy records.

=head1 METHODS

=head2 CreatePrivateDnsNamespace(Name => Str, Vpc => Str, [CreatorRequestId => Str, Description => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreatePrivateDnsNamespace>

Returns: a L<Paws::ServiceDiscovery::CreatePrivateDnsNamespaceResponse> instance

Creates a private namespace based on DNS, which will be visible only
inside a specified Amazon VPC. The namespace defines your service
naming scheme. For example, if you name your namespace C<example.com>
and name your service C<backend>, the resulting DNS name for the
service will be C<backend.example.com>. You can associate more than one
service with the same namespace.


=head2 CreatePublicDnsNamespace(Name => Str, [CreatorRequestId => Str, Description => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreatePublicDnsNamespace>

Returns: a L<Paws::ServiceDiscovery::CreatePublicDnsNamespaceResponse> instance

Creates a public namespace based on DNS, which will be visible on the
internet. The namespace defines your service naming scheme. For
example, if you name your namespace C<example.com> and name your
service C<backend>, the resulting DNS name for the service will be
C<backend.example.com>. You can associate more than one service with
the same namespace.


=head2 CreateService(DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>, Name => Str, [CreatorRequestId => Str, Description => Str, HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>])

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreateService>

Returns: a L<Paws::ServiceDiscovery::CreateServiceResponse> instance

Creates a service, which defines a template for the following entities:

=over

=item *

One to five resource record sets

=item *

Optionally, a health check

=back

After you create the service, you can submit a RegisterInstance
request, and Amazon Route 53 uses the values in the template to create
the specified entities.


=head2 DeleteNamespace(Id => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeleteNamespace>

Returns: a L<Paws::ServiceDiscovery::DeleteNamespaceResponse> instance

Deletes a namespace from the current account. If the namespace still
contains one or more services, the request fails.


=head2 DeleteService(Id => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeleteService>

Returns: a L<Paws::ServiceDiscovery::DeleteServiceResponse> instance

Deletes a specified service. If the service still contains one or more
registered instances, the request fails.


=head2 DeregisterInstance(InstanceId => Str, ServiceId => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeregisterInstance>

Returns: a L<Paws::ServiceDiscovery::DeregisterInstanceResponse> instance

Deletes the resource record sets and the health check, if any, that
Amazon Route 53 created for the specified instance.


=head2 GetInstance(InstanceId => Str, ServiceId => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetInstance>

Returns: a L<Paws::ServiceDiscovery::GetInstanceResponse> instance

Gets information about a specified instance.


=head2 GetInstancesHealthStatus(ServiceId => Str, [Instances => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetInstancesHealthStatus>

Returns: a L<Paws::ServiceDiscovery::GetInstancesHealthStatusResponse> instance

Gets the current health status (C<Healthy>, C<Unhealthy>, or
C<Unknown>) of one or more instances that are associated with a
specified service.


=head2 GetNamespace(Id => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetNamespace>

Returns: a L<Paws::ServiceDiscovery::GetNamespaceResponse> instance

Gets information about a namespace.


=head2 GetOperation(OperationId => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetOperation>

Returns: a L<Paws::ServiceDiscovery::GetOperationResponse> instance

Gets information about any operation that returns an operation ID in
the response, such as a C<CreateService> request. To get a list of
operations that match specified criteria, see ListOperations.


=head2 GetService(Id => Str)

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetService>

Returns: a L<Paws::ServiceDiscovery::GetServiceResponse> instance

Gets the settings for a specified service.


=head2 ListInstances(ServiceId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListInstances>

Returns: a L<Paws::ServiceDiscovery::ListInstancesResponse> instance

Gets summary information about the instances that you created by using
a specified service.


=head2 ListNamespaces([Filters => ArrayRef[L<Paws::ServiceDiscovery::NamespaceFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListNamespaces>

Returns: a L<Paws::ServiceDiscovery::ListNamespacesResponse> instance

Gets information about the namespaces that were created by the current
AWS account.


=head2 ListOperations([Filters => ArrayRef[L<Paws::ServiceDiscovery::OperationFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListOperations>

Returns: a L<Paws::ServiceDiscovery::ListOperationsResponse> instance

Lists operations that match the criteria that you specify.


=head2 ListServices([Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListServices>

Returns: a L<Paws::ServiceDiscovery::ListServicesResponse> instance

Gets settings for all the services that are associated with one or more
specified namespaces.


=head2 RegisterInstance(Attributes => L<Paws::ServiceDiscovery::Attributes>, InstanceId => Str, ServiceId => Str, [CreatorRequestId => Str])

Each argument is described in detail in: L<Paws::ServiceDiscovery::RegisterInstance>

Returns: a L<Paws::ServiceDiscovery::RegisterInstanceResponse> instance

Creates one or more resource record sets and optionally a health check
based on the settings in a specified service. When you submit a
C<RegisterInstance> request, Amazon Route 53 does the following:

=over

=item *

Creates a resource record set for each resource record set template in
the service

=item *

Creates a health check based on the settings in the health check
template in the service, if any

=item *

Associates the health check, if any, with each of the resource record
sets

=back

One C<RegisterInstance> request must complete before you can submit
another request and specify the same service and instance ID.

For more information, see CreateService.

When Amazon Route 53 receives a DNS query for the specified DNS name,
it returns the applicable value:

=over

=item *

B<If the health check is healthy>: returns all the resource record sets

=item *

B<If the health check is unhealthy>: returns the IP address of the last
healthy instance

=item *

B<If you didn't specify a health check template>: returns all the
resource record sets

=back



=head2 UpdateService(Id => Str, Service => L<Paws::ServiceDiscovery::ServiceChange>)

Each argument is described in detail in: L<Paws::ServiceDiscovery::UpdateService>

Returns: a L<Paws::ServiceDiscovery::UpdateServiceResponse> instance

Updates the TTL setting for a specified service. You must specify all
the resource record set templates (and, optionally, a health check
template) that you want to appear in the updated service. Any current
resource record set templates (or health check template) that don't
appear in an C<UpdateService> request are deleted.

When you update the TTL setting for a service, Amazon Route 53 also
updates the corresponding settings in all the resource record sets and
health checks that were created by using the specified service.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

