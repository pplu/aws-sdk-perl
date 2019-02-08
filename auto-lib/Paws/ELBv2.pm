package Paws::ELBv2;
  use Moose;
  sub service { 'elasticloadbalancing' }
  sub signing_name { 'elasticloadbalancing' }
  sub version { '2015-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  
  sub AddListenerCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::AddListenerCertificates', @_);
    return $self->caller->do_call($self, $call_object);
  }
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
  sub DescribeAccountLimits {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeAccountLimits', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeListenerCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::DescribeListenerCertificates', @_);
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
  sub RemoveListenerCertificates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ELBv2::RemoveListenerCertificates', @_);
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
  
  sub DescribeAllAccountLimits {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeAccountLimits(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeAccountLimits(@_, Marker => $next_result->NextMarker);
        push @{ $result->Limits }, @{ $next_result->Limits };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Limits') foreach (@{ $result->Limits });
        $result = $self->DescribeAccountLimits(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Limits') foreach (@{ $result->Limits });
    }

    return undef
  }
  sub DescribeAllListenerCertificates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeListenerCertificates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeListenerCertificates(@_, Marker => $next_result->NextMarker);
        push @{ $result->Certificates }, @{ $next_result->Certificates };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
        $result = $self->DescribeListenerCertificates(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Certificates') foreach (@{ $result->Certificates });
    }

    return undef
  }
  sub DescribeAllListeners {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeListeners(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeListeners(@_, Marker => $next_result->NextMarker);
        push @{ $result->Listeners }, @{ $next_result->Listeners };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
        $result = $self->DescribeListeners(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Listeners') foreach (@{ $result->Listeners });
    }

    return undef
  }
  sub DescribeAllLoadBalancers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeLoadBalancers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeLoadBalancers(@_, Marker => $next_result->NextMarker);
        push @{ $result->LoadBalancers }, @{ $next_result->LoadBalancers };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'LoadBalancers') foreach (@{ $result->LoadBalancers });
        $result = $self->DescribeLoadBalancers(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'LoadBalancers') foreach (@{ $result->LoadBalancers });
    }

    return undef
  }
  sub DescribeAllRules {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeRules(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeRules(@_, Marker => $next_result->NextMarker);
        push @{ $result->Rules }, @{ $next_result->Rules };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Rules') foreach (@{ $result->Rules });
        $result = $self->DescribeRules(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Rules') foreach (@{ $result->Rules });
    }

    return undef
  }
  sub DescribeAllSSLPolicies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSSLPolicies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeSSLPolicies(@_, Marker => $next_result->NextMarker);
        push @{ $result->SslPolicies }, @{ $next_result->SslPolicies };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'SslPolicies') foreach (@{ $result->SslPolicies });
        $result = $self->DescribeSSLPolicies(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'SslPolicies') foreach (@{ $result->SslPolicies });
    }

    return undef
  }
  sub DescribeAllTargetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTargetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->DescribeTargetGroups(@_, Marker => $next_result->NextMarker);
        push @{ $result->TargetGroups }, @{ $next_result->TargetGroups };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'TargetGroups') foreach (@{ $result->TargetGroups });
        $result = $self->DescribeTargetGroups(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'TargetGroups') foreach (@{ $result->TargetGroups });
    }

    return undef
  }


  sub operations { qw/AddListenerCertificates AddTags CreateListener CreateLoadBalancer CreateRule CreateTargetGroup DeleteListener DeleteLoadBalancer DeleteRule DeleteTargetGroup DeregisterTargets DescribeAccountLimits DescribeListenerCertificates DescribeListeners DescribeLoadBalancerAttributes DescribeLoadBalancers DescribeRules DescribeSSLPolicies DescribeTags DescribeTargetGroupAttributes DescribeTargetGroups DescribeTargetHealth ModifyListener ModifyLoadBalancerAttributes ModifyRule ModifyTargetGroup ModifyTargetGroupAttributes RegisterTargets RemoveListenerCertificates RemoveTags SetIpAddressType SetRulePriorities SetSecurityGroups SetSubnets / }

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

Elastic Load Balancing supports the following types of load balancers:
Application Load Balancers, Network Load Balancers, and Classic Load
Balancers.

An Application Load Balancer makes routing and load balancing decisions
at the application layer (HTTP/HTTPS). A Network Load Balancer makes
routing and load balancing decisions at the transport layer (TCP/TLS).
Both Application Load Balancers and Network Load Balancers can route
requests to one or more ports on each EC2 instance or container
instance in your virtual private cloud (VPC).

A Classic Load Balancer makes routing and load balancing decisions
either at the transport layer (TCP/SSL) or the application layer
(HTTP/HTTPS), and supports either EC2-Classic or a VPC. For more
information, see the Elastic Load Balancing User Guide
(http://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/).

This reference covers the 2015-12-01 API, which supports Application
Load Balancers and Network Load Balancers. The 2012-06-01 API supports
Classic Load Balancers.

To get started, complete the following tasks:

=over

=item 1.

Create a load balancer using CreateLoadBalancer.

=item 2.

Create a target group using CreateTargetGroup.

=item 3.

Register targets for the target group using RegisterTargets.

=item 4.

Create one or more listeners for your load balancer using
CreateListener.

=back

To delete a load balancer and its related resources, complete the
following tasks:

=over

=item 1.

Delete the load balancer using DeleteLoadBalancer.

=item 2.

Delete the target group using DeleteTargetGroup.

=back

All Elastic Load Balancing operations are idempotent, which means that
they complete at most one time. If you repeat an operation, it
succeeds.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing-2015-12-01>


=head1 METHODS

=head2 AddListenerCertificates

=over

=item Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::AddListenerCertificates>

Returns: a L<Paws::ELBv2::AddListenerCertificatesOutput> instance

Adds the specified certificate to the specified HTTPS listener.

If the certificate was already added, the call is successful but the
certificate is not added again.

To list the certificates for your listener, use
DescribeListenerCertificates. To remove certificates from your
listener, use RemoveListenerCertificates. To specify the default SSL
server certificate, use ModifyListener.


=head2 AddTags

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item Tags => ArrayRef[L<Paws::ELBv2::Tag>]


=back

Each argument is described in detail in: L<Paws::ELBv2::AddTags>

Returns: a L<Paws::ELBv2::AddTagsOutput> instance

Adds the specified tags to the specified Elastic Load Balancing
resource. You can tag your Application Load Balancers, Network Load
Balancers, and your target groups.

Each tag consists of a key and an optional value. If a resource already
has a tag with the same key, C<AddTags> updates its value.

To list the current tags for your resources, use DescribeTags. To
remove tags from your resources, use RemoveTags.


=head2 CreateListener

=over

=item DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

=item LoadBalancerArn => Str

=item Port => Int

=item Protocol => Str

=item [Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]]

=item [SslPolicy => Str]


=back

Each argument is described in detail in: L<Paws::ELBv2::CreateListener>

Returns: a L<Paws::ELBv2::CreateListenerOutput> instance

Creates a listener for the specified Application Load Balancer or
Network Load Balancer.

To update a listener, use ModifyListener. When you are finished with a
listener, you can delete it using DeleteListener. If you are finished
with both the listener and the load balancer, you can delete them both
using DeleteLoadBalancer.

This operation is idempotent, which means that it completes at most one
time. If you attempt to create multiple listeners with the same
settings, each call succeeds.

For more information, see Listeners for Your Application Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html)
in the I<Application Load Balancers Guide> and Listeners for Your
Network Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-listeners.html)
in the I<Network Load Balancers Guide>.


=head2 CreateLoadBalancer

=over

=item Name => Str

=item [IpAddressType => Str]

=item [Scheme => Str]

=item [SecurityGroups => ArrayRef[Str|Undef]]

=item [SubnetMappings => ArrayRef[L<Paws::ELBv2::SubnetMapping>]]

=item [Subnets => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::ELBv2::Tag>]]

=item [Type => Str]


=back

Each argument is described in detail in: L<Paws::ELBv2::CreateLoadBalancer>

Returns: a L<Paws::ELBv2::CreateLoadBalancerOutput> instance

Creates an Application Load Balancer or a Network Load Balancer.

When you create a load balancer, you can specify security groups,
public subnets, IP address type, and tags. Otherwise, you could do so
later using SetSecurityGroups, SetSubnets, SetIpAddressType, and
AddTags.

To create listeners for your load balancer, use CreateListener. To
describe your current load balancers, see DescribeLoadBalancers. When
you are finished with a load balancer, you can delete it using
DeleteLoadBalancer.

For limit information, see Limits for Your Application Load Balancer
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
in the I<Application Load Balancers Guide> and Limits for Your Network
Load Balancer
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
in the I<Network Load Balancers Guide>.

This operation is idempotent, which means that it completes at most one
time. If you attempt to create multiple load balancers with the same
settings, each call succeeds.

For more information, see Application Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html)
in the I<Application Load Balancers Guide> and Network Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html)
in the I<Network Load Balancers Guide>.


=head2 CreateRule

=over

=item Actions => ArrayRef[L<Paws::ELBv2::Action>]

=item Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]

=item ListenerArn => Str

=item Priority => Int


=back

Each argument is described in detail in: L<Paws::ELBv2::CreateRule>

Returns: a L<Paws::ELBv2::CreateRuleOutput> instance

Creates a rule for the specified listener. The listener must be
associated with an Application Load Balancer.

Rules are evaluated in priority order, from the lowest value to the
highest value. When the conditions for a rule are met, its actions are
performed. If the conditions for no rules are met, the actions for the
default rule are performed. For more information, see Listener Rules
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-listeners.html#listener-rules)
in the I<Application Load Balancers Guide>.

To view your current rules, use DescribeRules. To update a rule, use
ModifyRule. To set the priorities of your rules, use SetRulePriorities.
To delete a rule, use DeleteRule.


=head2 CreateTargetGroup

=over

=item Name => Str

=item [HealthCheckEnabled => Bool]

=item [HealthCheckIntervalSeconds => Int]

=item [HealthCheckPath => Str]

=item [HealthCheckPort => Str]

=item [HealthCheckProtocol => Str]

=item [HealthCheckTimeoutSeconds => Int]

=item [HealthyThresholdCount => Int]

=item [Matcher => L<Paws::ELBv2::Matcher>]

=item [Port => Int]

=item [Protocol => Str]

=item [TargetType => Str]

=item [UnhealthyThresholdCount => Int]

=item [VpcId => Str]


=back

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

This operation is idempotent, which means that it completes at most one
time. If you attempt to create multiple target groups with the same
settings, each call succeeds.

For more information, see Target Groups for Your Application Load
Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html)
in the I<Application Load Balancers Guide> or Target Groups for Your
Network Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html)
in the I<Network Load Balancers Guide>.


=head2 DeleteListener

=over

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DeleteListener>

Returns: a L<Paws::ELBv2::DeleteListenerOutput> instance

Deletes the specified listener.

Alternatively, your listener is deleted when you delete the load
balancer to which it is attached, using DeleteLoadBalancer.


=head2 DeleteLoadBalancer

=over

=item LoadBalancerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DeleteLoadBalancer>

Returns: a L<Paws::ELBv2::DeleteLoadBalancerOutput> instance

Deletes the specified Application Load Balancer or Network Load
Balancer and its attached listeners.

You can't delete a load balancer if deletion protection is enabled. If
the load balancer does not exist or has already been deleted, the call
succeeds.

Deleting a load balancer does not affect its registered targets. For
example, your EC2 instances continue to run and are still registered to
their target groups. If you no longer need these EC2 instances, you can
stop or terminate them.


=head2 DeleteRule

=over

=item RuleArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DeleteRule>

Returns: a L<Paws::ELBv2::DeleteRuleOutput> instance

Deletes the specified rule.


=head2 DeleteTargetGroup

=over

=item TargetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DeleteTargetGroup>

Returns: a L<Paws::ELBv2::DeleteTargetGroupOutput> instance

Deletes the specified target group.

You can delete a target group if it is not referenced by any actions.
Deleting a target group also deletes any associated health checks.


=head2 DeregisterTargets

=over

=item TargetGroupArn => Str

=item Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]


=back

Each argument is described in detail in: L<Paws::ELBv2::DeregisterTargets>

Returns: a L<Paws::ELBv2::DeregisterTargetsOutput> instance

Deregisters the specified targets from the specified target group.
After the targets are deregistered, they no longer receive traffic from
the load balancer.


=head2 DescribeAccountLimits

=over

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeAccountLimits>

Returns: a L<Paws::ELBv2::DescribeAccountLimitsOutput> instance

Describes the current Elastic Load Balancing resource limits for your
AWS account.

For more information, see Limits for Your Application Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-limits.html)
in the I<Application Load Balancer Guide> or Limits for Your Network
Load Balancers
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-limits.html)
in the I<Network Load Balancers Guide>.


=head2 DescribeListenerCertificates

=over

=item ListenerArn => Str

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeListenerCertificates>

Returns: a L<Paws::ELBv2::DescribeListenerCertificatesOutput> instance

Describes the certificates for the specified HTTPS listener.


=head2 DescribeListeners

=over

=item [ListenerArns => ArrayRef[Str|Undef]]

=item [LoadBalancerArn => Str]

=item [Marker => Str]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeListeners>

Returns: a L<Paws::ELBv2::DescribeListenersOutput> instance

Describes the specified listeners or the listeners for the specified
Application Load Balancer or Network Load Balancer. You must specify
either a load balancer or one or more listeners.


=head2 DescribeLoadBalancerAttributes

=over

=item LoadBalancerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeLoadBalancerAttributes>

Returns: a L<Paws::ELBv2::DescribeLoadBalancerAttributesOutput> instance

Describes the attributes for the specified Application Load Balancer or
Network Load Balancer.

For more information, see Load Balancer Attributes
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes)
in the I<Application Load Balancers Guide> or Load Balancer Attributes
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes)
in the I<Network Load Balancers Guide>.


=head2 DescribeLoadBalancers

=over

=item [LoadBalancerArns => ArrayRef[Str|Undef]]

=item [Marker => Str]

=item [Names => ArrayRef[Str|Undef]]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeLoadBalancers>

Returns: a L<Paws::ELBv2::DescribeLoadBalancersOutput> instance

Describes the specified load balancers or all of your load balancers.

To describe the listeners for a load balancer, use DescribeListeners.
To describe the attributes for a load balancer, use
DescribeLoadBalancerAttributes.


=head2 DescribeRules

=over

=item [ListenerArn => Str]

=item [Marker => Str]

=item [PageSize => Int]

=item [RuleArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeRules>

Returns: a L<Paws::ELBv2::DescribeRulesOutput> instance

Describes the specified rules or the rules for the specified listener.
You must specify either a listener or one or more rules.


=head2 DescribeSSLPolicies

=over

=item [Marker => Str]

=item [Names => ArrayRef[Str|Undef]]

=item [PageSize => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeSSLPolicies>

Returns: a L<Paws::ELBv2::DescribeSSLPoliciesOutput> instance

Describes the specified policies or all policies used for SSL
negotiation.

For more information, see Security Policies
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies)
in the I<Application Load Balancers Guide>.


=head2 DescribeTags

=over

=item ResourceArns => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeTags>

Returns: a L<Paws::ELBv2::DescribeTagsOutput> instance

Describes the tags for the specified resources. You can describe the
tags for one or more Application Load Balancers, Network Load
Balancers, and target groups.


=head2 DescribeTargetGroupAttributes

=over

=item TargetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeTargetGroupAttributes>

Returns: a L<Paws::ELBv2::DescribeTargetGroupAttributesOutput> instance

Describes the attributes for the specified target group.

For more information, see Target Group Attributes
(http://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-target-groups.html#target-group-attributes)
in the I<Application Load Balancers Guide> or Target Group Attributes
(http://docs.aws.amazon.com/elasticloadbalancing/latest/network/load-balancer-target-groups.html#target-group-attributes)
in the I<Network Load Balancers Guide>.


=head2 DescribeTargetGroups

=over

=item [LoadBalancerArn => Str]

=item [Marker => Str]

=item [Names => ArrayRef[Str|Undef]]

=item [PageSize => Int]

=item [TargetGroupArns => ArrayRef[Str|Undef]]


=back

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


=head2 DescribeTargetHealth

=over

=item TargetGroupArn => Str

=item [Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]]


=back

Each argument is described in detail in: L<Paws::ELBv2::DescribeTargetHealth>

Returns: a L<Paws::ELBv2::DescribeTargetHealthOutput> instance

Describes the health of the specified targets or all of your targets.


=head2 ModifyListener

=over

=item ListenerArn => Str

=item [Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]]

=item [DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]]

=item [Port => Int]

=item [Protocol => Str]

=item [SslPolicy => Str]


=back

Each argument is described in detail in: L<Paws::ELBv2::ModifyListener>

Returns: a L<Paws::ELBv2::ModifyListenerOutput> instance

Modifies the specified properties of the specified listener.

Any properties that you do not specify retain their current values.
However, changing the protocol from HTTPS to HTTP, or from TLS to TCP,
removes the security policy and server certificate properties. If you
change the protocol from HTTP to HTTPS, or from TCP to TLS, you must
add the security policy and server certificate properties.


=head2 ModifyLoadBalancerAttributes

=over

=item Attributes => ArrayRef[L<Paws::ELBv2::LoadBalancerAttribute>]

=item LoadBalancerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::ModifyLoadBalancerAttributes>

Returns: a L<Paws::ELBv2::ModifyLoadBalancerAttributesOutput> instance

Modifies the specified attributes of the specified Application Load
Balancer or Network Load Balancer.

If any of the specified attributes can't be modified as requested, the
call fails. Any existing attributes that you do not modify retain their
current values.


=head2 ModifyRule

=over

=item RuleArn => Str

=item [Actions => ArrayRef[L<Paws::ELBv2::Action>]]

=item [Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]]


=back

Each argument is described in detail in: L<Paws::ELBv2::ModifyRule>

Returns: a L<Paws::ELBv2::ModifyRuleOutput> instance

Modifies the specified rule.

Any existing properties that you do not modify retain their current
values.

To modify the actions for the default rule, use ModifyListener.


=head2 ModifyTargetGroup

=over

=item TargetGroupArn => Str

=item [HealthCheckEnabled => Bool]

=item [HealthCheckIntervalSeconds => Int]

=item [HealthCheckPath => Str]

=item [HealthCheckPort => Str]

=item [HealthCheckProtocol => Str]

=item [HealthCheckTimeoutSeconds => Int]

=item [HealthyThresholdCount => Int]

=item [Matcher => L<Paws::ELBv2::Matcher>]

=item [UnhealthyThresholdCount => Int]


=back

Each argument is described in detail in: L<Paws::ELBv2::ModifyTargetGroup>

Returns: a L<Paws::ELBv2::ModifyTargetGroupOutput> instance

Modifies the health checks used when evaluating the health state of the
targets in the specified target group.

To monitor the health of the targets, use DescribeTargetHealth.


=head2 ModifyTargetGroupAttributes

=over

=item Attributes => ArrayRef[L<Paws::ELBv2::TargetGroupAttribute>]

=item TargetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::ModifyTargetGroupAttributes>

Returns: a L<Paws::ELBv2::ModifyTargetGroupAttributesOutput> instance

Modifies the specified attributes of the specified target group.


=head2 RegisterTargets

=over

=item TargetGroupArn => Str

=item Targets => ArrayRef[L<Paws::ELBv2::TargetDescription>]


=back

Each argument is described in detail in: L<Paws::ELBv2::RegisterTargets>

Returns: a L<Paws::ELBv2::RegisterTargetsOutput> instance

Registers the specified targets with the specified target group.

If the target is an EC2 instance, it must be in the C<running> state
when you register it.

By default, the load balancer routes requests to registered targets
using the protocol and port for the target group. Alternatively, you
can override the port for a target when you register it. You can
register each EC2 instance or IP address with the same target group
multiple times using different ports.

With a Network Load Balancer, you cannot register instances by instance
ID if they have the following instance types: C1, CC1, CC2, CG1, CG2,
CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1. You can register
instances of these types by IP address.

To remove a target from a target group, use DeregisterTargets.


=head2 RemoveListenerCertificates

=over

=item Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

=item ListenerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::RemoveListenerCertificates>

Returns: a L<Paws::ELBv2::RemoveListenerCertificatesOutput> instance

Removes the specified certificate from the specified HTTPS listener.

You can't remove the default certificate for a listener. To replace the
default certificate, call ModifyListener.

To list the certificates for your listener, use
DescribeListenerCertificates.


=head2 RemoveTags

=over

=item ResourceArns => ArrayRef[Str|Undef]

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ELBv2::RemoveTags>

Returns: a L<Paws::ELBv2::RemoveTagsOutput> instance

Removes the specified tags from the specified Elastic Load Balancing
resource.

To list the current tags for your resources, use DescribeTags.


=head2 SetIpAddressType

=over

=item IpAddressType => Str

=item LoadBalancerArn => Str


=back

Each argument is described in detail in: L<Paws::ELBv2::SetIpAddressType>

Returns: a L<Paws::ELBv2::SetIpAddressTypeOutput> instance

Sets the type of IP addresses used by the subnets of the specified
Application Load Balancer or Network Load Balancer.

Network Load Balancers must use C<ipv4>.


=head2 SetRulePriorities

=over

=item RulePriorities => ArrayRef[L<Paws::ELBv2::RulePriorityPair>]


=back

Each argument is described in detail in: L<Paws::ELBv2::SetRulePriorities>

Returns: a L<Paws::ELBv2::SetRulePrioritiesOutput> instance

Sets the priorities of the specified rules.

You can reorder the rules as long as there are no priority conflicts in
the new order. Any existing rules that you do not specify retain their
current priority.


=head2 SetSecurityGroups

=over

=item LoadBalancerArn => Str

=item SecurityGroups => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ELBv2::SetSecurityGroups>

Returns: a L<Paws::ELBv2::SetSecurityGroupsOutput> instance

Associates the specified security groups with the specified Application
Load Balancer. The specified security groups override the previously
associated security groups.

You can't specify a security group for a Network Load Balancer.


=head2 SetSubnets

=over

=item LoadBalancerArn => Str

=item [SubnetMappings => ArrayRef[L<Paws::ELBv2::SubnetMapping>]]

=item [Subnets => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ELBv2::SetSubnets>

Returns: a L<Paws::ELBv2::SetSubnetsOutput> instance

Enables the Availability Zone for the specified public subnets for the
specified Application Load Balancer. The specified subnets replace the
previously enabled subnets.

You can't change the subnets for a Network Load Balancer.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllAccountLimits(sub { },[Marker => Str, PageSize => Int])

=head2 DescribeAllAccountLimits([Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Limits, passing the object as the first parameter, and the string 'Limits' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeAccountLimitsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllListenerCertificates(sub { },ListenerArn => Str, [Marker => Str, PageSize => Int])

=head2 DescribeAllListenerCertificates(ListenerArn => Str, [Marker => Str, PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Certificates, passing the object as the first parameter, and the string 'Certificates' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeListenerCertificatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


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


=head2 DescribeAllRules(sub { },[ListenerArn => Str, Marker => Str, PageSize => Int, RuleArns => ArrayRef[Str|Undef]])

=head2 DescribeAllRules([ListenerArn => Str, Marker => Str, PageSize => Int, RuleArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rules, passing the object as the first parameter, and the string 'Rules' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeRulesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSSLPolicies(sub { },[Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])

=head2 DescribeAllSSLPolicies([Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SslPolicies, passing the object as the first parameter, and the string 'SslPolicies' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeSSLPoliciesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTargetGroups(sub { },[LoadBalancerArn => Str, Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int, TargetGroupArns => ArrayRef[Str|Undef]])

=head2 DescribeAllTargetGroups([LoadBalancerArn => Str, Marker => Str, Names => ArrayRef[Str|Undef], PageSize => Int, TargetGroupArns => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TargetGroups, passing the object as the first parameter, and the string 'TargetGroups' as the second parameter 

If not, it will return a a L<Paws::ELBv2::DescribeTargetGroupsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

