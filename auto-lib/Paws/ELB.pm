
use Paws::API;


package Paws::ELB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  with 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AddTags {
    my $self = shift;
    return $self->do_call('Paws::ELB::AddTags', @_);
  }
  sub ApplySecurityGroupsToLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::ApplySecurityGroupsToLoadBalancer', @_);
  }
  sub AttachLoadBalancerToSubnets {
    my $self = shift;
    return $self->do_call('Paws::ELB::AttachLoadBalancerToSubnets', @_);
  }
  sub ConfigureHealthCheck {
    my $self = shift;
    return $self->do_call('Paws::ELB::ConfigureHealthCheck', @_);
  }
  sub CreateAppCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Paws::ELB::CreateAppCookieStickinessPolicy', @_);
  }
  sub CreateLBCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Paws::ELB::CreateLBCookieStickinessPolicy', @_);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::CreateLoadBalancer', @_);
  }
  sub CreateLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Paws::ELB::CreateLoadBalancerListeners', @_);
  }
  sub CreateLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Paws::ELB::CreateLoadBalancerPolicy', @_);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::DeleteLoadBalancer', @_);
  }
  sub DeleteLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Paws::ELB::DeleteLoadBalancerListeners', @_);
  }
  sub DeleteLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Paws::ELB::DeleteLoadBalancerPolicy', @_);
  }
  sub DeregisterInstancesFromLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::DeregisterInstancesFromLoadBalancer', @_);
  }
  sub DescribeInstanceHealth {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeInstanceHealth', @_);
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeLoadBalancerAttributes', @_);
  }
  sub DescribeLoadBalancerPolicies {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeLoadBalancerPolicies', @_);
  }
  sub DescribeLoadBalancerPolicyTypes {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeLoadBalancerPolicyTypes', @_);
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeLoadBalancers', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Paws::ELB::DescribeTags', @_);
  }
  sub DetachLoadBalancerFromSubnets {
    my $self = shift;
    return $self->do_call('Paws::ELB::DetachLoadBalancerFromSubnets', @_);
  }
  sub DisableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::DisableAvailabilityZonesForLoadBalancer', @_);
  }
  sub EnableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::EnableAvailabilityZonesForLoadBalancer', @_);
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Paws::ELB::ModifyLoadBalancerAttributes', @_);
  }
  sub RegisterInstancesWithLoadBalancer {
    my $self = shift;
    return $self->do_call('Paws::ELB::RegisterInstancesWithLoadBalancer', @_);
  }
  sub RemoveTags {
    my $self = shift;
    return $self->do_call('Paws::ELB::RemoveTags', @_);
  }
  sub SetLoadBalancerListenerSSLCertificate {
    my $self = shift;
    return $self->do_call('Paws::ELB::SetLoadBalancerListenerSSLCertificate', @_);
  }
  sub SetLoadBalancerPoliciesForBackendServer {
    my $self = shift;
    return $self->do_call('Paws::ELB::SetLoadBalancerPoliciesForBackendServer', @_);
  }
  sub SetLoadBalancerPoliciesOfListener {
    my $self = shift;
    return $self->do_call('Paws::ELB::SetLoadBalancerPoliciesOfListener', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB - Perl Interface to AWS Elastic Load Balancing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

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

=head2 AddTags()

  Arguments described in: L<Paws::ELB::AddTags>

  Returns: L<Paws::ELB::AddTagsOutput>

  

Adds one or more tags for the specified load balancer. Each load
balancer can have a maximum of 10 tags. Each tag consists of a key and
an optional value.

Tag keys must be unique for each load balancer. If a tag with the same
key is already associated with the load balancer, this action will
update the value of the key.

For more information, see Tagging in the I<Elastic Load Balancing
Developer Guide>.











=head2 ApplySecurityGroupsToLoadBalancer()

  Arguments described in: L<Paws::ELB::ApplySecurityGroupsToLoadBalancer>

  Returns: L<Paws::ELB::ApplySecurityGroupsToLoadBalancerOutput>

  

Associates one or more security groups with your load balancer in
Amazon Virtual Private Cloud (Amazon VPC). The provided security group
IDs will override any currently applied security groups.

For more information, see Manage Security Groups in Amazon VPC in the
I<Elastic Load Balancing Developer Guide>.











=head2 AttachLoadBalancerToSubnets()

  Arguments described in: L<Paws::ELB::AttachLoadBalancerToSubnets>

  Returns: L<Paws::ELB::AttachLoadBalancerToSubnetsOutput>

  

Adds one or more subnets to the set of configured subnets in the Amazon
Virtual Private Cloud (Amazon VPC) for the load balancer.

The load balancers evenly distribute requests across all of the
registered subnets. For more information, see Deploy Elastic Load
Balancing in Amazon VPC in the I<Elastic Load Balancing Developer
Guide>.











=head2 ConfigureHealthCheck()

  Arguments described in: L<Paws::ELB::ConfigureHealthCheck>

  Returns: L<Paws::ELB::ConfigureHealthCheckOutput>

  

Specifies the health check settings to use for evaluating the health
state of your back-end instances.

For more information, see Health Check in the I<Elastic Load Balancing
Developer Guide>.











=head2 CreateAppCookieStickinessPolicy()

  Arguments described in: L<Paws::ELB::CreateAppCookieStickinessPolicy>

  Returns: L<Paws::ELB::CreateAppCookieStickinessPolicyOutput>

  

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











=head2 CreateLBCookieStickinessPolicy()

  Arguments described in: L<Paws::ELB::CreateLBCookieStickinessPolicy>

  Returns: L<Paws::ELB::CreateLBCookieStickinessPolicyOutput>

  

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











=head2 CreateLoadBalancer()

  Arguments described in: L<Paws::ELB::CreateLoadBalancer>

  Returns: L<Paws::ELB::CreateAccessPointOutput>

  

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











=head2 CreateLoadBalancerListeners()

  Arguments described in: L<Paws::ELB::CreateLoadBalancerListeners>

  Returns: L<Paws::ELB::CreateLoadBalancerListenerOutput>

  

Creates one or more listeners on a load balancer for the specified
port. If a listener with the given port does not already exist, it will
be created; otherwise, the properties of the new listener must match
the properties of the existing listener.

For more information, see Add a Listener to Your Load Balancer in the
I<Elastic Load Balancing Developer Guide>.











=head2 CreateLoadBalancerPolicy()

  Arguments described in: L<Paws::ELB::CreateLoadBalancerPolicy>

  Returns: L<Paws::ELB::CreateLoadBalancerPolicyOutput>

  

Creates a new policy that contains the necessary attributes depending
on the policy type. Policies are settings that are saved for your load
balancer and that can be applied to the front-end listener, or the
back-end application server, depending on your policy type.











=head2 DeleteLoadBalancer()

  Arguments described in: L<Paws::ELB::DeleteLoadBalancer>

  Returns: L<Paws::ELB::DeleteAccessPointOutput>

  

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











=head2 DeleteLoadBalancerListeners()

  Arguments described in: L<Paws::ELB::DeleteLoadBalancerListeners>

  Returns: L<Paws::ELB::DeleteLoadBalancerListenerOutput>

  

Deletes listeners from the load balancer for the specified port.











=head2 DeleteLoadBalancerPolicy()

  Arguments described in: L<Paws::ELB::DeleteLoadBalancerPolicy>

  Returns: L<Paws::ELB::DeleteLoadBalancerPolicyOutput>

  

Deletes a policy from the load balancer. The specified policy must not
be enabled for any listeners.











=head2 DeregisterInstancesFromLoadBalancer()

  Arguments described in: L<Paws::ELB::DeregisterInstancesFromLoadBalancer>

  Returns: L<Paws::ELB::DeregisterEndPointsOutput>

  

Deregisters instances from the load balancer. Once the instance is
deregistered, it will stop receiving traffic from the load balancer.

In order to successfully call this API, the same account credentials as
those used to create the load balancer must be provided.

For more information, see De-register and Register Amazon EC2 Instances
in the I<Elastic Load Balancing Developer Guide>.

You can use DescribeLoadBalancers to verify if the instance is
deregistered from the load balancer.











=head2 DescribeInstanceHealth()

  Arguments described in: L<Paws::ELB::DescribeInstanceHealth>

  Returns: L<Paws::ELB::DescribeEndPointStateOutput>

  

Returns the current state of the specified instances registered with
the specified load balancer. If no instances are specified, the state
of all the instances registered with the load balancer is returned.

You must provide the same account credentials as those that were used
to create the load balancer.











=head2 DescribeLoadBalancerAttributes()

  Arguments described in: L<Paws::ELB::DescribeLoadBalancerAttributes>

  Returns: L<Paws::ELB::DescribeLoadBalancerAttributesOutput>

  

Returns detailed information about all of the attributes associated
with the specified load balancer.











=head2 DescribeLoadBalancerPolicies()

  Arguments described in: L<Paws::ELB::DescribeLoadBalancerPolicies>

  Returns: L<Paws::ELB::DescribeLoadBalancerPoliciesOutput>

  

Returns detailed descriptions of the policies. If you specify a load
balancer name, the action returns the descriptions of all the policies
created for the load balancer. If you specify a policy name associated
with your load balancer, the action returns the description of that
policy. If you don't specify a load balancer name, the action returns
descriptions of the specified sample policies, or descriptions of all
the sample policies. The names of the sample policies have the
C<ELBSample-> prefix.











=head2 DescribeLoadBalancerPolicyTypes()

  Arguments described in: L<Paws::ELB::DescribeLoadBalancerPolicyTypes>

  Returns: L<Paws::ELB::DescribeLoadBalancerPolicyTypesOutput>

  

Returns meta-information on the specified load balancer policies
defined by the Elastic Load Balancing service. The policy types that
are returned from this action can be used in a CreateLoadBalancerPolicy
action to instantiate specific policy configurations that will be
applied to a load balancer.











=head2 DescribeLoadBalancers()

  Arguments described in: L<Paws::ELB::DescribeLoadBalancers>

  Returns: L<Paws::ELB::DescribeAccessPointsOutput>

  

Returns detailed configuration information for all the load balancers
created for the account. If you specify load balancer names, the action
returns configuration information of the specified load balancers.

In order to retrieve this information, you must provide the same
account credentials that was used to create the load balancer.











=head2 DescribeTags()

  Arguments described in: L<Paws::ELB::DescribeTags>

  Returns: L<Paws::ELB::DescribeTagsOutput>

  

Describes the tags associated with one or more load balancers.











=head2 DetachLoadBalancerFromSubnets()

  Arguments described in: L<Paws::ELB::DetachLoadBalancerFromSubnets>

  Returns: L<Paws::ELB::DetachLoadBalancerFromSubnetsOutput>

  

Removes subnets from the set of configured subnets in the Amazon
Virtual Private Cloud (Amazon VPC) for the load balancer.

After a subnet is removed all of the EC2 instances registered with the
load balancer that are in the removed subnet will go into the
I<OutOfService> state. When a subnet is removed, the load balancer will
balance the traffic among the remaining routable subnets for the load
balancer.











=head2 DisableAvailabilityZonesForLoadBalancer()

  Arguments described in: L<Paws::ELB::DisableAvailabilityZonesForLoadBalancer>

  Returns: L<Paws::ELB::RemoveAvailabilityZonesOutput>

  

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











=head2 EnableAvailabilityZonesForLoadBalancer()

  Arguments described in: L<Paws::ELB::EnableAvailabilityZonesForLoadBalancer>

  Returns: L<Paws::ELB::AddAvailabilityZonesOutput>

  

Adds one or more EC2 Availability Zones to the load balancer.

The load balancer evenly distributes requests across all its registered
Availability Zones that contain instances.

The new EC2 Availability Zones to be added must be in the same EC2
Region as the Availability Zones for which the load balancer was
created.

For more information, see Expand a Load Balanced Application to an
Additional Availability Zone in the I<Elastic Load Balancing Developer
Guide>.











=head2 ModifyLoadBalancerAttributes()

  Arguments described in: L<Paws::ELB::ModifyLoadBalancerAttributes>

  Returns: L<Paws::ELB::ModifyLoadBalancerAttributesOutput>

  

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











=head2 RegisterInstancesWithLoadBalancer()

  Arguments described in: L<Paws::ELB::RegisterInstancesWithLoadBalancer>

  Returns: L<Paws::ELB::RegisterEndPointsOutput>

  

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











=head2 RemoveTags()

  Arguments described in: L<Paws::ELB::RemoveTags>

  Returns: L<Paws::ELB::RemoveTagsOutput>

  

Removes one or more tags from the specified load balancer.











=head2 SetLoadBalancerListenerSSLCertificate()

  Arguments described in: L<Paws::ELB::SetLoadBalancerListenerSSLCertificate>

  Returns: L<Paws::ELB::SetLoadBalancerListenerSSLCertificateOutput>

  

Sets the certificate that terminates the specified listener's SSL
connections. The specified certificate replaces any prior certificate
that was used on the same load balancer and port.

For more information on updating your SSL certificate, see Updating an
SSL Certificate for a Load Balancer in the I<Elastic Load Balancing
Developer Guide>.











=head2 SetLoadBalancerPoliciesForBackendServer()

  Arguments described in: L<Paws::ELB::SetLoadBalancerPoliciesForBackendServer>

  Returns: L<Paws::ELB::SetLoadBalancerPoliciesForBackendServerOutput>

  

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











=head2 SetLoadBalancerPoliciesOfListener()

  Arguments described in: L<Paws::ELB::SetLoadBalancerPoliciesOfListener>

  Returns: L<Paws::ELB::SetLoadBalancerPoliciesOfListenerOutput>

  

Associates, updates, or disables a policy with a listener on the load
balancer. You can associate multiple policies with a listener.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

