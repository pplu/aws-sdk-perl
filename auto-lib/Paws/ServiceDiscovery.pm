package Paws::ServiceDiscovery;
  use Moose;
  sub service { 'servicediscovery' }
  sub signing_name { 'servicediscovery' }
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

  
  sub CreateHttpNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::CreateHttpNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub DiscoverInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::DiscoverInstances', @_);
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
  sub UpdateInstanceCustomHealthStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::UpdateInstanceCustomHealthStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServiceDiscovery::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Instances }, @{ $next_result->Instances };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Instances') foreach (@{ $result->Instances });
        $result = $self->ListInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Instances') foreach (@{ $result->Instances });
    }

    return undef
  }
  sub ListAllNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListNamespaces(@_, NextToken => $next_result->NextToken);
        push @{ $result->Namespaces }, @{ $next_result->Namespaces };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Namespaces') foreach (@{ $result->Namespaces });
        $result = $self->ListNamespaces(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Namespaces') foreach (@{ $result->Namespaces });
    }

    return undef
  }
  sub ListAllOperations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListOperations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListOperations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Operations }, @{ $next_result->Operations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Operations') foreach (@{ $result->Operations });
        $result = $self->ListOperations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Operations') foreach (@{ $result->Operations });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->ListServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }


  sub operations { qw/CreateHttpNamespace CreatePrivateDnsNamespace CreatePublicDnsNamespace CreateService DeleteNamespace DeleteService DeregisterInstance DiscoverInstances GetInstance GetInstancesHealthStatus GetNamespace GetOperation GetService ListInstances ListNamespaces ListOperations ListServices RegisterInstance UpdateInstanceCustomHealthStatus UpdateService / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery - Perl Interface to AWS AWS Cloud Map

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

AWS Cloud Map lets you configure public DNS, private DNS, or HTTP
namespaces that your microservice applications run in. When an instance
of the service becomes available, you can call the AWS Cloud Map API to
register the instance with AWS Cloud Map. For public or private DNS
namespaces, AWS Cloud Map automatically creates DNS records and an
optional health check. Clients that submit public or private DNS
queries, or HTTP requests, for the service receive an answer that
contains up to eight healthy records.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery-2017-03-14>


=head1 METHODS

=head2 CreateHttpNamespace

=over

=item Name => Str

=item [CreatorRequestId => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreateHttpNamespace>

Returns: a L<Paws::ServiceDiscovery::CreateHttpNamespaceResponse> instance

Creates an HTTP namespace. Service instances that you register using an
HTTP namespace can be discovered using a C<DiscoverInstances> request
but can't be discovered using DNS.

For the current limit on the number of namespaces that you can create
using the same AWS account, see AWS Cloud Map Limits
(http://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the I<AWS Cloud Map Developer Guide>.


=head2 CreatePrivateDnsNamespace

=over

=item Name => Str

=item Vpc => Str

=item [CreatorRequestId => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreatePrivateDnsNamespace>

Returns: a L<Paws::ServiceDiscovery::CreatePrivateDnsNamespaceResponse> instance

Creates a private namespace based on DNS, which will be visible only
inside a specified Amazon VPC. The namespace defines your service
naming scheme. For example, if you name your namespace C<example.com>
and name your service C<backend>, the resulting DNS name for the
service will be C<backend.example.com>. For the current limit on the
number of namespaces that you can create using the same AWS account,
see AWS Cloud Map Limits
(http://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the I<AWS Cloud Map Developer Guide>.


=head2 CreatePublicDnsNamespace

=over

=item Name => Str

=item [CreatorRequestId => Str]

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreatePublicDnsNamespace>

Returns: a L<Paws::ServiceDiscovery::CreatePublicDnsNamespaceResponse> instance

Creates a public namespace based on DNS, which will be visible on the
internet. The namespace defines your service naming scheme. For
example, if you name your namespace C<example.com> and name your
service C<backend>, the resulting DNS name for the service will be
C<backend.example.com>. For the current limit on the number of
namespaces that you can create using the same AWS account, see AWS
Cloud Map Limits
(http://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the I<AWS Cloud Map Developer Guide>.


=head2 CreateService

=over

=item Name => Str

=item [CreatorRequestId => Str]

=item [Description => Str]

=item [DnsConfig => L<Paws::ServiceDiscovery::DnsConfig>]

=item [HealthCheckConfig => L<Paws::ServiceDiscovery::HealthCheckConfig>]

=item [HealthCheckCustomConfig => L<Paws::ServiceDiscovery::HealthCheckCustomConfig>]

=item [NamespaceId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::CreateService>

Returns: a L<Paws::ServiceDiscovery::CreateServiceResponse> instance

Creates a service, which defines the configuration for the following
entities:

=over

=item *

For public and private DNS namespaces, one of the following
combinations of DNS records in Amazon Route 53:

=over

=item *

A

=item *

AAAA

=item *

A and AAAA

=item *

SRV

=item *

CNAME

=back

=item *

Optionally, a health check

=back

After you create the service, you can submit a RegisterInstance
request, and AWS Cloud Map uses the values in the configuration to
create the specified entities.

For the current limit on the number of instances that you can register
using the same namespace and using the same service, see AWS Cloud Map
Limits
(http://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the I<AWS Cloud Map Developer Guide>.


=head2 DeleteNamespace

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeleteNamespace>

Returns: a L<Paws::ServiceDiscovery::DeleteNamespaceResponse> instance

Deletes a namespace from the current account. If the namespace still
contains one or more services, the request fails.


=head2 DeleteService

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeleteService>

Returns: a L<Paws::ServiceDiscovery::DeleteServiceResponse> instance

Deletes a specified service. If the service still contains one or more
registered instances, the request fails.


=head2 DeregisterInstance

=over

=item InstanceId => Str

=item ServiceId => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::DeregisterInstance>

Returns: a L<Paws::ServiceDiscovery::DeregisterInstanceResponse> instance

Deletes the Amazon Route 53 DNS records and health check, if any, that
AWS Cloud Map created for the specified instance.


=head2 DiscoverInstances

=over

=item NamespaceName => Str

=item ServiceName => Str

=item [HealthStatus => Str]

=item [MaxResults => Int]

=item [QueryParameters => L<Paws::ServiceDiscovery::Attributes>]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::DiscoverInstances>

Returns: a L<Paws::ServiceDiscovery::DiscoverInstancesResponse> instance

Discovers registered instances for a specified namespace and service.


=head2 GetInstance

=over

=item InstanceId => Str

=item ServiceId => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetInstance>

Returns: a L<Paws::ServiceDiscovery::GetInstanceResponse> instance

Gets information about a specified instance.


=head2 GetInstancesHealthStatus

=over

=item ServiceId => Str

=item [Instances => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetInstancesHealthStatus>

Returns: a L<Paws::ServiceDiscovery::GetInstancesHealthStatusResponse> instance

Gets the current health status (C<Healthy>, C<Unhealthy>, or
C<Unknown>) of one or more instances that are associated with a
specified service.

There is a brief delay between when you register an instance and when
the health status for the instance is available.


=head2 GetNamespace

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetNamespace>

Returns: a L<Paws::ServiceDiscovery::GetNamespaceResponse> instance

Gets information about a namespace.


=head2 GetOperation

=over

=item OperationId => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetOperation>

Returns: a L<Paws::ServiceDiscovery::GetOperationResponse> instance

Gets information about any operation that returns an operation ID in
the response, such as a C<CreateService> request.

To get a list of operations that match specified criteria, see
ListOperations.


=head2 GetService

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::GetService>

Returns: a L<Paws::ServiceDiscovery::GetServiceResponse> instance

Gets the settings for a specified service.


=head2 ListInstances

=over

=item ServiceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListInstances>

Returns: a L<Paws::ServiceDiscovery::ListInstancesResponse> instance

Lists summary information about the instances that you registered by
using a specified service.


=head2 ListNamespaces

=over

=item [Filters => ArrayRef[L<Paws::ServiceDiscovery::NamespaceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListNamespaces>

Returns: a L<Paws::ServiceDiscovery::ListNamespacesResponse> instance

Lists summary information about the namespaces that were created by the
current AWS account.


=head2 ListOperations

=over

=item [Filters => ArrayRef[L<Paws::ServiceDiscovery::OperationFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListOperations>

Returns: a L<Paws::ServiceDiscovery::ListOperationsResponse> instance

Lists operations that match the criteria that you specify.


=head2 ListServices

=over

=item [Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::ListServices>

Returns: a L<Paws::ServiceDiscovery::ListServicesResponse> instance

Lists summary information for all the services that are associated with
one or more specified namespaces.


=head2 RegisterInstance

=over

=item Attributes => L<Paws::ServiceDiscovery::Attributes>

=item InstanceId => Str

=item ServiceId => Str

=item [CreatorRequestId => Str]


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::RegisterInstance>

Returns: a L<Paws::ServiceDiscovery::RegisterInstanceResponse> instance

Creates or updates one or more records and, optionally, creates a
health check based on the settings in a specified service. When you
submit a C<RegisterInstance> request, the following occurs:

=over

=item *

For each DNS record that you define in the service that is specified by
C<ServiceId>, a record is created or updated in the hosted zone that is
associated with the corresponding namespace.

=item *

If the service includes C<HealthCheckConfig>, a health check is created
based on the settings in the health check configuration.

=item *

The health check, if any, is associated with each of the new or updated
records.

=back

One C<RegisterInstance> request must complete before you can submit
another request and specify the same service ID and instance ID.

For more information, see CreateService.

When AWS Cloud Map receives a DNS query for the specified DNS name, it
returns the applicable value:

=over

=item *

B<If the health check is healthy>: returns all the records

=item *

B<If the health check is unhealthy>: returns the applicable value for
the last healthy instance

=item *

B<If you didn't specify a health check configuration>: returns all the
records

=back

For the current limit on the number of instances that you can register
using the same namespace and using the same service, see AWS Cloud Map
Limits
(http://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
in the I<AWS Cloud Map Developer Guide>.


=head2 UpdateInstanceCustomHealthStatus

=over

=item InstanceId => Str

=item ServiceId => Str

=item Status => Str


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::UpdateInstanceCustomHealthStatus>

Returns: nothing

Submits a request to change the health status of a custom health check
to healthy or unhealthy.

You can use C<UpdateInstanceCustomHealthStatus> to change the status
only for custom health checks, which you define using
C<HealthCheckCustomConfig> when you create a service. You can't use it
to change the status for Route 53 health checks, which you define using
C<HealthCheckConfig>.

For more information, see HealthCheckCustomConfig.


=head2 UpdateService

=over

=item Id => Str

=item Service => L<Paws::ServiceDiscovery::ServiceChange>


=back

Each argument is described in detail in: L<Paws::ServiceDiscovery::UpdateService>

Returns: a L<Paws::ServiceDiscovery::UpdateServiceResponse> instance

Submits a request to perform the following operations:

=over

=item *

Add or delete C<DnsRecords> configurations

=item *

Update the TTL setting for existing C<DnsRecords> configurations

=item *

Add, update, or delete C<HealthCheckConfig> for a specified service

=back

For public and private DNS namespaces, you must specify all
C<DnsRecords> configurations (and, optionally, C<HealthCheckConfig>)
that you want to appear in the updated service. Any current
configurations that don't appear in an C<UpdateService> request are
deleted.

When you update the TTL setting for a service, AWS Cloud Map also
updates the corresponding settings in all the records and health checks
that were created by using the specified service.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllInstances(sub { },ServiceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllInstances(ServiceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Instances, passing the object as the first parameter, and the string 'Instances' as the second parameter 

If not, it will return a a L<Paws::ServiceDiscovery::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllNamespaces(sub { },[Filters => ArrayRef[L<Paws::ServiceDiscovery::NamespaceFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllNamespaces([Filters => ArrayRef[L<Paws::ServiceDiscovery::NamespaceFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Namespaces, passing the object as the first parameter, and the string 'Namespaces' as the second parameter 

If not, it will return a a L<Paws::ServiceDiscovery::ListNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllOperations(sub { },[Filters => ArrayRef[L<Paws::ServiceDiscovery::OperationFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllOperations([Filters => ArrayRef[L<Paws::ServiceDiscovery::OperationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Operations, passing the object as the first parameter, and the string 'Operations' as the second parameter 

If not, it will return a a L<Paws::ServiceDiscovery::ListOperationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllServices([Filters => ArrayRef[L<Paws::ServiceDiscovery::ServiceFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::ServiceDiscovery::ListServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

