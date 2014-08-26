
use AWS::API;


package Aws::Route53Domains::CheckDomainAvailability {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDomainAvailability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::CheckDomainAvailabilityResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::DisableDomainTransferLock {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableDomainTransferLock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::DisableDomainTransferLockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::EnableDomainTransferLock {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableDomainTransferLock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::EnableDomainTransferLockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::GetDomainDetail {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDomainDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::GetDomainDetailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::GetOperationDetail {
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOperationDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::GetOperationDetailResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::ListDomains {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::ListOperations {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOperations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::ListOperationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::RegisterDomain {
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::RegisterDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::RetrieveDomainAuthCode {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveDomainAuthCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::RetrieveDomainAuthCodeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::TransferDomain {
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has AuthCode => (is => 'ro', isa => 'Str');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int', required => 1);
  has IdnLangCode => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::Nameserver]', required => 1);
  has PrivacyProtectAdminContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectRegistrantContact => (is => 'ro', isa => 'Bool');
  has PrivacyProtectTechContact => (is => 'ro', isa => 'Bool');
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TransferDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::TransferDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::UpdateDomainContact {
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::UpdateDomainContactPrivacy {
  use Moose;
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has TechPrivacy => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContactPrivacy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainContactPrivacyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Route53Domains::UpdateDomainNameservers {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::Nameserver]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainNameservers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::UpdateDomainNameserversResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::Route53Domains::CheckDomainAvailabilityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Availability => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::DisableDomainTransferLockResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::EnableDomainTransferLockResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::GetDomainDetailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AbuseContactEmail => (is => 'ro', isa => 'Str');
  has AbuseContactPhone => (is => 'ro', isa => 'Str');
  has AdminContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has AdminPrivacy => (is => 'ro', isa => 'Bool');
  has AutoRenew => (is => 'ro', isa => 'Bool');
  has CreationDate => (is => 'ro', isa => 'Str');
  has DnsSec => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationDate => (is => 'ro', isa => 'Str');
  has Nameservers => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::Nameserver]', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has RegistrantPrivacy => (is => 'ro', isa => 'Bool');
  has RegistrarName => (is => 'ro', isa => 'Str');
  has RegistrarUrl => (is => 'ro', isa => 'Str');
  has RegistryDomainId => (is => 'ro', isa => 'Str');
  has Reseller => (is => 'ro', isa => 'Str');
  has StatusList => (is => 'ro', isa => 'ArrayRef[Str]');
  has TechContact => (is => 'ro', isa => 'Aws::Route53Domains::ContactDetail', required => 1);
  has TechPrivacy => (is => 'ro', isa => 'Bool');
  has UpdatedDate => (is => 'ro', isa => 'Str');
  has WhoIsServer => (is => 'ro', isa => 'Str');

}
package Aws::Route53Domains::GetOperationDetailResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

}
package Aws::Route53Domains::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Domains => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::DomainSummary]', required => 1);
  has NextPageMarker => (is => 'ro', isa => 'Str');

}
package Aws::Route53Domains::ListOperationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has NextPageMarker => (is => 'ro', isa => 'Str');
  has Operations => (is => 'ro', isa => 'ArrayRef[Aws::Route53Domains::OperationSummary]', required => 1);

}
package Aws::Route53Domains::RegisterDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::RetrieveDomainAuthCodeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AuthCode => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::TransferDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::UpdateDomainContactResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::UpdateDomainContactPrivacyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}
package Aws::Route53Domains::UpdateDomainNameserversResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

}

package Aws::Route53Domains {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'route53domains');
  has version => (is => 'ro', isa => 'Str', default => '2014-05-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'Route53Domains_v20140515');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CheckDomainAvailability {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::CheckDomainAvailability', @_);
  }
  sub DisableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::DisableDomainTransferLock', @_);
  }
  sub EnableDomainTransferLock {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::EnableDomainTransferLock', @_);
  }
  sub GetDomainDetail {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::GetDomainDetail', @_);
  }
  sub GetOperationDetail {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::GetOperationDetail', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::ListDomains', @_);
  }
  sub ListOperations {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::ListOperations', @_);
  }
  sub RegisterDomain {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::RegisterDomain', @_);
  }
  sub RetrieveDomainAuthCode {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::RetrieveDomainAuthCode', @_);
  }
  sub TransferDomain {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::TransferDomain', @_);
  }
  sub UpdateDomainContact {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainContact', @_);
  }
  sub UpdateDomainContactPrivacy {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainContactPrivacy', @_);
  }
  sub UpdateDomainNameservers {
    my $self = shift;
    return $self->do_call('Aws::Route53Domains::UpdateDomainNameservers', @_);
  }
}
1;
