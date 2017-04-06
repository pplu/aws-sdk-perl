package Paws::ELBv2;
  use Moose;
  sub service { 'elasticloadbalancing' }
  sub version { '2015-12-01' }
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
    my $call_object = $self->new_with_coercions('Paws::ELBv2::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::CreateListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::CreateLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::CreateRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::CreateTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DeleteListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DeleteLoadBalancer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DeleteRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DeleteTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DeregisterTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeListeners {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeListeners', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeLoadBalancerAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeLoadBalancers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRules {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeRules', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSSLPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeSSLPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTargetGroupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeTargetGroupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTargetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeTargetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTargetHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeTargetHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyListener {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::ModifyListener', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::ModifyLoadBalancerAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyRule {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::ModifyRule', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTargetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::ModifyTargetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyTargetGroupAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::ModifyTargetGroupAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::RegisterTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::RemoveTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetIpAddressType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::SetIpAddressType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetRulePriorities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::SetRulePriorities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::SetSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SetSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::SetSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllListeners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeListeners(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeListeners(@_, Marker => $result->NextMarker);
        push @{ $result->Listeners }, @{ $result->Listeners };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeListeners(@_, Marker => $result->NextMarker);
        $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
      }
    }

    return undef
  }
  sub DescribeAllLoadBalancers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLoadBalancers(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeLoadBalancers(@_, Marker => $result->NextMarker);
        push @{ $result->LoadBalancers }, @{ $result->LoadBalancers };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeLoadBalancers(@_, Marker => $result->NextMarker);
        $callback->($_ => 'LoadBalancers') foreach (@{ $result->LoadBalancers });
      }
    }

    return undef
  }
  sub DescribeAllTargetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTargetGroups(@_);

    if (not defined $callback) {
      while ($result->Marker) {
        $result = $self->DescribeTargetGroups(@_, Marker => $result->NextMarker);
        push @{ $result->TargetGroups }, @{ $result->TargetGroups };
      }
      return $result;
    } else {
      while ($result->Marker) {
        $result = $self->DescribeTargetGroups(@_, Marker => $result->NextMarker);
        $callback->($_ => 'TargetGroups') foreach (@{ $result->TargetGroups });
      }
    }

    return undef
  }


  sub operations { qw/AddTags CreateListener CreateLoadBalancer CreateRule CreateTargetGroup DeleteListener DeleteLoadBalancer DeleteRule DeleteTargetGroup DeregisterTargets DescribeListeners DescribeLoadBalancerAttributes DescribeLoadBalancers DescribeRules DescribeSSLPolicies DescribeTags DescribeTargetGroupAttributes DescribeTargetGroups DescribeTargetHealth ModifyListener ModifyLoadBalancerAttributes ModifyRule ModifyTargetGroup ModifyTargetGroupAttributes RegisterTargets RemoveTags SetIpAddressType SetRulePriorities SetSecurityGroups SetSubnets / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2 - Perl Interface to AWS Elastic Load Balancing

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ELBv2');
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

A load balancer distributes incoming traffic across targets, such as
your EC2 instances. This enables you to increase the availability of
your application. The load balancer also monitors the health of its
registered targets and ensures that it routes traffic only to healthy
targets. You configure your load balancer to accept incoming traffic by
specifying one or more listeners, which are configured with a protocol
and port number for connections from clients to the load balancer. You
configure a target group with a protocol and port number for
connections from the load balancer to the targets, and with health
check settings to be used when checking the health status of the
targets.

Elastic Load Balancing supports two types of load balancers: Classic
Load Balancers and Application Load Balancers. A Classic Load Balancer
makes routing and load balancing decisions either at the transport
layer (TCP/SSL) or the application layer (HTTP/HTTPS), and supports
either EC2-Classic or a VPC. An Application Load Balancer makes routing
and load balancing decisions at the application layer (HTTP/HTTPS),
supports path-based routing, and can route requests to one or more
ports on each EC2 instance or container instance in your virtual
private cloud (VPC). For more information, see the Elastic Load
Balancing User Guide.

This reference covers the 2015-12-01 API, which supports Application
Load Balancers. The 2012-06-01 API supports Classic Load Balancers.

To get started, complete the following tasks:

=over

=item 1.

Create an Application Load Balancer using CreateLoadBalancer.

=item 2.

Create a target group using CreateTargetGroup.

=item 3.

Register targets for the target group using RegisterTargets.

=item 4.

Create one or more listeners for your load balancer using
CreateListener.

=item 5.

(Optional) Create one or more rules for content routing based on URL
using CreateRule.

=back

To delete an Application Load Balancer and its related resources,
complete the following tasks:

=over

=item 1.

Delete the load balancer using DeleteLoadBalancer.

=item 2.

Delete the target group using DeleteTargetGroup.

=back

All Elastic Load Balancing operations are idempotent, which means that
they complete at most one time. If you repeat an operation, it
succeeds.

=head1 METHODS

=head2 AddTags(ResourceArns => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::ELBv2::Tag>])

Each argument is described in detail in: L<Paws::ELBv2::AddTags>

Returns: a L<Paws::ELBv2::AddTagsOutput> instance

  Adds the specified tags to the specified resource. You can tag your
Application Load Balancers and your target groups.

Each tag consists of a key and an optional value. If a resource already
has a tag with the same key, C<AddTags> updates its value.

To list the current tags for your resources, use DescribeTags. To
remove tags from your resources, use RemoveTags.


=head2 CreateListener(DefaultActions => ArrayRef[L<Paws::ELBv2::Action>], LoadBalancerArn => Str, Port => Int, Protocol => Str, [Certificates => ArrayRef[L<Paws::ELBv2::Certificate>], SslPolicy => Str])

Each argument is described in detail in: L<Paws::ELBv2::CreateListener>

Returns: a L<Paws::ELBv2::CreateListenerOutput> instance

  Creates a listener for the specified Application Load Balancer.

You can create up to 10 listeners per load balancer.

To update a listener, use ModifyListener. When you are finished with a
listener, you can delete it using DeleteListener. If you are finished
with both the listener and the load balancer, you can delete them both
using DeleteLoadBalancer.

For more information, see Listeners for Your Application Load Balancers
in the I<Application Load Balancers Guide>.


=head2 CreateLoadBalancer(Name => Str, Subnets => ArrayRef[Str|Undef], [IpAddressType => Str, Scheme => Str, SecurityGroups => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::ELBv2::Tag>]])

Each argument is described in detail in: L<Paws::ELBv2::CreateLoadBalancer>

Returns: a L<Paws::ELBv2::CreateLoadBalancerOutput> instance

  Creates an Application Load Balancer.

When you create a load balancer, you can specify security groups,
subnets, IP address type, and tags. Otherwise, you could do so later
using SetSecurityGroups, SetSubnets, SetIpAddressType, and AddTags.

To create listeners for your load balancer, use CreateListener. To
describe your current load balancers, see DescribeLoadBalancers. When
you are finished with a load balancer, you can delete it using
DeleteLoadBalancer.

You can create up to 20 load balancers per region per account. You can
request an increase for the number of load balancers for your account.
For more information, see Limits for Your Application Load Balancer in
the I<Application Load Balancers Guide>.

For more information, see Application Load Balancers in the
I<Application Load Balancers Guide>.


=head2 CreateRule(Actions => ArrayRef[L<Paws::ELBv2::Action>], Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>], ListenerArn => Str, Priority => Int)

Each argument is described in detail in: L<Paws::ELBv2::CreateRule>

Returns: a L<Paws::ELBv2::CreateRuleOutput> instance

  Creates a rule for the specified listener.

Each rule can have one action and one condition. Rules are evaluated in
priority order, from the lowest value to the highest value. When the
condition for a rule is met, the specified action is taken. If no
conditions are met, the default action for the default rule is taken.
For more information, see Listener Rules in the I<Application Load
Balancers Guide>.

To view your current rules, use DescribeRules. To update a rule, use
ModifyRule. To set the priorities of your rules, use SetRulePriorities.
To delete a rule, use DeleteRule.


=head2 CreateTargetGroup(Name => Str, Port => Int, Protocol => Str, VpcId => Str, [HealthCheckIntervalSeconds => Int, HealthCheckPath => Str, HealthCheckPort => Str, HealthCheckProtocol => Str, HealthCheckTimeoutSeconds => Int, HealthyThresholdCount => Int, Matcher => L<Paws::ELBv2::Matcher>, UnhealthyThresholdCount => Int])

Each argument is described in detail in: L<Paws::ELBv2::CreateTargetGroup>

Returns: a L<Paws::ELBv2::CreateTargetGroupOutput> instance

  Creates a target group.

To register targets with the target group, use RegisterTargets. To
update the health check settings for the target group, use
ModifyTargetGroup. To monitor the health of targets in the target
group, use DescribeTargetHealth.

To route traffic to the targets in a target group, specify the target
group in an action using CreateListener or CreateRule.

To delete a target group, use DeleteTargetGroup.

For more information, see Target Groups for Your Application Load
Balancers in the I<Application Load Balancers Guide>.


=head2 DeleteListener(ListenerArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DeleteListener>

Returns: a L<Paws::ELBv2::DeleteListenerOutput> instance

  Deletes the specified listener.

Alternatively, your listener is deleted when you delete the load
balancer it is attached to using DeleteLoadBalancer.


=head2 DeleteLoadBalancer(LoadBalancerArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DeleteLoadBalancer>

Returns: a L<Paws::ELBv2::DeleteLoadBalancerOutput> instance

  Deletes the specified Application Load Balancer and its attached
listeners.

You can't delete a load balancer if deletion protection is enabled. If
the load balancer does not exist or has already been deleted, the call
succeeds.

Deleting a load balancer does not affect its registered targets. For
example, your EC2 instances continue to run and are still registered to
their target groups. If you no longer need these EC2 instances, you can
stop or terminate them.


=head2 DeleteRule(RuleArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DeleteRule>

Returns: a L<Paws::ELBv2::DeleteRuleOutput> instance

  Deletes the specified rule.


=head2 DeleteTargetGroup(TargetGroupArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DeleteTargetGroup>

Returns: a L<Paws::ELBv2::DeleteTargetGroupOutput> instance

  Deletes the specified target group.

You can delete a target group if it is not referenced by any actions.
Deleting a target group also deletes any associated health checks.


=head2 DeregisterTargets(TargetGroupArn => Str, Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>])

Each argument is described in detail in: L<Paws::ELBv2::DeregisterTargets>

Returns: a L<Paws::ELBv2::DeregisterTargetsOutput> instance

  Deregisters the specified targets from the specified target group.
After the targets are deregistered, they no longer receive traffic from
the load balancer.


=head2 DescribeListeners([ListenerArns => ArrayRef[Str|Undef], LoadBalancerArn => Str, Marker => Str, PageSize => Int])

Each argument is described in detail in: L<Paws::ELBv2::DescribeListeners>

Returns: a L<Paws::ELBv2::DescribeListenersOutput> instance

  Describes the specified listeners or the listeners for the specified
Application Load Balancer. You must specify either a load balancer or
one or more listeners.


=head2 DescribeLoadBalancerAttributes(LoadBalancerArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DescribeLoadBalancerAttributes>

Returns: a L<Paws::ELBv2::DescribeLoadBalancerAttributesOutput> instance

  Describes the attributes for the specified Application Load Balancer.


=head2 DescribeLoadBalancers([LoadBalancerArns => ArrayRef[Str|Undef], Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])

Each argument is described in detail in: L<Paws::ELBv2::DescribeLoadBalancers>

Returns: a L<Paws::ELBv2::DescribeLoadBalancersOutput> instance

  Describes the specified Application Load Balancers or all of your
Application Load Balancers.

To describe the listeners for a load balancer, use DescribeListeners.
To describe the attributes for a load balancer, use
DescribeLoadBalancerAttributes.


=head2 DescribeRules([ListenerArn => Str, RuleArns => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ELBv2::DescribeRules>

Returns: a L<Paws::ELBv2::DescribeRulesOutput> instance

  Describes the specified rules or the rules for the specified listener.
You must specify either a listener or one or more rules.


=head2 DescribeSSLPolicies([Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])

Each argument is described in detail in: L<Paws::ELBv2::DescribeSSLPolicies>

Returns: a L<Paws::ELBv2::DescribeSSLPoliciesOutput> instance

  Describes the specified policies or all policies used for SSL
negotiation.

For more information, see Security Policies in the I<Application Load
Balancers Guide>.


=head2 DescribeTags(ResourceArns => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::ELBv2::DescribeTags>

Returns: a L<Paws::ELBv2::DescribeTagsOutput> instance

  Describes the tags for the specified resources. You can describe the
tags for one or more Application Load Balancers and target groups.


=head2 DescribeTargetGroupAttributes(TargetGroupArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::DescribeTargetGroupAttributes>

Returns: a L<Paws::ELBv2::DescribeTargetGroupAttributesOutput> instance

  Describes the attributes for the specified target group.


=head2 DescribeTargetGroups([LoadBalancerArn => Str, Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int, TargetGroupArns => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ELBv2::DescribeTargetGroups>

Returns: a L<Paws::ELBv2::DescribeTargetGroupsOutput> instance

  Describes the specified target groups or all of your target groups. By
default, all target groups are described. Alternatively, you can
specify one of the following to filter the results: the ARN of the load
balancer, the names of one or more target groups, or the ARNs of one or
more target groups.

To describe the targets for a target group, use DescribeTargetHealth.
To describe the attributes of a target group, use
DescribeTargetGroupAttributes.


=head2 DescribeTargetHealth(TargetGroupArn => Str, [Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]])

Each argument is described in detail in: L<Paws::ELBv2::DescribeTargetHealth>

Returns: a L<Paws::ELBv2::DescribeTargetHealthOutput> instance

  Describes the health of the specified targets or all of your targets.


=head2 ModifyListener(ListenerArn => Str, [Certificates => ArrayRef[L<Paws::ELBv2::Certificate>], DefaultActions => ArrayRef[L<Paws::ELBv2::Action>], Port => Int, Protocol => Str, SslPolicy => Str])

Each argument is described in detail in: L<Paws::ELBv2::ModifyListener>

Returns: a L<Paws::ELBv2::ModifyListenerOutput> instance

  Modifies the specified properties of the specified listener.

Any properties that you do not specify retain their current values.
However, changing the protocol from HTTPS to HTTP removes the security
policy and SSL certificate properties. If you change the protocol from
HTTP to HTTPS, you must add the security policy and server certificate.


=head2 ModifyLoadBalancerAttributes(Attributes => ArrayRef[L<Paws::ELBv2::LoadBalancerAttribute>], LoadBalancerArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::ModifyLoadBalancerAttributes>

Returns: a L<Paws::ELBv2::ModifyLoadBalancerAttributesOutput> instance

  Modifies the specified attributes of the specified Application Load
Balancer.

If any of the specified attributes can't be modified as requested, the
call fails. Any existing attributes that you do not modify retain their
current values.


=head2 ModifyRule(RuleArn => Str, [Actions => ArrayRef[L<Paws::ELBv2::Action>], Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]])

Each argument is described in detail in: L<Paws::ELBv2::ModifyRule>

Returns: a L<Paws::ELBv2::ModifyRuleOutput> instance

  Modifies the specified rule.

Any existing properties that you do not modify retain their current
values.

To modify the default action, use ModifyListener.


=head2 ModifyTargetGroup(TargetGroupArn => Str, [HealthCheckIntervalSeconds => Int, HealthCheckPath => Str, HealthCheckPort => Str, HealthCheckProtocol => Str, HealthCheckTimeoutSeconds => Int, HealthyThresholdCount => Int, Matcher => L<Paws::ELBv2::Matcher>, UnhealthyThresholdCount => Int])

Each argument is described in detail in: L<Paws::ELBv2::ModifyTargetGroup>

Returns: a L<Paws::ELBv2::ModifyTargetGroupOutput> instance

  Modifies the health checks used when evaluating the health state of the
targets in the specified target group.

To monitor the health of the targets, use DescribeTargetHealth.


=head2 ModifyTargetGroupAttributes(Attributes => ArrayRef[L<Paws::ELBv2::TargetGroupAttribute>], TargetGroupArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::ModifyTargetGroupAttributes>

Returns: a L<Paws::ELBv2::ModifyTargetGroupAttributesOutput> instance

  Modifies the specified attributes of the specified target group.


=head2 RegisterTargets(TargetGroupArn => Str, Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>])

Each argument is described in detail in: L<Paws::ELBv2::RegisterTargets>

Returns: a L<Paws::ELBv2::RegisterTargetsOutput> instance

  Registers the specified targets with the specified target group.

By default, the load balancer routes requests to registered targets
using the protocol and port number for the target group. Alternatively,
you can override the port for a target when you register it.

The target must be in the virtual private cloud (VPC) that you
specified for the target group. If the target is an EC2 instance, it
must be in the C<running> state when you register it.

To remove a target from a target group, use DeregisterTargets.


=head2 RemoveTags(ResourceArns => ArrayRef[Str|Undef], TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::ELBv2::RemoveTags>

Returns: a L<Paws::ELBv2::RemoveTagsOutput> instance

  Removes the specified tags from the specified resource.

To list the current tags for your resources, use DescribeTags.


=head2 SetIpAddressType(IpAddressType => Str, LoadBalancerArn => Str)

Each argument is described in detail in: L<Paws::ELBv2::SetIpAddressType>

Returns: a L<Paws::ELBv2::SetIpAddressTypeOutput> instance

  Sets the type of IP addresses used by the subnets of the specified
Application Load Balancer.


=head2 SetRulePriorities(RulePriorities => ArrayRef[L<Paws::ELBv2::RulePriorityPair>])

Each argument is described in detail in: L<Paws::ELBv2::SetRulePriorities>

Returns: a L<Paws::ELBv2::SetRulePrioritiesOutput> instance

  Sets the priorities of the specified rules.

You can reorder the rules as long as there are no priority conflicts in
the new order. Any existing rules that you do not specify retain their
current priority.


=head2 SetSecurityGroups(LoadBalancerArn => Str, SecurityGroups => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::ELBv2::SetSecurityGroups>

Returns: a L<Paws::ELBv2::SetSecurityGroupsOutput> instance

  Associates the specified security groups with the specified load
balancer. The specified security groups override the previously
associated security groups.


=head2 SetSubnets(LoadBalancerArn => Str, Subnets => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::ELBv2::SetSubnets>

Returns: a L<Paws::ELBv2::SetSubnetsOutput> instance

  Enables the Availability Zone for the specified subnets for the
specified load balancer. The specified subnets replace the previously
enabled subnets.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllListeners(sub { },[ListenerArns => ArrayRef[Str|Undef], LoadBalancerArn => Str, Marker => Str, PageSize => Int])

=head2 DescribeAllListeners([ListenerArns => ArrayRef[Str|Undef], LoadBalancerArn => Str, Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Listeners, passing the object as the first parameter, and the string 'Listeners' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeListenersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllLoadBalancers(sub { },[LoadBalancerArns => ArrayRef[Str|Undef], Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])

=head2 DescribeAllLoadBalancers([LoadBalancerArns => ArrayRef[Str|Undef], Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - LoadBalancers, passing the object as the first parameter, and the string 'LoadBalancers' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeLoadBalancersOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTargetGroups(sub { },[LoadBalancerArn => Str, Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int, TargetGroupArns => ArrayRef[Str|Undef]])

=head2 DescribeAllTargetGroups([LoadBalancerArn => Str, Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int, TargetGroupArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TargetGroups, passing the object as the first parameter, and the string 'TargetGroups' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeTargetGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

