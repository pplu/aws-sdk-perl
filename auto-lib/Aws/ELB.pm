
use MooseX::Declare;
use AWS::API;


class Aws::ELB::BackendServerDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has InstancePort => (is => 'ro', isa => 'Int');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::ELB::CrossZoneLoadBalancing with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Enabled => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::ELB::HealthCheck with (AWS::API::ResultParser, AWS::API::ToParams) {
  has HealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
  has Interval => (is => 'ro', isa => 'Int', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int', required => 1);
  has UnhealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
}

class Aws::ELB::Instance with (AWS::API::ResultParser, AWS::API::ToParams) {
  has InstanceId => (is => 'ro', isa => 'Str');
}

class Aws::ELB::InstanceState with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has ReasonCode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

class Aws::ELB::Listener with (AWS::API::ResultParser, AWS::API::ToParams) {
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has InstanceProtocol => (is => 'ro', isa => 'Str');
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str');
}

class Aws::ELB::ListenerDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Listener => (is => 'ro', isa => 'Aws::ELB::Listener');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::ELB::LoadBalancerAttributes with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CrossZoneLoadBalancing => (is => 'ro', isa => 'Aws::ELB::CrossZoneLoadBalancing');
}

class Aws::ELB::LoadBalancerDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
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

class Aws::ELB::Policies with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AppCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::AppCookieStickinessPolicy]');
  has LBCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LBCookieStickinessPolicy]');
  has OtherPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
}

class Aws::ELB::PolicyAttribute with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

class Aws::ELB::PolicyAttributeDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

class Aws::ELB::PolicyAttributeTypeDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeType => (is => 'ro', isa => 'Str');
  has Cardinality => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class Aws::ELB::PolicyDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has PolicyAttributeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeDescription]');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

class Aws::ELB::PolicyTypeDescription with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Description => (is => 'ro', isa => 'Str');
  has PolicyAttributeTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttributeTypeDescription]');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

class Aws::ELB::SourceSecurityGroup with (AWS::API::ResultParser, AWS::API::ToParams) {
  has GroupName => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
}



class Aws::ELB::ApplySecurityGroupsToLoadBalancer {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  has _returns => (isa => 'Aws::ELB::ApplySecurityGroupsToLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');  
}
class Aws::ELB::AttachLoadBalancerToSubnets {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnets');
  has _returns => (isa => 'Aws::ELB::AttachLoadBalancerToSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');  
}
class Aws::ELB::ConfigureHealthCheck {
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  has _returns => (isa => 'Aws::ELB::ConfigureHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');  
}
class Aws::ELB::CreateAppCookieStickinessPolicy {
  has CookieName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicy');
  has _returns => (isa => 'Aws::ELB::CreateAppCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicyResult');  
}
class Aws::ELB::CreateLBCookieStickinessPolicy {
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  has _returns => (isa => 'Aws::ELB::CreateLBCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');  
}
class Aws::ELB::CreateLoadBalancer {
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
class Aws::ELB::CreateLoadBalancerListeners {
  has Listeners => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  has _returns => (isa => 'Aws::ELB::CreateLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');  
}
class Aws::ELB::CreateLoadBalancerPolicy {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  has _returns => (isa => 'Aws::ELB::CreateLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');  
}
class Aws::ELB::DeleteLoadBalancer {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');  
}
class Aws::ELB::DeleteLoadBalancerListeners {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPorts => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListeners');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListenersResult');  
}
class Aws::ELB::DeleteLoadBalancerPolicy {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  has _returns => (isa => 'Aws::ELB::DeleteLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');  
}
class Aws::ELB::DeregisterInstancesFromLoadBalancer {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DeregisterInstancesFromLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancerResult');  
}
class Aws::ELB::DescribeInstanceHealth {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  has _returns => (isa => 'Aws::ELB::DescribeInstanceHealthResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');  
}
class Aws::ELB::DescribeLoadBalancerAttributes {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributes');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerAttributesResult');  
}
class Aws::ELB::DescribeLoadBalancerPolicies {
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicies');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPoliciesResult');  
}
class Aws::ELB::DescribeLoadBalancerPolicyTypes {
  has PolicyTypeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancerPolicyTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');  
}
class Aws::ELB::DescribeLoadBalancers {
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  has _returns => (isa => 'Aws::ELB::DescribeLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');  
}
class Aws::ELB::DetachLoadBalancerFromSubnets {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnets');
  has _returns => (isa => 'Aws::ELB::DetachLoadBalancerFromSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnetsResult');  
}
class Aws::ELB::DisableAvailabilityZonesForLoadBalancer {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancerResult');  
}
class Aws::ELB::EnableAvailabilityZonesForLoadBalancer {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');  
}
class Aws::ELB::ModifyLoadBalancerAttributes {
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributes');
  has _returns => (isa => 'Aws::ELB::ModifyLoadBalancerAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyLoadBalancerAttributesResult');  
}
class Aws::ELB::RegisterInstancesWithLoadBalancer {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  has _returns => (isa => 'Aws::ELB::RegisterInstancesWithLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');  
}
class Aws::ELB::SetLoadBalancerListenerSSLCertificate {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerListenerSSLCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');  
}
class Aws::ELB::SetLoadBalancerPoliciesForBackendServer {
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');  
}
class Aws::ELB::SetLoadBalancerPoliciesOfListener {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  has _returns => (isa => 'Aws::ELB::SetLoadBalancerPoliciesOfListenerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');  
}

class Aws::ELB::ApplySecurityGroupsToLoadBalancerResult with AWS::API::ResultParser {
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ELB::AttachLoadBalancerToSubnetsResult with AWS::API::ResultParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ELB::ConfigureHealthCheckResult with AWS::API::ResultParser {
  has HealthCheck => (is => 'ro', isa => 'Aws::ELB::HealthCheck');

}
class Aws::ELB::CreateAppCookieStickinessPolicyResult with AWS::API::ResultParser {

}
class Aws::ELB::CreateLBCookieStickinessPolicyResult with AWS::API::ResultParser {

}
class Aws::ELB::CreateLoadBalancerResult with AWS::API::ResultParser {
  has DNSName => (is => 'ro', isa => 'Str');

}
class Aws::ELB::CreateLoadBalancerListenersResult with AWS::API::ResultParser {

}
class Aws::ELB::CreateLoadBalancerPolicyResult with AWS::API::ResultParser {

}
class Aws::ELB::DeleteLoadBalancerResult with AWS::API::ResultParser {

}
class Aws::ELB::DeleteLoadBalancerListenersResult with AWS::API::ResultParser {

}
class Aws::ELB::DeleteLoadBalancerPolicyResult with AWS::API::ResultParser {

}
class Aws::ELB::DeregisterInstancesFromLoadBalancerResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
class Aws::ELB::DescribeInstanceHealthResult with AWS::API::ResultParser {
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[Aws::ELB::InstanceState]');

}
class Aws::ELB::DescribeLoadBalancerAttributesResult with AWS::API::ResultParser {
  has LoadBalancerAttributes => (is => 'ro', isa => 'Aws::ELB::LoadBalancerAttributes');

}
class Aws::ELB::DescribeLoadBalancerPoliciesResult with AWS::API::ResultParser {
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyDescription]');

}
class Aws::ELB::DescribeLoadBalancerPolicyTypesResult with AWS::API::ResultParser {
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::PolicyTypeDescription]');

}
class Aws::ELB::DescribeLoadBalancersResult with AWS::API::ResultParser {
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[Aws::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
class Aws::ELB::DetachLoadBalancerFromSubnetsResult with AWS::API::ResultParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::ELB::ModifyLoadBalancerAttributesResult with AWS::API::ResultParser {

}
class Aws::ELB::RegisterInstancesWithLoadBalancerResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[Aws::ELB::Instance]');

}
class Aws::ELB::SetLoadBalancerListenerSSLCertificateResult with AWS::API::ResultParser {

}
class Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult with AWS::API::ResultParser {

}
class Aws::ELB::SetLoadBalancerPoliciesOfListenerResult with AWS::API::ResultParser {

}

class Aws::ELB with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');
  
  method ApplySecurityGroupsToLoadBalancer (%args) {
    my $call = Aws::ELB::ApplySecurityGroupsToLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ApplySecurityGroupsToLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AttachLoadBalancerToSubnets (%args) {
    my $call = Aws::ELB::AttachLoadBalancerToSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::AttachLoadBalancerToSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ConfigureHealthCheck (%args) {
    my $call = Aws::ELB::ConfigureHealthCheck->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ConfigureHealthCheckResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateAppCookieStickinessPolicy (%args) {
    my $call = Aws::ELB::CreateAppCookieStickinessPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateAppCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLBCookieStickinessPolicy (%args) {
    my $call = Aws::ELB::CreateLBCookieStickinessPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLBCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLoadBalancer (%args) {
    my $call = Aws::ELB::CreateLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLoadBalancerListeners (%args) {
    my $call = Aws::ELB::CreateLoadBalancerListeners->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method CreateLoadBalancerPolicy (%args) {
    my $call = Aws::ELB::CreateLoadBalancerPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::CreateLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteLoadBalancer (%args) {
    my $call = Aws::ELB::DeleteLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteLoadBalancerListeners (%args) {
    my $call = Aws::ELB::DeleteLoadBalancerListeners->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteLoadBalancerPolicy (%args) {
    my $call = Aws::ELB::DeleteLoadBalancerPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeleteLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeregisterInstancesFromLoadBalancer (%args) {
    my $call = Aws::ELB::DeregisterInstancesFromLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DeregisterInstancesFromLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeInstanceHealth (%args) {
    my $call = Aws::ELB::DescribeInstanceHealth->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeInstanceHealthResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBalancerAttributes (%args) {
    my $call = Aws::ELB::DescribeLoadBalancerAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBalancerPolicies (%args) {
    my $call = Aws::ELB::DescribeLoadBalancerPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBalancerPolicyTypes (%args) {
    my $call = Aws::ELB::DescribeLoadBalancerPolicyTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancerPolicyTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeLoadBalancers (%args) {
    my $call = Aws::ELB::DescribeLoadBalancers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DescribeLoadBalancersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DetachLoadBalancerFromSubnets (%args) {
    my $call = Aws::ELB::DetachLoadBalancerFromSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DetachLoadBalancerFromSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DisableAvailabilityZonesForLoadBalancer (%args) {
    my $call = Aws::ELB::DisableAvailabilityZonesForLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::DisableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method EnableAvailabilityZonesForLoadBalancer (%args) {
    my $call = Aws::ELB::EnableAvailabilityZonesForLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::EnableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method ModifyLoadBalancerAttributes (%args) {
    my $call = Aws::ELB::ModifyLoadBalancerAttributes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::ModifyLoadBalancerAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method RegisterInstancesWithLoadBalancer (%args) {
    my $call = Aws::ELB::RegisterInstancesWithLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::RegisterInstancesWithLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetLoadBalancerListenerSSLCertificate (%args) {
    my $call = Aws::ELB::SetLoadBalancerListenerSSLCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerListenerSSLCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetLoadBalancerPoliciesForBackendServer (%args) {
    my $call = Aws::ELB::SetLoadBalancerPoliciesForBackendServer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerPoliciesForBackendServerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method SetLoadBalancerPoliciesOfListener (%args) {
    my $call = Aws::ELB::SetLoadBalancerPoliciesOfListener->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::ELB::SetLoadBalancerPoliciesOfListenerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
