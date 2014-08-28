
use AWS::API;


package Aws::ELB::AddTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::ApplySecurityGroupsToLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::AttachLoadBalancerToSubnetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::ConfigureHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck');

}
package Aws::ELB::CreateAppCookieStickinessPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLBCookieStickinessPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DNSName => (is => 'ro', isa => 'Str');

}
package Aws::ELB::CreateLoadBalancerListenersResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::CreateLoadBalancerPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerListenersResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeleteLoadBalancerPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::DeregisterInstancesFromLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
package Aws::ELB::DescribeInstanceHealthResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Aws::ELB::InstanceState]');

}
package Aws::ELB::DescribeLoadBalancerAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');

}
package Aws::ELB::DescribeLoadBalancerPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyDescription]');

}
package Aws::ELB::DescribeLoadBalancerPolicyTypesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyTypeDescription]');

}
package Aws::ELB::DescribeLoadBalancersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
package Aws::ELB::DescribeTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has TagDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::TagDescription]');

}
package Aws::ELB::DetachLoadBalancerFromSubnetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::ELB::ModifyLoadBalancerAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');
  has LoadBalancerName => (is => 'ro', isa => 'Str');

}
package Aws::ELB::RegisterInstancesWithLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
package Aws::ELB::RemoveTagsResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerListenerSSLCertificateResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::ELB::SetLoadBalancerPoliciesOfListenerResult {
  use Moose;
  with 'AWS::API::ResultParser';

}

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
