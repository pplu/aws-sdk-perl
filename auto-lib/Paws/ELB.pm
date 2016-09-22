package Paws::ELB;
  use Moose;
  sub service { 'elasticloadbalancing' }
  sub version { '2012-06-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplySecurityGroupsToLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::ApplySecurityGroupsToLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachLoadBalancerToSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::AttachLoadBalancerToSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfigureHealthCheck {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::ConfigureHealthCheck', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAppCookieStickinessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::CreateAppCookieStickinessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLBCookieStickinessPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::CreateLBCookieStickinessPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::CreateLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancerListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::CreateLoadBalancerListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancerPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::CreateLoadBalancerPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DeleteLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancerListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DeleteLoadBalancerListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancerPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DeleteLoadBalancerPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterInstancesFromLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DeregisterInstancesFromLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeInstanceHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeLoadBalancerAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancerPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeLoadBalancerPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancerPolicyTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeLoadBalancerPolicyTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeLoadBalancers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachLoadBalancerFromSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DetachLoadBalancerFromSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::DisableAvailabilityZonesForLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::EnableAvailabilityZonesForLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::ModifyLoadBalancerAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterInstancesWithLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::RegisterInstancesWithLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoadBalancerListenerSSLCertificate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::SetLoadBalancerListenerSSLCertificate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoadBalancerPoliciesForBackendServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::SetLoadBalancerPoliciesForBackendServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetLoadBalancerPoliciesOfListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELB::SetLoadBalancerPoliciesOfListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllLoadBalancers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLoadBalancers(@_);

    if (not defined $callback) {
      my $params = {};
      $params->{ LoadBalancerDescriptions } = $result->LoadBalancerDescriptions;

      while ($result->Marker) {
        $result = $self->DescribeLoadBalancers(@_, Marker => $result->NextMarker);
        push @{ $result->LoadBalancerDescriptions }, @{ $result->LoadBalancerDescriptions };
      }
      $self->new_with_coercions(Paws::ELB::DescribeLoadBalancers->_returns, %$params);
    } else {
      while ($result->Marker) {
        $result = $self->DescribeLoadBalancers(@_, Marker => $result->NextMarker);
        $callback->($_ => 'LoadBalancerDescriptions') foreach (@{ $result->LoadBalancerDescriptions });
      }
    }

    return undef
  }


  sub operations { qw/AddTags ApplySecurityGroupsToLoadBalancer AttachLoadBalancerToSubnets ConfigureHealthCheck CreateAppCookieStickinessPolicy CreateLBCookieStickinessPolicy CreateLoadBalancer CreateLoadBalancerListeners CreateLoadBalancerPolicy DeleteLoadBalancer DeleteLoadBalancerListeners DeleteLoadBalancerPolicy DeregisterInstancesFromLoadBalancer DescribeInstanceHealth DescribeLoadBalancerAttributes DescribeLoadBalancerPolicies DescribeLoadBalancerPolicyTypes DescribeLoadBalancers DescribeTags DetachLoadBalancerFromSubnets DisableAvailabilityZonesForLoadBalancer EnableAvailabilityZonesForLoadBalancer ModifyLoadBalancerAttributes RegisterInstancesWithLoadBalancer RemoveTags SetLoadBalancerListenerSSLCertificate SetLoadBalancerPoliciesForBackendServer SetLoadBalancerPoliciesOfListener / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB - Perl Interface to AWS Elastic Load Balancing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ELB');
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

Elastic Load Balancing

A load balancer distributes incoming traffic across your EC2 instances.
This enables you to increase the availability of your application. The
load balancer also monitors the health of its registered instances and
ensures that it routes traffic only to healthy instances. You configure
your load balancer to accept incoming traffic by specifying one or more
listeners, which are configured with a protocol and port number for
connections from clients to the load balancer and a protocol and port
number for connections from the load balancer to the instances.

Elastic Load Balancing supports two types of load balancers: Classic
load balancers and Application load balancers (new). A Classic load
balancer makes routing and load balancing decisions either at the
transport layer (TCP/SSL) or the application layer (HTTP/HTTPS), and
supports either EC2-Classic or a VPC. An Application load balancer
makes routing and load balancing decisions at the application layer
(HTTP/HTTPS), supports path-based routing, and can route requests to
one or more ports on each EC2 instance or container instance in your
virtual private cloud (VPC). For more information, see the .

This reference covers the 2012-06-01 API, which supports Classic load
balancers. The 2015-12-01 API supports Application load balancers.

To get started, create a load balancer with one or more listeners using
CreateLoadBalancer. Register your instances with the load balancer
using RegisterInstancesWithLoadBalancer.

All Elastic Load Balancing operations are I<idempotent>, which means
that they complete at most one time. If you repeat an operation, it
succeeds with a 200 OK response code.

=head1 METHODS

=head2 AddTags(LoadBalancerNames => ArrayRef[Str], Tags => ArrayRef[L<Paws::ELB::Tag>])

Each argument is described in detail in: L<Paws::ELB::AddTags>

Returns: a L<Paws::ELB::AddTagsOutput> instance

  Adds the specified tags to the specified load balancer. Each load
balancer can have a maximum of 10 tags.

Each tag consists of a key and an optional value. If a tag with the
same key is already associated with the load balancer, C<AddTags>
updates its value.

For more information, see Tag Your Classic Load Balancer in the
I<Classic Load Balancers Guide>.


=head2 ApplySecurityGroupsToLoadBalancer(LoadBalancerName => Str, SecurityGroups => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::ApplySecurityGroupsToLoadBalancer>

Returns: a L<Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput> instance

  Associates one or more security groups with your load balancer in a
virtual private cloud (VPC). The specified security groups override the
previously associated security groups.

For more information, see Security Groups for Load Balancers in a VPC
in the I<Classic Load Balancers Guide>.


=head2 AttachLoadBalancerToSubnets(LoadBalancerName => Str, Subnets => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::AttachLoadBalancerToSubnets>

Returns: a L<Paws::ELB::AttachLoadBalancerToSubnetsOutput> instance

  Adds one or more subnets to the set of configured subnets for the
specified load balancer.

The load balancer evenly distributes requests across all registered
subnets. For more information, see Add or Remove Subnets for Your Load
Balancer in a VPC in the I<Classic Load Balancers Guide>.


=head2 ConfigureHealthCheck(HealthCheck => L<Paws::ELB::HealthCheck>, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::ConfigureHealthCheck>

Returns: a L<Paws::ELB::ConfigureHealthCheckOutput> instance

  Specifies the health check settings to use when evaluating the health
state of your EC2 instances.

For more information, see Configure Health Checks for Your Load
Balancer in the I<Classic Load Balancers Guide>.


=head2 CreateAppCookieStickinessPolicy(CookieName => Str, LoadBalancerName => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::ELB::CreateAppCookieStickinessPolicy>

Returns: a L<Paws::ELB::CreateAppCookieStickinessPolicyOutput> instance

  Generates a stickiness policy with sticky session lifetimes that follow
that of an application-generated cookie. This policy can be associated
only with HTTP/HTTPS listeners.

This policy is similar to the policy created by
CreateLBCookieStickinessPolicy, except that the lifetime of the special
Elastic Load Balancing cookie, C<AWSELB>, follows the lifetime of the
application-generated cookie specified in the policy configuration. The
load balancer only inserts a new stickiness cookie when the application
response includes a new application cookie.

If the application cookie is explicitly removed or expires, the session
stops being sticky until a new application cookie is issued.

For more information, see Application-Controlled Session Stickiness in
the I<Classic Load Balancers Guide>.


=head2 CreateLBCookieStickinessPolicy(LoadBalancerName => Str, PolicyName => Str, [CookieExpirationPeriod => Int])

Each argument is described in detail in: L<Paws::ELB::CreateLBCookieStickinessPolicy>

Returns: a L<Paws::ELB::CreateLBCookieStickinessPolicyOutput> instance

  Generates a stickiness policy with sticky session lifetimes controlled
by the lifetime of the browser (user-agent) or a specified expiration
period. This policy can be associated only with HTTP/HTTPS listeners.

When a load balancer implements this policy, the load balancer uses a
special cookie to track the instance for each request. When the load
balancer receives a request, it first checks to see if this cookie is
present in the request. If so, the load balancer sends the request to
the application server specified in the cookie. If not, the load
balancer sends the request to a server that is chosen based on the
existing load-balancing algorithm.

A cookie is inserted into the response for binding subsequent requests
from the same user to that server. The validity of the cookie is based
on the cookie expiration time, which is specified in the policy
configuration.

For more information, see Duration-Based Session Stickiness in the
I<Classic Load Balancers Guide>.


=head2 CreateLoadBalancer(Listeners => ArrayRef[L<Paws::ELB::Listener>], LoadBalancerName => Str, [AvailabilityZones => ArrayRef[Str], Scheme => Str, SecurityGroups => ArrayRef[Str], Subnets => ArrayRef[Str], Tags => ArrayRef[L<Paws::ELB::Tag>]])

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancer>

Returns: a L<Paws::ELB::CreateAccessPointOutput> instance

  Creates a Classic load balancer.

You can add listeners, security groups, subnets, and tags when you
create your load balancer, or you can add them later using
CreateLoadBalancerListeners, ApplySecurityGroupsToLoadBalancer,
AttachLoadBalancerToSubnets, and AddTags.

To describe your current load balancers, see DescribeLoadBalancers.
When you are finished with a load balancer, you can delete it using
DeleteLoadBalancer.

You can create up to 20 load balancers per region per account. You can
request an increase for the number of load balancers for your account.
For more information, see Limits for Your Classic Load Balancer in the
I<Classic Load Balancers Guide>.


=head2 CreateLoadBalancerListeners(Listeners => ArrayRef[L<Paws::ELB::Listener>], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancerListeners>

Returns: a L<Paws::ELB::CreateLoadBalancerListenerOutput> instance

  Creates one or more listeners for the specified load balancer. If a
listener with the specified port does not already exist, it is created;
otherwise, the properties of the new listener must match the properties
of the existing listener.

For more information, see Listeners for Your Classic Load Balancer in
the I<Classic Load Balancers Guide>.


=head2 CreateLoadBalancerPolicy(LoadBalancerName => Str, PolicyName => Str, PolicyTypeName => Str, [PolicyAttributes => ArrayRef[L<Paws::ELB::PolicyAttribute>]])

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancerPolicy>

Returns: a L<Paws::ELB::CreateLoadBalancerPolicyOutput> instance

  Creates a policy with the specified attributes for the specified load
balancer.

Policies are settings that are saved for your load balancer and that
can be applied to the listener or the application server, depending on
the policy type.


=head2 DeleteLoadBalancer(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancer>

Returns: a L<Paws::ELB::DeleteAccessPointOutput> instance

  Deletes the specified load balancer.

If you are attempting to recreate a load balancer, you must reconfigure
all settings. The DNS name associated with a deleted load balancer are
no longer usable. The name and associated DNS record of the deleted
load balancer no longer exist and traffic sent to any of its IP
addresses is no longer delivered to your instances.

If the load balancer does not exist or has already been deleted, the
call to C<DeleteLoadBalancer> still succeeds.


=head2 DeleteLoadBalancerListeners(LoadBalancerName => Str, LoadBalancerPorts => ArrayRef[Int])

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancerListeners>

Returns: a L<Paws::ELB::DeleteLoadBalancerListenerOutput> instance

  Deletes the specified listeners from the specified load balancer.


=head2 DeleteLoadBalancerPolicy(LoadBalancerName => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancerPolicy>

Returns: a L<Paws::ELB::DeleteLoadBalancerPolicyOutput> instance

  Deletes the specified policy from the specified load balancer. This
policy must not be enabled for any listeners.


=head2 DeregisterInstancesFromLoadBalancer(Instances => ArrayRef[L<Paws::ELB::Instance>], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DeregisterInstancesFromLoadBalancer>

Returns: a L<Paws::ELB::DeregisterEndPointsOutput> instance

  Deregisters the specified instances from the specified load balancer.
After the instance is deregistered, it no longer receives traffic from
the load balancer.

You can use DescribeLoadBalancers to verify that the instance is
deregistered from the load balancer.

For more information, see Register or De-Register EC2 Instances in the
I<Classic Load Balancers Guide>.


=head2 DescribeInstanceHealth(LoadBalancerName => Str, [Instances => ArrayRef[L<Paws::ELB::Instance>]])

Each argument is described in detail in: L<Paws::ELB::DescribeInstanceHealth>

Returns: a L<Paws::ELB::DescribeEndPointStateOutput> instance

  Describes the state of the specified instances with respect to the
specified load balancer. If no instances are specified, the call
describes the state of all instances that are currently registered with
the load balancer. If instances are specified, their state is returned
even if they are no longer registered with the load balancer. The state
of terminated instances is not returned.


=head2 DescribeLoadBalancerAttributes(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerAttributes>

Returns: a L<Paws::ELB::DescribeLoadBalancerAttributesOutput> instance

  Describes the attributes for the specified load balancer.


=head2 DescribeLoadBalancerPolicies([LoadBalancerName => Str, PolicyNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerPolicies>

Returns: a L<Paws::ELB::DescribeLoadBalancerPoliciesOutput> instance

  Describes the specified policies.

If you specify a load balancer name, the action returns the
descriptions of all policies created for the load balancer. If you
specify a policy name associated with your load balancer, the action
returns the description of that policy. If you don't specify a load
balancer name, the action returns descriptions of the specified sample
policies, or descriptions of all sample policies. The names of the
sample policies have the C<ELBSample-> prefix.


=head2 DescribeLoadBalancerPolicyTypes([PolicyTypeNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerPolicyTypes>

Returns: a L<Paws::ELB::DescribeLoadBalancerPolicyTypesOutput> instance

  Describes the specified load balancer policy types or all load balancer
policy types.

The description of each type indicates how it can be used. For example,
some policies can be used only with layer 7 listeners, some policies
can be used only with layer 4 listeners, and some policies can be used
only with your EC2 instances.

You can use CreateLoadBalancerPolicy to create a policy configuration
for any of these policy types. Then, depending on the policy type, use
either SetLoadBalancerPoliciesOfListener or
SetLoadBalancerPoliciesForBackendServer to set the policy.


=head2 DescribeLoadBalancers([LoadBalancerNames => ArrayRef[Str], Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancers>

Returns: a L<Paws::ELB::DescribeAccessPointsOutput> instance

  Describes the specified the load balancers. If no load balancers are
specified, the call describes all of your load balancers.


=head2 DescribeTags(LoadBalancerNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::DescribeTags>

Returns: a L<Paws::ELB::DescribeTagsOutput> instance

  Describes the tags associated with the specified load balancers.


=head2 DetachLoadBalancerFromSubnets(LoadBalancerName => Str, Subnets => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::DetachLoadBalancerFromSubnets>

Returns: a L<Paws::ELB::DetachLoadBalancerFromSubnetsOutput> instance

  Removes the specified subnets from the set of configured subnets for
the load balancer.

After a subnet is removed, all EC2 instances registered with the load
balancer in the removed subnet go into the C<OutOfService> state. Then,
the load balancer balances the traffic among the remaining routable
subnets.


=head2 DisableAvailabilityZonesForLoadBalancer(AvailabilityZones => ArrayRef[Str], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DisableAvailabilityZonesForLoadBalancer>

Returns: a L<Paws::ELB::RemoveAvailabilityZonesOutput> instance

  Removes the specified Availability Zones from the set of Availability
Zones for the specified load balancer.

There must be at least one Availability Zone registered with a load
balancer at all times. After an Availability Zone is removed, all
instances registered with the load balancer that are in the removed
Availability Zone go into the C<OutOfService> state. Then, the load
balancer attempts to equally balance the traffic among its remaining
Availability Zones.

For more information, see Add or Remove Availability Zones in the
I<Classic Load Balancers Guide>.


=head2 EnableAvailabilityZonesForLoadBalancer(AvailabilityZones => ArrayRef[Str], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::EnableAvailabilityZonesForLoadBalancer>

Returns: a L<Paws::ELB::AddAvailabilityZonesOutput> instance

  Adds the specified Availability Zones to the set of Availability Zones
for the specified load balancer.

The load balancer evenly distributes requests across all its registered
Availability Zones that contain instances.

For more information, see Add or Remove Availability Zones in the
I<Classic Load Balancers Guide>.


=head2 ModifyLoadBalancerAttributes(LoadBalancerAttributes => L<Paws::ELB::LoadBalancerAttributes>, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::ModifyLoadBalancerAttributes>

Returns: a L<Paws::ELB::ModifyLoadBalancerAttributesOutput> instance

  Modifies the attributes of the specified load balancer.

You can modify the load balancer attributes, such as C<AccessLogs>,
C<ConnectionDraining>, and C<CrossZoneLoadBalancing> by either enabling
or disabling them. Or, you can modify the load balancer attribute
C<ConnectionSettings> by specifying an idle connection timeout value
for your load balancer.

For more information, see the following in the I<Classic Load Balancers
Guide>:

=over

=item *

Cross-Zone Load Balancing

=item *

Connection Draining

=item *

Access Logs

=item *

Idle Connection Timeout

=back



=head2 RegisterInstancesWithLoadBalancer(Instances => ArrayRef[L<Paws::ELB::Instance>], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::RegisterInstancesWithLoadBalancer>

Returns: a L<Paws::ELB::RegisterEndPointsOutput> instance

  Adds the specified instances to the specified load balancer.

The instance must be a running instance in the same network as the load
balancer (EC2-Classic or the same VPC). If you have EC2-Classic
instances and a load balancer in a VPC with ClassicLink enabled, you
can link the EC2-Classic instances to that VPC and then register the
linked EC2-Classic instances with the load balancer in the VPC.

Note that C<RegisterInstanceWithLoadBalancer> completes when the
request has been registered. Instance registration takes a little time
to complete. To check the state of the registered instances, use
DescribeLoadBalancers or DescribeInstanceHealth.

After the instance is registered, it starts receiving traffic and
requests from the load balancer. Any instance that is not in one of the
Availability Zones registered for the load balancer is moved to the
C<OutOfService> state. If an Availability Zone is added to the load
balancer later, any instances registered with the load balancer move to
the C<InService> state.

To deregister instances from a load balancer, use
DeregisterInstancesFromLoadBalancer.

For more information, see Register or De-Register EC2 Instances in the
I<Classic Load Balancers Guide>.


=head2 RemoveTags(LoadBalancerNames => ArrayRef[Str], Tags => ArrayRef[L<Paws::ELB::TagKeyOnly>])

Each argument is described in detail in: L<Paws::ELB::RemoveTags>

Returns: a L<Paws::ELB::RemoveTagsOutput> instance

  Removes one or more tags from the specified load balancer.


=head2 SetLoadBalancerListenerSSLCertificate(LoadBalancerName => Str, LoadBalancerPort => Int, SSLCertificateId => Str)

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerListenerSSLCertificate>

Returns: a L<Paws::ELB::SetLoadBalancerListenerSSLCertificateOutput> instance

  Sets the certificate that terminates the specified listener's SSL
connections. The specified certificate replaces any prior certificate
that was used on the same load balancer and port.

For more information about updating your SSL certificate, see Replace
the SSL Certificate for Your Load Balancer in the I<Classic Load
Balancers Guide>.


=head2 SetLoadBalancerPoliciesForBackendServer(InstancePort => Int, LoadBalancerName => Str, PolicyNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerPoliciesForBackendServer>

Returns: a L<Paws::ELB::SetLoadBalancerPoliciesForBackendServerOutput> instance

  Replaces the set of policies associated with the specified port on
which the EC2 instance is listening with a new set of policies. At this
time, only the back-end server authentication policy type can be
applied to the instance ports; this policy type is composed of multiple
public key policies.

Each time you use C<SetLoadBalancerPoliciesForBackendServer> to enable
the policies, use the C<PolicyNames> parameter to list the policies
that you want to enable.

You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies to
verify that the policy is associated with the EC2 instance.

For more information about enabling back-end instance authentication,
see Configure Back-end Instance Authentication in the I<Classic Load
Balancers Guide>. For more information about Proxy Protocol, see
Configure Proxy Protocol Support in the I<Classic Load Balancers
Guide>.


=head2 SetLoadBalancerPoliciesOfListener(LoadBalancerName => Str, LoadBalancerPort => Int, PolicyNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerPoliciesOfListener>

Returns: a L<Paws::ELB::SetLoadBalancerPoliciesOfListenerOutput> instance

  Replaces the current set of policies for the specified load balancer
port with the specified set of policies.

To enable back-end server authentication, use
SetLoadBalancerPoliciesForBackendServer.

For more information about setting policies, see Update the SSL
Negotiation Configuration, Duration-Based Session Stickiness, and
Application-Controlled Session Stickiness in the I<Classic Load
Balancers Guide>.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

