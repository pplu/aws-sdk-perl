
use AWS::API;


package Aws::ELB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AddTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::AddTags', @_);
  }
  sub ApplySecurityGroupsToLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::ApplySecurityGroupsToLoadBalancer', @_);
  }
  sub AttachLoadBalancerToSubnets {
    my $self = shift;
    return $self->do_call('Aws::ELB::AttachLoadBalancerToSubnets', @_);
  }
  sub ConfigureHealthCheck {
    my $self = shift;
    return $self->do_call('Aws::ELB::ConfigureHealthCheck', @_);
  }
  sub CreateAppCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateAppCookieStickinessPolicy', @_);
  }
  sub CreateLBCookieStickinessPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLBCookieStickinessPolicy', @_);
  }
  sub CreateLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancer', @_);
  }
  sub CreateLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancerListeners', @_);
  }
  sub CreateLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::CreateLoadBalancerPolicy', @_);
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancer', @_);
  }
  sub DeleteLoadBalancerListeners {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancerListeners', @_);
  }
  sub DeleteLoadBalancerPolicy {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeleteLoadBalancerPolicy', @_);
  }
  sub DeregisterInstancesFromLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DeregisterInstancesFromLoadBalancer', @_);
  }
  sub DescribeInstanceHealth {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeInstanceHealth', @_);
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerAttributes', @_);
  }
  sub DescribeLoadBalancerPolicies {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerPolicies', @_);
  }
  sub DescribeLoadBalancerPolicyTypes {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancerPolicyTypes', @_);
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeLoadBalancers', @_);
  }
  sub DescribeTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::DescribeTags', @_);
  }
  sub DetachLoadBalancerFromSubnets {
    my $self = shift;
    return $self->do_call('Aws::ELB::DetachLoadBalancerFromSubnets', @_);
  }
  sub DisableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::DisableAvailabilityZonesForLoadBalancer', @_);
  }
  sub EnableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::EnableAvailabilityZonesForLoadBalancer', @_);
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    return $self->do_call('Aws::ELB::ModifyLoadBalancerAttributes', @_);
  }
  sub RegisterInstancesWithLoadBalancer {
    my $self = shift;
    return $self->do_call('Aws::ELB::RegisterInstancesWithLoadBalancer', @_);
  }
  sub RemoveTags {
    my $self = shift;
    return $self->do_call('Aws::ELB::RemoveTags', @_);
  }
  sub SetLoadBalancerListenerSSLCertificate {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerListenerSSLCertificate', @_);
  }
  sub SetLoadBalancerPoliciesForBackendServer {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerPoliciesForBackendServer', @_);
  }
  sub SetLoadBalancerPoliciesOfListener {
    my $self = shift;
    return $self->do_call('Aws::ELB::SetLoadBalancerPoliciesOfListener', @_);
  }
}
1;