
use Paws::API;


package Paws::ELB {
  use Moose;
  sub service { 'elasticloadbalancing' }
  sub version { '2012-06-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
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
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB - Perl Interface to AWS Elastic Load Balancing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ELB')->new;
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

Elastic Load Balancing is a way to automatically distribute incoming
web traffic across applications that run on multiple Amazon Elastic
Compute Cloud (Amazon EC2) instances.

You can create, access, and manage Elastic Load Balancing using the AWS
Management Console or the Elastic Load Balancing API. For more
information about Elastic Load Balancing interfaces, see Accessing
Elastic Load Balancing.

This reference guide contains documentation for the Query API and the
AWS command line interface commands, to manage Elastic Load Balancing.

For detailed information about Elastic Load Balancing features and
their associated actions or commands, go to Managing Load Balancers in
the I<Elastic Load Balancing Developer Guide>.

This reference guide is based on the current WSDL, which is available
at: .

B<Endpoints>

The examples in this guide assume that your load balancers are created
in the US East (Northern Virginia) region and use us-east-1 as the
endpoint.

You can create your load balancers in other AWS regions. For
information about regions and endpoints supported by Elastic Load
Balancing, see Regions and Endpoints in the Amazon Web Services General
Reference.










=head1 METHODS

=head2 AddTags(LoadBalancerNames => ArrayRef[Str], Tags => ArrayRef[Paws::ELB::Tag])

Each argument is described in detail in: L<Paws::ELB::AddTags>

Returns: a L<Paws::ELB::AddTagsOutput> instance

  

Adds one or more tags for the specified load balancer. Each load
balancer can have a maximum of 10 tags. Each tag consists of a key and
an optional value.

Tag keys must be unique for each load balancer. If a tag with the same
key is already associated with the load balancer, this action will
update the value of the key.

For more information, see Tagging in the I<Elastic Load Balancing
Developer Guide>.











=head2 ApplySecurityGroupsToLoadBalancer(LoadBalancerName => Str, SecurityGroups => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::ApplySecurityGroupsToLoadBalancer>

Returns: a L<Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput> instance

  

Associates one or more security groups with your load balancer in
Amazon Virtual Private Cloud (Amazon VPC). The provided security group
IDs will override any currently applied security groups.

For more information, see Manage Security Groups in Amazon VPC in the
I<Elastic Load Balancing Developer Guide>.











=head2 AttachLoadBalancerToSubnets(LoadBalancerName => Str, Subnets => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::AttachLoadBalancerToSubnets>

Returns: a L<Paws::ELB::AttachLoadBalancerToSubnetsOutput> instance

  

Adds one or more subnets to the set of configured subnets in the Amazon
Virtual Private Cloud (Amazon VPC) for the load balancer.

The load balancers evenly distribute requests across all of the
registered subnets. For more information, see Deploy Elastic Load
Balancing in Amazon VPC in the I<Elastic Load Balancing Developer
Guide>.











=head2 ConfigureHealthCheck(HealthCheck => Paws::ELB::HealthCheck, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::ConfigureHealthCheck>

Returns: a L<Paws::ELB::ConfigureHealthCheckOutput> instance

  

Specifies the health check settings to use for evaluating the health
state of your back-end instances.

For more information, see Health Check in the I<Elastic Load Balancing
Developer Guide>.











=head2 CreateAppCookieStickinessPolicy(CookieName => Str, LoadBalancerName => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::ELB::CreateAppCookieStickinessPolicy>

Returns: a L<Paws::ELB::CreateAppCookieStickinessPolicyOutput> instance

  

Generates a stickiness policy with sticky session lifetimes that follow
that of an application-generated cookie. This policy can be associated
only with HTTP/HTTPS listeners.

This policy is similar to the policy created by
CreateLBCookieStickinessPolicy, except that the lifetime of the special
Elastic Load Balancing cookie follows the lifetime of the
application-generated cookie specified in the policy configuration. The
load balancer only inserts a new stickiness cookie when the application
response includes a new application cookie.

If the application cookie is explicitly removed or expires, the session
stops being sticky until a new application cookie is issued.

An application client must receive and send two cookies: the
application-generated cookie and the special Elastic Load Balancing
cookie named C<AWSELB>. This is the default behavior for many common
web browsers.

For more information, see Enabling Application-Controlled Session
Stickiness in the I<Elastic Load Balancing Developer Guide>.











=head2 CreateLBCookieStickinessPolicy(LoadBalancerName => Str, PolicyName => Str, [CookieExpirationPeriod => Num])

Each argument is described in detail in: L<Paws::ELB::CreateLBCookieStickinessPolicy>

Returns: a L<Paws::ELB::CreateLBCookieStickinessPolicyOutput> instance

  

Generates a stickiness policy with sticky session lifetimes controlled
by the lifetime of the browser (user-agent) or a specified expiration
period. This policy can be associated only with HTTP/HTTPS listeners.

When a load balancer implements this policy, the load balancer uses a
special cookie to track the backend server instance for each request.
When the load balancer receives a request, it first checks to see if
this cookie is present in the request. If so, the load balancer sends
the request to the application server specified in the cookie. If not,
the load balancer sends the request to a server that is chosen based on
the existing load balancing algorithm.

A cookie is inserted into the response for binding subsequent requests
from the same user to that server. The validity of the cookie is based
on the cookie expiration time, which is specified in the policy
configuration.

For more information, see Enabling Duration-Based Session Stickiness in
the I<Elastic Load Balancing Developer Guide>.











=head2 CreateLoadBalancer(Listeners => ArrayRef[Paws::ELB::Listener], LoadBalancerName => Str, [AvailabilityZones => ArrayRef[Str], Scheme => Str, SecurityGroups => ArrayRef[Str], Subnets => ArrayRef[Str], Tags => ArrayRef[Paws::ELB::Tag]])

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancer>

Returns: a L<Paws::ELB::CreateAccessPointOutput> instance

  

Creates a new load balancer.

After the call has completed successfully, a new load balancer is
created with a unique Domain Name Service (DNS) name. The DNS name
includes the name of the AWS region in which the load balance was
created. For example, if your load balancer was created in the United
States, the DNS name might end with either of the following:

=over

=item * I<us-east-1.elb.amazonaws.com> (for the Northern Virginia
region)

=item * I<us-west-1.elb.amazonaws.com> (for the Northern California
region)

=back

For information about the AWS regions supported by Elastic Load
Balancing, see Regions and Endpoints.

You can create up to 20 load balancers per region per account.

Elastic Load Balancing supports load balancing your Amazon EC2
instances launched within any one of the following platforms:

=over

=item * I<EC2-Classic>

For information on creating and managing your load balancers in
EC2-Classic, see Deploy Elastic Load Balancing in Amazon EC2-Classic.

=item * I<EC2-VPC>

For information on creating and managing your load balancers in
EC2-VPC, see Deploy Elastic Load Balancing in Amazon VPC.

=back











=head2 CreateLoadBalancerListeners(Listeners => ArrayRef[Paws::ELB::Listener], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancerListeners>

Returns: a L<Paws::ELB::CreateLoadBalancerListenerOutput> instance

  

Creates one or more listeners on a load balancer for the specified
port. If a listener with the given port does not already exist, it will
be created; otherwise, the properties of the new listener must match
the properties of the existing listener.

For more information, see Add a Listener to Your Load Balancer in the
I<Elastic Load Balancing Developer Guide>.











=head2 CreateLoadBalancerPolicy(LoadBalancerName => Str, PolicyName => Str, PolicyTypeName => Str, [PolicyAttributes => ArrayRef[Paws::ELB::PolicyAttribute]])

Each argument is described in detail in: L<Paws::ELB::CreateLoadBalancerPolicy>

Returns: a L<Paws::ELB::CreateLoadBalancerPolicyOutput> instance

  

Creates a new policy that contains the necessary attributes depending
on the policy type. Policies are settings that are saved for your load
balancer and that can be applied to the front-end listener, or the
back-end application server, depending on your policy type.











=head2 DeleteLoadBalancer(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancer>

Returns: a L<Paws::ELB::DeleteAccessPointOutput> instance

  

Deletes the specified load balancer.

If attempting to recreate the load balancer, you must reconfigure all
the settings. The DNS name associated with a deleted load balancer will
no longer be usable. Once deleted, the name and associated DNS record
of the load balancer no longer exist and traffic sent to any of its IP
addresses will no longer be delivered to back-end instances.

To successfully call this API, you must provide the same account
credentials as were used to create the load balancer.

By design, if the load balancer does not exist or has already been
deleted, a call to C<DeleteLoadBalancer> action still succeeds.











=head2 DeleteLoadBalancerListeners(LoadBalancerName => Str, LoadBalancerPorts => ArrayRef[Int])

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancerListeners>

Returns: a L<Paws::ELB::DeleteLoadBalancerListenerOutput> instance

  

Deletes listeners from the load balancer for the specified port.











=head2 DeleteLoadBalancerPolicy(LoadBalancerName => Str, PolicyName => Str)

Each argument is described in detail in: L<Paws::ELB::DeleteLoadBalancerPolicy>

Returns: a L<Paws::ELB::DeleteLoadBalancerPolicyOutput> instance

  

Deletes a policy from the load balancer. The specified policy must not
be enabled for any listeners.











=head2 DeregisterInstancesFromLoadBalancer(Instances => ArrayRef[Paws::ELB::Instance], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DeregisterInstancesFromLoadBalancer>

Returns: a L<Paws::ELB::DeregisterEndPointsOutput> instance

  

Deregisters instances from the load balancer. Once the instance is
deregistered, it will stop receiving traffic from the load balancer.

In order to successfully call this API, the same account credentials as
those used to create the load balancer must be provided.

For more information, see De-register and Register Amazon EC2 Instances
in the I<Elastic Load Balancing Developer Guide>.

You can use DescribeLoadBalancers to verify if the instance is
deregistered from the load balancer.











=head2 DescribeInstanceHealth(LoadBalancerName => Str, [Instances => ArrayRef[Paws::ELB::Instance]])

Each argument is described in detail in: L<Paws::ELB::DescribeInstanceHealth>

Returns: a L<Paws::ELB::DescribeEndPointStateOutput> instance

  

Returns the current state of the specified instances registered with
the specified load balancer. If no instances are specified, the state
of all the instances registered with the load balancer is returned.

You must provide the same account credentials as those that were used
to create the load balancer.











=head2 DescribeLoadBalancerAttributes(LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerAttributes>

Returns: a L<Paws::ELB::DescribeLoadBalancerAttributesOutput> instance

  

Returns detailed information about all of the attributes associated
with the specified load balancer.











=head2 DescribeLoadBalancerPolicies([LoadBalancerName => Str, PolicyNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerPolicies>

Returns: a L<Paws::ELB::DescribeLoadBalancerPoliciesOutput> instance

  

Returns detailed descriptions of the policies. If you specify a load
balancer name, the action returns the descriptions of all the policies
created for the load balancer. If you specify a policy name associated
with your load balancer, the action returns the description of that
policy. If you don't specify a load balancer name, the action returns
descriptions of the specified sample policies, or descriptions of all
the sample policies. The names of the sample policies have the
C<ELBSample-> prefix.











=head2 DescribeLoadBalancerPolicyTypes([PolicyTypeNames => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancerPolicyTypes>

Returns: a L<Paws::ELB::DescribeLoadBalancerPolicyTypesOutput> instance

  

Returns meta-information on the specified load balancer policies
defined by the Elastic Load Balancing service. The policy types that
are returned from this action can be used in a CreateLoadBalancerPolicy
action to instantiate specific policy configurations that will be
applied to a load balancer.











=head2 DescribeLoadBalancers([LoadBalancerNames => ArrayRef[Str], Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::ELB::DescribeLoadBalancers>

Returns: a L<Paws::ELB::DescribeAccessPointsOutput> instance

  

Returns detailed configuration information for all the load balancers
created for the account. If you specify load balancer names, the action
returns configuration information of the specified load balancers.

In order to retrieve this information, you must provide the same
account credentials that was used to create the load balancer.











=head2 DescribeTags(LoadBalancerNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::DescribeTags>

Returns: a L<Paws::ELB::DescribeTagsOutput> instance

  

Describes the tags associated with one or more load balancers.











=head2 DetachLoadBalancerFromSubnets(LoadBalancerName => Str, Subnets => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::DetachLoadBalancerFromSubnets>

Returns: a L<Paws::ELB::DetachLoadBalancerFromSubnetsOutput> instance

  

Removes subnets from the set of configured subnets in the Amazon
Virtual Private Cloud (Amazon VPC) for the load balancer.

After a subnet is removed all of the EC2 instances registered with the
load balancer that are in the removed subnet will go into the
I<OutOfService> state. When a subnet is removed, the load balancer will
balance the traffic among the remaining routable subnets for the load
balancer.











=head2 DisableAvailabilityZonesForLoadBalancer(AvailabilityZones => ArrayRef[Str], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::DisableAvailabilityZonesForLoadBalancer>

Returns: a L<Paws::ELB::RemoveAvailabilityZonesOutput> instance

  

Removes the specified EC2 Availability Zones from the set of configured
Availability Zones for the load balancer.

There must be at least one Availability Zone registered with a load
balancer at all times. Once an Availability Zone is removed, all the
instances registered with the load balancer that are in the removed
Availability Zone go into the I<OutOfService> state. Upon Availability
Zone removal, the load balancer attempts to equally balance the traffic
among its remaining usable Availability Zones. Trying to remove an
Availability Zone that was not associated with the load balancer does
nothing.

For more information, see Disable an Availability Zone from a
Load-Balanced Application in the I<Elastic Load Balancing Developer
Guide>.











=head2 EnableAvailabilityZonesForLoadBalancer(AvailabilityZones => ArrayRef[Str], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::EnableAvailabilityZonesForLoadBalancer>

Returns: a L<Paws::ELB::AddAvailabilityZonesOutput> instance

  

Adds one or more EC2 Availability Zones to the load balancer.

The load balancer evenly distributes requests across all its registered
Availability Zones that contain instances.

The new EC2 Availability Zones to be added must be in the same EC2
Region as the Availability Zones for which the load balancer was
created.

For more information, see Expand a Load Balanced Application to an
Additional Availability Zone in the I<Elastic Load Balancing Developer
Guide>.











=head2 ModifyLoadBalancerAttributes(LoadBalancerAttributes => Paws::ELB::LoadBalancerAttributes, LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::ModifyLoadBalancerAttributes>

Returns: a L<Paws::ELB::ModifyLoadBalancerAttributesOutput> instance

  

Modifies the attributes of a specified load balancer.

You can modify the load balancer attributes, such as C<AccessLogs>,
C<ConnectionDraining>, and C<CrossZoneLoadBalancing> by either enabling
or disabling them. Or, you can modify the load balancer attribute
C<ConnectionSettings> by specifying an idle connection timeout value
for your load balancer.

For more information, see the following:

=over

=item * Cross-Zone Load Balancing

=item * Connection Draining

=item * Access Logs

=item * Idle Connection Timeout

=back











=head2 RegisterInstancesWithLoadBalancer(Instances => ArrayRef[Paws::ELB::Instance], LoadBalancerName => Str)

Each argument is described in detail in: L<Paws::ELB::RegisterInstancesWithLoadBalancer>

Returns: a L<Paws::ELB::RegisterEndPointsOutput> instance

  

Adds new instances to the load balancer.

Once the instance is registered, it starts receiving traffic and
requests from the load balancer. Any instance that is not in any of the
Availability Zones registered for the load balancer will be moved to
the I<OutOfService> state. It will move to the I<InService> state when
the Availability Zone is added to the load balancer.

When an instance registered with a load balancer is stopped and then
restarted, the IP addresses associated with the instance changes.
Elastic Load Balancing cannot recognize the new IP address, which
prevents it from routing traffic to the instances. We recommend that
you de-register your Amazon EC2 instances from your load balancer after
you stop your instance, and then register the load balancer with your
instance after you've restarted. To de-register your instances from
load balancer, use DeregisterInstancesFromLoadBalancer action.

For more information, see De-register and Register Amazon EC2 Instances
in the I<Elastic Load Balancing Developer Guide>.

In order for this call to be successful, you must provide the same
account credentials as those that were used to create the load
balancer. Completion of this API does not guarantee that operation has
completed. Rather, it means that the request has been registered and
the changes will happen shortly.

You can use DescribeLoadBalancers or DescribeInstanceHealth action to
check the state of the newly registered instances.











=head2 RemoveTags(LoadBalancerNames => ArrayRef[Str], Tags => ArrayRef[Paws::ELB::TagKeyOnly])

Each argument is described in detail in: L<Paws::ELB::RemoveTags>

Returns: a L<Paws::ELB::RemoveTagsOutput> instance

  

Removes one or more tags from the specified load balancer.











=head2 SetLoadBalancerListenerSSLCertificate(LoadBalancerName => Str, LoadBalancerPort => Int, SSLCertificateId => Str)

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerListenerSSLCertificate>

Returns: a L<Paws::ELB::SetLoadBalancerListenerSSLCertificateOutput> instance

  

Sets the certificate that terminates the specified listener's SSL
connections. The specified certificate replaces any prior certificate
that was used on the same load balancer and port.

For more information on updating your SSL certificate, see Updating an
SSL Certificate for a Load Balancer in the I<Elastic Load Balancing
Developer Guide>.











=head2 SetLoadBalancerPoliciesForBackendServer(InstancePort => Int, LoadBalancerName => Str, PolicyNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerPoliciesForBackendServer>

Returns: a L<Paws::ELB::SetLoadBalancerPoliciesForBackendServerOutput> instance

  

Replaces the current set of policies associated with a port on which
the back-end server is listening with a new set of policies. After the
policies have been created using CreateLoadBalancerPolicy, they can be
applied here as a list. At this time, only the back-end server
authentication policy type can be applied to the back-end ports; this
policy type is composed of multiple public key policies.

The I<SetLoadBalancerPoliciesForBackendServer> replaces the current set
of policies associated with the specified instance port. Every time you
use this action to enable the policies, use the C<PolicyNames>
parameter to list all the policies you want to enable.

You can use DescribeLoadBalancers or DescribeLoadBalancerPolicies
action to verify that the policy has been associated with the back-end
server.











=head2 SetLoadBalancerPoliciesOfListener(LoadBalancerName => Str, LoadBalancerPort => Int, PolicyNames => ArrayRef[Str])

Each argument is described in detail in: L<Paws::ELB::SetLoadBalancerPoliciesOfListener>

Returns: a L<Paws::ELB::SetLoadBalancerPoliciesOfListenerOutput> instance

  

Associates, updates, or disables a policy with a listener on the load
balancer. You can associate multiple policies with a listener.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

