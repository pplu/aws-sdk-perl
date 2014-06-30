
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::Route53::ChangeAction', ['CREATE','DELETE','UPSERT',];
enum 'Aws::Route53::ChangeStatus', ['PENDING','INSYNC',];
enum 'Aws::Route53::HealthCheckType', ['HTTP','HTTPS','HTTP_STR_MATCH','HTTPS_STR_MATCH','TCP',];
enum 'Aws::Route53::ResourceRecordSetFailover', ['PRIMARY','SECONDARY',];
enum 'Aws::Route53::ResourceRecordSetRegion', ['us-east-1','us-west-1','us-west-2','eu-west-1','ap-southeast-1','ap-southeast-2','ap-northeast-1','sa-east-1','cn-north-1',];
enum 'Aws::Route53::RRType', ['SOA','A','TXT','NS','CNAME','MX','PTR','SRV','SPF','AAAA',];


package Aws::Route53::AliasTarget {
  use Moose;
  with ('AWS::API::ResultParser');
  has DNSName => (is => 'ro', isa => 'Str', required => 1);
  has EvaluateTargetHealth => (is => 'ro', isa => 'Bool', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Route53::Change {
  use Moose;
  with ('AWS::API::ResultParser');
  has Action => (is => 'ro', isa => 'Aws::Route53::ChangeAction', required => 1);
  has ResourceRecordSet => (is => 'ro', isa => 'Aws::Route53::ResourceRecordSet', required => 1);
}

package Aws::Route53::ChangeBatch {
  use Moose;
  with ('AWS::API::ResultParser');
  has Changes => (is => 'ro', isa => 'ArrayRef[Aws::Route53::Change]', required => 1);
  has Comment => (is => 'ro', isa => 'Str');
}

package Aws::Route53::ChangeInfo {
  use Moose;
  with ('AWS::API::ResultParser');
  has Comment => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::Route53::ChangeStatus', required => 1);
  has SubmittedAt => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Route53::DelegationSet {
  use Moose;
  with ('AWS::API::ResultParser');
  has NameServers => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
}

package Aws::Route53::HealthCheck {
  use Moose;
  with ('AWS::API::ResultParser');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Aws::Route53::HealthCheckConfig', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Route53::HealthCheckConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has FailureThreshold => (is => 'ro', isa => 'Int');
  has FullyQualifiedDomainName => (is => 'ro', isa => 'Str');
  has IPAddress => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has RequestInterval => (is => 'ro', isa => 'Int');
  has ResourcePath => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Aws::Route53::HealthCheckType', required => 1);
}

package Aws::Route53::HostedZone {
  use Moose;
  with ('AWS::API::ResultParser');
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has Config => (is => 'ro', isa => 'Aws::Route53::HostedZoneConfig');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has ResourceRecordSetCount => (is => 'ro', isa => 'Num');
}

package Aws::Route53::HostedZoneConfig {
  use Moose;
  with ('AWS::API::ResultParser');
  has Comment => (is => 'ro', isa => 'Str');
}

package Aws::Route53::ResourceRecord {
  use Moose;
  with ('AWS::API::ResultParser');
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Route53::ResourceRecordSet {
  use Moose;
  with ('AWS::API::ResultParser');
  has AliasTarget => (is => 'ro', isa => 'Aws::Route53::AliasTarget');
  has Failover => (is => 'ro', isa => 'Aws::Route53::ResourceRecordSetFailover');
  has HealthCheckId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Aws::Route53::ResourceRecordSetRegion');
  has ResourceRecords => (is => 'ro', isa => 'ArrayRef[Aws::Route53::ResourceRecord]');
  has SetIdentifier => (is => 'ro', isa => 'Str');
  has TTL => (is => 'ro', isa => 'Num');
  has Type => (is => 'ro', isa => 'Aws::Route53::RRType', required => 1);
  has Weight => (is => 'ro', isa => 'Num');
}



package Aws::Route53::ChangeResourceRecordSets {
  use Moose;
  has ChangeBatch => (is => 'ro', isa => 'Aws::Route53::ChangeBatch', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSets');
  has _returns => (isa => 'Aws::Route53::ChangeResourceRecordSetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSetsResult');  
}
package Aws::Route53::CreateHealthCheck {
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Aws::Route53::HealthCheckConfig', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHealthCheck');
  has _returns => (isa => 'Aws::Route53::CreateHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHealthCheckResult');  
}
package Aws::Route53::CreateHostedZone {
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneConfig => (is => 'ro', isa => 'Aws::Route53::HostedZoneConfig');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHostedZone');
  has _returns => (isa => 'Aws::Route53::CreateHostedZoneResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateHostedZoneResult');  
}
package Aws::Route53::DeleteHealthCheck {
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHealthCheck');
  has _returns => (isa => 'Aws::Route53::DeleteHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHealthCheckResult');  
}
package Aws::Route53::DeleteHostedZone {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHostedZone');
  has _returns => (isa => 'Aws::Route53::DeleteHostedZoneResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteHostedZoneResult');  
}
package Aws::Route53::GetChange {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetChange');
  has _returns => (isa => 'Aws::Route53::GetChangeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetChangeResult');  
}
package Aws::Route53::GetHealthCheck {
  use Moose;
  has HealthCheckId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetHealthCheck');
  has _returns => (isa => 'Aws::Route53::GetHealthCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetHealthCheckResult');  
}
package Aws::Route53::GetHostedZone {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostedZone');
  has _returns => (isa => 'Aws::Route53::GetHostedZoneResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetHostedZoneResult');  
}
package Aws::Route53::ListHealthChecks {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListHealthChecks');
  has _returns => (isa => 'Aws::Route53::ListHealthChecksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListHealthChecksResult');  
}
package Aws::Route53::ListHostedZones {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZones');
  has _returns => (isa => 'Aws::Route53::ListHostedZonesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListHostedZonesResult');  
}
package Aws::Route53::ListResourceRecordSets {
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str');
  has StartRecordIdentifier => (is => 'ro', isa => 'Str');
  has StartRecordName => (is => 'ro', isa => 'Str');
  has StartRecordType => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceRecordSets');
  has _returns => (isa => 'Aws::Route53::ListResourceRecordSetsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListResourceRecordSetsResult');  
}

package Aws::Route53::ChangeResourceRecordSetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Aws::Route53::ChangeInfo', required => 1);

}
package Aws::Route53::CreateHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Aws::Route53::HealthCheck', required => 1);
  has Location => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53::CreateHostedZoneResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Aws::Route53::ChangeInfo', required => 1);
  has DelegationSet => (is => 'ro', isa => 'Aws::Route53::DelegationSet', required => 1);
  has HostedZone => (is => 'ro', isa => 'Aws::Route53::HostedZone', required => 1);
  has Location => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53::DeleteHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';

}
package Aws::Route53::DeleteHostedZoneResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Aws::Route53::ChangeInfo', required => 1);

}
package Aws::Route53::GetChangeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ChangeInfo => (is => 'ro', isa => 'Aws::Route53::ChangeInfo', required => 1);

}
package Aws::Route53::GetHealthCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthCheck => (is => 'ro', isa => 'Aws::Route53::HealthCheck', required => 1);

}
package Aws::Route53::GetHostedZoneResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DelegationSet => (is => 'ro', isa => 'Aws::Route53::DelegationSet', required => 1);
  has HostedZone => (is => 'ro', isa => 'Aws::Route53::HostedZone', required => 1);

}
package Aws::Route53::ListHealthChecksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HealthChecks => (is => 'ro', isa => 'ArrayRef[Aws::Route53::HealthCheck]', traits => ['Unwrapped'], xmlname => 'HealthCheck', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

}
package Aws::Route53::ListHostedZonesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has HostedZones => (is => 'ro', isa => 'ArrayRef[Aws::Route53::HostedZone]', traits => ['Unwrapped'], xmlname => 'HostedZone', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

}
package Aws::Route53::ListResourceRecordSetsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextRecordIdentifier => (is => 'ro', isa => 'Str');
  has NextRecordName => (is => 'ro', isa => 'Str');
  has NextRecordType => (is => 'ro', isa => 'Str');
  has ResourceRecordSets => (is => 'ro', isa => 'ArrayRef[Aws::Route53::ResourceRecordSet]', traits => ['Unwrapped'], xmlname => 'ResourceRecordSet', required => 1);

}

package Aws::Route53 {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'route53');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V3HTTPSSignature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::RestXmlCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub ChangeResourceRecordSets {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::ChangeResourceRecordSets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::ChangeResourceRecordSetsResult->from_result($result);return $o_result;
  }
  sub CreateHealthCheck {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::CreateHealthCheck', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::CreateHealthCheckResult->from_result($result);return $o_result;
  }
  sub CreateHostedZone {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::CreateHostedZone', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::CreateHostedZoneResult->from_result($result);return $o_result;
  }
  sub DeleteHealthCheck {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::DeleteHealthCheck', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::DeleteHealthCheckResult->from_result($result);return $o_result;
  }
  sub DeleteHostedZone {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::DeleteHostedZone', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::DeleteHostedZoneResult->from_result($result);return $o_result;
  }
  sub GetChange {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::GetChange', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::GetChangeResult->from_result($result);return $o_result;
  }
  sub GetHealthCheck {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::GetHealthCheck', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::GetHealthCheckResult->from_result($result);return $o_result;
  }
  sub GetHostedZone {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::GetHostedZone', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::GetHostedZoneResult->from_result($result);return $o_result;
  }
  sub ListHealthChecks {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::ListHealthChecks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::ListHealthChecksResult->from_result($result);return $o_result;
  }
  sub ListHostedZones {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::ListHostedZones', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::ListHostedZonesResult->from_result($result);return $o_result;
  }
  sub ListResourceRecordSets {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Route53::ListResourceRecordSets', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Route53::ListResourceRecordSetsResult->from_result($result);return $o_result;
  }
}
1;
