use MooseX::Declare;
use AWS::API;
class AWS::ELB::BackendServerDescription with AWS::API::ResultParser {
  has InstancePort => (is => 'ro', isa => 'Int');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::ELB::HealthCheck with AWS::API::ResultParser {
  has HealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
  has Interval => (is => 'ro', isa => 'Int', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int', required => 1);
  has UnhealthyThreshold => (is => 'ro', isa => 'Int', required => 1);
}

class AWS::ELB::Instance with AWS::API::ResultParser {
  has InstanceId => (is => 'ro', isa => 'Str');
}

class AWS::ELB::InstanceState with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has ReasonCode => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
}

class AWS::ELB::Listener with AWS::API::ResultParser {
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has InstanceProtocol => (is => 'ro', isa => 'Str');
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str');
}

class AWS::ELB::ListenerDescription with AWS::API::ResultParser {
  has Listener => (is => 'ro', isa => 'AWS::ELB::Listener');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::ELB::LoadBalancerDescription with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has BackendServerDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::BackendServerDescription]');
  has CanonicalHostedZoneName => (is => 'ro', isa => 'Str');
  has CanonicalHostedZoneNameID => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DNSName => (is => 'ro', isa => 'Str');
  has HealthCheck => (is => 'ro', isa => 'AWS::ELB::HealthCheck');
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]');
  has ListenerDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::ListenerDescription]');
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has Policies => (is => 'ro', isa => 'AWS::ELB::Policies');
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has SourceSecurityGroup => (is => 'ro', isa => 'AWS::ELB::SourceSecurityGroup');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
  has VPCId => (is => 'ro', isa => 'Str');
}

class AWS::ELB::Policies with AWS::API::ResultParser {
  has AppCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[AWS::ELB::AppCookieStickinessPolicy]');
  has LBCookieStickinessPolicies => (is => 'ro', isa => 'ArrayRef[AWS::ELB::LBCookieStickinessPolicy]');
  has OtherPolicies => (is => 'ro', isa => 'ArrayRef[Str]');
}

class AWS::ELB::PolicyAttribute with AWS::API::ResultParser {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

class AWS::ELB::PolicyAttributeDescription with AWS::API::ResultParser {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeValue => (is => 'ro', isa => 'Str');
}

class AWS::ELB::PolicyAttributeTypeDescription with AWS::API::ResultParser {
  has AttributeName => (is => 'ro', isa => 'Str');
  has AttributeType => (is => 'ro', isa => 'Str');
  has Cardinality => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
}

class AWS::ELB::PolicyDescription with AWS::API::ResultParser {
  has PolicyAttributeDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::PolicyAttributeDescription]');
  has PolicyName => (is => 'ro', isa => 'Str');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

class AWS::ELB::PolicyTypeDescription with AWS::API::ResultParser {
  has Description => (is => 'ro', isa => 'Str');
  has PolicyAttributeTypeDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::PolicyAttributeTypeDescription]');
  has PolicyTypeName => (is => 'ro', isa => 'Str');
}

class AWS::ELB::SourceSecurityGroup with AWS::API::ResultParser {
  has GroupName => (is => 'ro', isa => 'Str');
  has OwnerAlias => (is => 'ro', isa => 'Str');
}

class AWS::ELB::ApplySecurityGroupsToLoadBalancer {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancer');
  has _returns => (isa => 'AWS::ELB::ApplySecurityGroupsToLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ApplySecurityGroupsToLoadBalancerResult');
}
class AWS::ELB::AttachLoadBalancerToSubnets {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnets');
  has _returns => (isa => 'AWS::ELB::AttachLoadBalancerToSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AttachLoadBalancerToSubnetsResult');
}
class AWS::ELB::ConfigureHealthCheck {
  has HealthCheck => (is => 'ro', isa => 'AWS::ELB::HealthCheck', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheck');
  has _returns => (isa => 'AWS::ELB::ConfigureHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ConfigureHealthCheckResult');
}
class AWS::ELB::CreateAppCookieStickinessPolicy {
  has CookieName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicy');
  has _returns => (isa => 'AWS::ELB::CreateAppCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAppCookieStickinessPolicyResult');
}
class AWS::ELB::CreateLBCookieStickinessPolicy {
  has CookieExpirationPeriod => (is => 'ro', isa => 'Num');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicy');
  has _returns => (isa => 'AWS::ELB::CreateLBCookieStickinessPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLBCookieStickinessPolicyResult');
}
class AWS::ELB::CreateLoadBalancer {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
  has Listeners => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Scheme => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancer');
  has _returns => (isa => 'AWS::ELB::CreateLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerResult');
}
class AWS::ELB::CreateLoadBalancerListeners {
  has Listeners => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Listener]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListeners');
  has _returns => (isa => 'AWS::ELB::CreateLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerListenersResult');
}
class AWS::ELB::CreateLoadBalancerPolicy {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyAttributes => (is => 'ro', isa => 'ArrayRef[AWS::ELB::PolicyAttribute]');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyTypeName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicy');
  has _returns => (isa => 'AWS::ELB::CreateLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateLoadBalancerPolicyResult');
}
class AWS::ELB::DeleteLoadBalancer {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancer');
  has _returns => (isa => 'AWS::ELB::DeleteLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerResult');
}
class AWS::ELB::DeleteLoadBalancerListeners {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPorts => (is => 'ro', isa => 'ArrayRef[Int]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListeners');
  has _returns => (isa => 'AWS::ELB::DeleteLoadBalancerListenersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerListenersResult');
}
class AWS::ELB::DeleteLoadBalancerPolicy {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicy');
  has _returns => (isa => 'AWS::ELB::DeleteLoadBalancerPolicyResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteLoadBalancerPolicyResult');
}
class AWS::ELB::DeregisterInstancesFromLoadBalancer {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancer');
  has _returns => (isa => 'AWS::ELB::DeregisterInstancesFromLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancerResult');
}
class AWS::ELB::DescribeInstanceHealth {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]');
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealth');
  has _returns => (isa => 'AWS::ELB::DescribeInstanceHealthResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstanceHealthResult');
}
class AWS::ELB::DescribeLoadBalancerPolicies {
  has LoadBalancerName => (is => 'ro', isa => 'Str');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicies');
  has _returns => (isa => 'AWS::ELB::DescribeLoadBalancerPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPoliciesResult');
}
class AWS::ELB::DescribeLoadBalancerPolicyTypes {
  has PolicyTypeNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypes');
  has _returns => (isa => 'AWS::ELB::DescribeLoadBalancerPolicyTypesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancerPolicyTypesResult');
}
class AWS::ELB::DescribeLoadBalancers {
  has LoadBalancerNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Marker => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancers');
  has _returns => (isa => 'AWS::ELB::DescribeLoadBalancersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeLoadBalancersResult');
}
class AWS::ELB::DetachLoadBalancerFromSubnets {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnets');
  has _returns => (isa => 'AWS::ELB::DetachLoadBalancerFromSubnetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DetachLoadBalancerFromSubnetsResult');
}
class AWS::ELB::DisableAvailabilityZonesForLoadBalancer {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'AWS::ELB::DisableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DisableAvailabilityZonesForLoadBalancerResult');
}
class AWS::ELB::EnableAvailabilityZonesForLoadBalancer {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancer');
  has _returns => (isa => 'AWS::ELB::EnableAvailabilityZonesForLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'EnableAvailabilityZonesForLoadBalancerResult');
}
class AWS::ELB::RegisterInstancesWithLoadBalancer {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancer');
  has _returns => (isa => 'AWS::ELB::RegisterInstancesWithLoadBalancerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterInstancesWithLoadBalancerResult');
}
class AWS::ELB::SetLoadBalancerListenerSSLCertificate {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has SSLCertificateId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificate');
  has _returns => (isa => 'AWS::ELB::SetLoadBalancerListenerSSLCertificateResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerListenerSSLCertificateResult');
}
class AWS::ELB::SetLoadBalancerPoliciesForBackendServer {
  has InstancePort => (is => 'ro', isa => 'Int', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServer');
  has _returns => (isa => 'AWS::ELB::SetLoadBalancerPoliciesForBackendServerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesForBackendServerResult');
}
class AWS::ELB::SetLoadBalancerPoliciesOfListener {
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);
  has LoadBalancerPort => (is => 'ro', isa => 'Int', required => 1);
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListener');
  has _returns => (isa => 'AWS::ELB::SetLoadBalancerPoliciesOfListenerResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SetLoadBalancerPoliciesOfListenerResult');
}
class AWS::ELB::ApplySecurityGroupsToLoadBalancerResult with AWS::API::ResultParser {
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::ELB::AttachLoadBalancerToSubnetsResult with AWS::API::ResultParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::ELB::ConfigureHealthCheckResult with AWS::API::ResultParser {
  has HealthCheck => (is => 'ro', isa => 'AWS::ELB::HealthCheck');
}
class AWS::ELB::CreateAppCookieStickinessPolicyResult with AWS::API::ResultParser {
}
class AWS::ELB::CreateLBCookieStickinessPolicyResult with AWS::API::ResultParser {
}
class AWS::ELB::CreateLoadBalancerResult with AWS::API::ResultParser {
  has DNSName => (is => 'ro', isa => 'Str');
}
class AWS::ELB::CreateLoadBalancerListenersResult with AWS::API::ResultParser {
}
class AWS::ELB::CreateLoadBalancerPolicyResult with AWS::API::ResultParser {
}
class AWS::ELB::DeleteLoadBalancerResult with AWS::API::ResultParser {
}
class AWS::ELB::DeleteLoadBalancerListenersResult with AWS::API::ResultParser {
}
class AWS::ELB::DeleteLoadBalancerPolicyResult with AWS::API::ResultParser {
}
class AWS::ELB::DeregisterInstancesFromLoadBalancerResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]');
}
class AWS::ELB::DescribeInstanceHealthResult with AWS::API::ResultParser {
  has InstanceStates => (is => 'ro', isa => 'ArrayRef[AWS::ELB::InstanceState]');
}
class AWS::ELB::DescribeLoadBalancerPoliciesResult with AWS::API::ResultParser {
  has PolicyDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::PolicyDescription]');
}
class AWS::ELB::DescribeLoadBalancerPolicyTypesResult with AWS::API::ResultParser {
  has PolicyTypeDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::PolicyTypeDescription]');
}
class AWS::ELB::DescribeLoadBalancersResult with AWS::API::ResultParser {
  has LoadBalancerDescriptions => (is => 'ro', isa => 'ArrayRef[AWS::ELB::LoadBalancerDescription]');
  has NextMarker => (is => 'ro', isa => 'Str');
}
class AWS::ELB::DetachLoadBalancerFromSubnetsResult with AWS::API::ResultParser {
  has Subnets => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::ELB::DisableAvailabilityZonesForLoadBalancerResult with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::ELB::EnableAvailabilityZonesForLoadBalancerResult with AWS::API::ResultParser {
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::ELB::RegisterInstancesWithLoadBalancerResult with AWS::API::ResultParser {
  has Instances => (is => 'ro', isa => 'ArrayRef[AWS::ELB::Instance]');
}
class AWS::ELB::SetLoadBalancerListenerSSLCertificateResult with AWS::API::ResultParser {
}
class AWS::ELB::SetLoadBalancerPoliciesForBackendServerResult with AWS::API::ResultParser {
}
class AWS::ELB::SetLoadBalancerPoliciesOfListenerResult with AWS::API::ResultParser {
}
class AWS::ELB with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'elasticloadbalancing');
  has version => (is => 'ro', isa => 'Str', default => '2012-06-01');

  method ApplySecurityGroupsToLoadBalancer (%args) {
    my $call = AWS::ELB::ApplySecurityGroupsToLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::ApplySecurityGroupsToLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AttachLoadBalancerToSubnets (%args) {
    my $call = AWS::ELB::AttachLoadBalancerToSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::AttachLoadBalancerToSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method ConfigureHealthCheck (%args) {
    my $call = AWS::ELB::ConfigureHealthCheck->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::ConfigureHealthCheckResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateAppCookieStickinessPolicy (%args) {
    my $call = AWS::ELB::CreateAppCookieStickinessPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::CreateAppCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateLBCookieStickinessPolicy (%args) {
    my $call = AWS::ELB::CreateLBCookieStickinessPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::CreateLBCookieStickinessPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateLoadBalancer (%args) {
    my $call = AWS::ELB::CreateLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::CreateLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateLoadBalancerListeners (%args) {
    my $call = AWS::ELB::CreateLoadBalancerListeners->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::CreateLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method CreateLoadBalancerPolicy (%args) {
    my $call = AWS::ELB::CreateLoadBalancerPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::CreateLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteLoadBalancer (%args) {
    my $call = AWS::ELB::DeleteLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DeleteLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteLoadBalancerListeners (%args) {
    my $call = AWS::ELB::DeleteLoadBalancerListeners->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DeleteLoadBalancerListenersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteLoadBalancerPolicy (%args) {
    my $call = AWS::ELB::DeleteLoadBalancerPolicy->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DeleteLoadBalancerPolicyResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeregisterInstancesFromLoadBalancer (%args) {
    my $call = AWS::ELB::DeregisterInstancesFromLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DeregisterInstancesFromLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeInstanceHealth (%args) {
    my $call = AWS::ELB::DescribeInstanceHealth->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DescribeInstanceHealthResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeLoadBalancerPolicies (%args) {
    my $call = AWS::ELB::DescribeLoadBalancerPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DescribeLoadBalancerPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeLoadBalancerPolicyTypes (%args) {
    my $call = AWS::ELB::DescribeLoadBalancerPolicyTypes->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DescribeLoadBalancerPolicyTypesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeLoadBalancers (%args) {
    my $call = AWS::ELB::DescribeLoadBalancers->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DescribeLoadBalancersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DetachLoadBalancerFromSubnets (%args) {
    my $call = AWS::ELB::DetachLoadBalancerFromSubnets->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DetachLoadBalancerFromSubnetsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DisableAvailabilityZonesForLoadBalancer (%args) {
    my $call = AWS::ELB::DisableAvailabilityZonesForLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::DisableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method EnableAvailabilityZonesForLoadBalancer (%args) {
    my $call = AWS::ELB::EnableAvailabilityZonesForLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::EnableAvailabilityZonesForLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method RegisterInstancesWithLoadBalancer (%args) {
    my $call = AWS::ELB::RegisterInstancesWithLoadBalancer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::RegisterInstancesWithLoadBalancerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SetLoadBalancerListenerSSLCertificate (%args) {
    my $call = AWS::ELB::SetLoadBalancerListenerSSLCertificate->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::SetLoadBalancerListenerSSLCertificateResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SetLoadBalancerPoliciesForBackendServer (%args) {
    my $call = AWS::ELB::SetLoadBalancerPoliciesForBackendServer->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::SetLoadBalancerPoliciesForBackendServerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method SetLoadBalancerPoliciesOfListener (%args) {
    my $call = AWS::ELB::SetLoadBalancerPoliciesOfListener->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::ELB::SetLoadBalancerPoliciesOfListenerResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

