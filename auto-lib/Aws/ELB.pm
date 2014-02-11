
use AWS::API;


package Aws::ELB::AppCookieStickinessPolicy {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CookieName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str');
}

package Aws::ELB::BackendServerDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has InstancePort => (is => 'ro', isa => 'Int');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::ELB::CrossZoneLoadBalancing {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Enabled => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::ELB::HealthCheck {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has HealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
  has Interval => (is => 'ro', isa => 'Int', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int', required => 1);
  has UnhealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
}

package Aws::ELB::Instance {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has InstanceId => (is => 'ro', isa => 'Str');
}

package Aws::ELB::InstanceState {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has ReasonCode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

package Aws::ELB::LBCookieStickinessPolicy {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has PolicyName => (is => 'ro', isa => 'Str');
}

package Aws::ELB::Listener {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has InstanceProtocol => (is => 'ro', isa => 'Str');
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str');
}

package Aws::ELB::ListenerDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Listener => (is => 'ro', isa => 'Aws::ELB::Listener');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::ELB::LoadBalancerAttributes {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has CrossZoneLoadBalancing => (is => 'ro', isa => 'Aws::ELB::CrossZoneLoadBalancing');
}

package Aws::ELB::LoadBalancerDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has BackendServerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::BackendServerDescription]');
  has CanonicalHostedZoneName => (is => 'ro', isa => 'Str');
  has CanonicalHostedZoneNameID => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DNSName => (is => 'ro', isa => 'Str');
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck');
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');
  has ListenerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::ListenerDescription]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'Aws::ELB::Policies');
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceSecurityGroup => (is => 'ro', isa => 'Aws::ELB::SourceSecurityGroup');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCId => (is => 'ro', isa => 'Str');
}

package Aws::ELB::Policies {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AppCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::AppCookieStickinessPolicy]');
  has LBCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LBCookieStickinessPolicy]');
  has OtherPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::ELB::PolicyAttribute {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

package Aws::ELB::PolicyAttributeDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

package Aws::ELB::PolicyAttributeTypeDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeType => (is => 'ro', isa => 'Str');
  has Cardinality => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

package Aws::ELB::PolicyDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has PolicyAttributeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeDescription]');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

package Aws::ELB::PolicyTypeDescription {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Description => (is => 'ro', isa => 'Str');
  has PolicyAttributeTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeTypeDescription]');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

package Aws::ELB::SourceSecurityGroup {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has GroupName => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
}



package Aws::ELB::ApplySecurityGroupsToLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  has _returns => (isa => 'Aws::ELB::ApplySecurityGroupsToLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');  
}
package Aws::ELB::AttachLoadBalancerToSubnets {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnets');
  has _returns => (isa => 'Aws::ELB::AttachLoadBalancerToSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');  
}
package Aws::ELB::ConfigureHealthCheck {
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  has _returns => (isa => 'Aws::ELB::ConfigureHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');  
}
package Aws::ELB::CreateAppCookieStickinessPolicy {
  use Moose;
  has CookieName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicy');
  has _returns => (isa => 'Aws::ELB::CreateAppCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicyResult');  
}
package Aws::ELB::CreateLBCookieStickinessPolicy {
  use Moose;
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  has _returns => (isa => 'Aws::ELB::CreateLBCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');  
}
package Aws::ELB::CreateLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  has _returns => (isa => 'Aws::ELB::CreateLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');  
}
package Aws::ELB::CreateLoadBalancerListeners {
  use Moose;
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  has _returns => (isa => 'Aws::ELB::CreateLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');  
}
package Aws::ELB::CreateLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  has _returns => (isa => 'Aws::ELB::CreateLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');  
}
package Aws::ELB::DeleteLoadBalancer {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');  
}
package Aws::ELB::DeleteLoadBalancerListeners {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPorts => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListeners');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListenersResult');  
}
package Aws::ELB::DeleteLoadBalancerPolicy {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');  
}
package Aws::ELB::DeregisterInstancesFromLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DeregisterInstancesFromLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancerResult');  
}
package Aws::ELB::DescribeInstanceHealth {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  has _returns => (isa => 'Aws::ELB::DescribeInstanceHealthResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');  
}
package Aws::ELB::DescribeLoadBalancerAttributes {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributes');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributesResult');  
}
package Aws::ELB::DescribeLoadBalancerPolicies {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicies');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPoliciesResult');  
}
package Aws::ELB::DescribeLoadBalancerPolicyTypes {
  use Moose;
  has PolicyTypeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerPolicyTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');  
}
package Aws::ELB::DescribeLoadBalancers {
  use Moose;
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');  
}
package Aws::ELB::DetachLoadBalancerFromSubnets {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnets');
  has _returns => (isa => 'Aws::ELB::DetachLoadBalancerFromSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnetsResult');  
}
package Aws::ELB::DisableAvailabilityZonesForLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancerResult');  
}
package Aws::ELB::EnableAvailabilityZonesForLoadBalancer {
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');  
}
package Aws::ELB::ModifyLoadBalancerAttributes {
  use Moose;
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  has _returns => (isa => 'Aws::ELB::ModifyLoadBalancerAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');  
}
package Aws::ELB::RegisterInstancesWithLoadBalancer {
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  has _returns => (isa => 'Aws::ELB::RegisterInstancesWithLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');  
}
package Aws::ELB::SetLoadBalancerListenerSSLCertificate {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerListenerSSLCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');  
}
package Aws::ELB::SetLoadBalancerPoliciesForBackendServer {
  use Moose;
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');  
}
package Aws::ELB::SetLoadBalancerPoliciesOfListener {
  use Moose;
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerPoliciesOfListenerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');  
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

}
package Aws::ELB::RegisterInstancesWithLoadBalancerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

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
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub ApplySecurityGroupsToLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::ApplySecurityGroupsToLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ApplySecurityGroupsToLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub AttachLoadBalancerToSubnets {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::AttachLoadBalancerToSubnets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::AttachLoadBalancerToSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ConfigureHealthCheck {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::ConfigureHealthCheck', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ConfigureHealthCheckResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateAppCookieStickinessPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::CreateAppCookieStickinessPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateAppCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateLBCookieStickinessPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::CreateLBCookieStickinessPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLBCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::CreateLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateLoadBalancerListeners {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::CreateLoadBalancerListeners', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateLoadBalancerPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::CreateLoadBalancerPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DeleteLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteLoadBalancerListeners {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DeleteLoadBalancerListeners', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteLoadBalancerPolicy {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DeleteLoadBalancerPolicy', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeregisterInstancesFromLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DeregisterInstancesFromLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeregisterInstancesFromLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeInstanceHealth {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DescribeInstanceHealth', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeInstanceHealthResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLoadBalancerAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DescribeLoadBalancerAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLoadBalancerPolicies {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DescribeLoadBalancerPolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLoadBalancerPolicyTypes {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DescribeLoadBalancerPolicyTypes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerPolicyTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeLoadBalancers {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DescribeLoadBalancers', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DetachLoadBalancerFromSubnets {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DetachLoadBalancerFromSubnets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DetachLoadBalancerFromSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DisableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::DisableAvailabilityZonesForLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub EnableAvailabilityZonesForLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::EnableAvailabilityZonesForLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ModifyLoadBalancerAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::ModifyLoadBalancerAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ModifyLoadBalancerAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub RegisterInstancesWithLoadBalancer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::RegisterInstancesWithLoadBalancer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::RegisterInstancesWithLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetLoadBalancerListenerSSLCertificate {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::SetLoadBalancerListenerSSLCertificate', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerListenerSSLCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetLoadBalancerPoliciesForBackendServer {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::SetLoadBalancerPoliciesForBackendServer', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub SetLoadBalancerPoliciesOfListener {
    my $self = shift;
    my $call = new_with_coercions('Aws::ELB::SetLoadBalancerPoliciesOfListener', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerPoliciesOfListenerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
