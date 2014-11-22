
use Paws::API;


package Paws::ELB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
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