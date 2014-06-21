
use AWS::API;


package Aws::Support::CaseDetails {
  use Moose;
  with ('AWS::API::ResultParser');
  has caseId => (is => 'ro', isa => 'Str');
  has categoryCode => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has displayId => (is => 'ro', isa => 'Str');
  has language => (is => 'ro', isa => 'Str');
  has recentCommunications => (is => 'ro', isa => 'Aws::Support::RecentCaseCommunications');
  has serviceCode => (is => 'ro', isa => 'Str');
  has severityCode => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Str');
  has subject => (is => 'ro', isa => 'Str');
  has submittedBy => (is => 'ro', isa => 'Str');
  has timeCreated => (is => 'ro', isa => 'Str');
}

package Aws::Support::Category {
  use Moose;
  with ('AWS::API::ResultParser');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

package Aws::Support::Communication {
  use Moose;
  with ('AWS::API::ResultParser');
  has body => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str');
  has submittedBy => (is => 'ro', isa => 'Str');
  has timeCreated => (is => 'ro', isa => 'Str');
}

package Aws::Support::RecentCaseCommunications {
  use Moose;
  with ('AWS::API::ResultParser');
  has communications => (is => 'ro', isa => 'ArrayRef[Aws::Support::Communication]');
  has nextToken => (is => 'ro', isa => 'Str');
}

package Aws::Support::Service {
  use Moose;
  with ('AWS::API::ResultParser');
  has categories => (is => 'ro', isa => 'ArrayRef[Aws::Support::Category]');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

package Aws::Support::SeverityLevel {
  use Moose;
  with ('AWS::API::ResultParser');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}

package Aws::Support::TrustedAdvisorCategorySpecificSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has costOptimizing => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCostOptimizingSummary');
}

package Aws::Support::TrustedAdvisorCheckDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has category => (is => 'ro', isa => 'Str', required => 1);
  has description => (is => 'ro', isa => 'Str', required => 1);
  has id => (is => 'ro', isa => 'Str', required => 1);
  has metadata => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Support::TrustedAdvisorCheckRefreshStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has millisUntilNextRefreshable => (is => 'ro', isa => 'Num', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Support::TrustedAdvisorCheckResult {
  use Moose;
  with ('AWS::API::ResultParser');
  has categorySpecificSummary => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCategorySpecificSummary', required => 1);
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has flaggedResources => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorResourceDetail]', required => 1);
  has resourcesSummary => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorResourcesSummary', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
  has timestamp => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Support::TrustedAdvisorCheckSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has categorySpecificSummary => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCategorySpecificSummary', required => 1);
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has hasFlaggedResources => (is => 'ro', isa => 'Bool');
  has resourcesSummary => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorResourcesSummary', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
  has timestamp => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Support::TrustedAdvisorCostOptimizingSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has estimatedMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
  has estimatedPercentMonthlySavings => (is => 'ro', isa => 'Num', required => 1);
}

package Aws::Support::TrustedAdvisorResourceDetail {
  use Moose;
  with ('AWS::API::ResultParser');
  has isSuppressed => (is => 'ro', isa => 'Bool');
  has metadata => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has region => (is => 'ro', isa => 'Str', required => 1);
  has resourceId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::Support::TrustedAdvisorResourcesSummary {
  use Moose;
  with ('AWS::API::ResultParser');
  has resourcesFlagged => (is => 'ro', isa => 'Num', required => 1);
  has resourcesIgnored => (is => 'ro', isa => 'Num', required => 1);
  has resourcesProcessed => (is => 'ro', isa => 'Num', required => 1);
  has resourcesSuppressed => (is => 'ro', isa => 'Num', required => 1);
}



package Aws::Support::AddCommunicationToCase {
  use Moose;
  has caseId => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AddCommunicationToCase');
  has _returns => (isa => 'Aws::Support::AddCommunicationToCaseResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AddCommunicationToCaseResult');  
}
package Aws::Support::CreateCase {
  use Moose;
  has categoryCode => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);
  has issueType => (is => 'ro', isa => 'Str');
  has language => (is => 'ro', isa => 'Str');
  has serviceCode => (is => 'ro', isa => 'Str');
  has severityCode => (is => 'ro', isa => 'Str');
  has subject => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCase');
  has _returns => (isa => 'Aws::Support::CreateCaseResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateCaseResult');  
}
package Aws::Support::DescribeCases {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseIdList => (is => 'ro', isa => 'ArrayRef[Str]');
  has displayId => (is => 'ro', isa => 'Str');
  has includeResolvedCases => (is => 'ro', isa => 'Bool');
  has language => (is => 'ro', isa => 'Str');
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCases');
  has _returns => (isa => 'Aws::Support::DescribeCasesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCasesResult');  
}
package Aws::Support::DescribeCommunications {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str', required => 1);
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommunications');
  has _returns => (isa => 'Aws::Support::DescribeCommunicationsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCommunicationsResult');  
}
package Aws::Support::DescribeServices {
  use Moose;
  has language => (is => 'ro', isa => 'Str');
  has serviceCodeList => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  has _returns => (isa => 'Aws::Support::DescribeServicesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServicesResult');  
}
package Aws::Support::DescribeSeverityLevels {
  use Moose;
  has language => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSeverityLevels');
  has _returns => (isa => 'Aws::Support::DescribeSeverityLevelsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSeverityLevelsResult');  
}
package Aws::Support::DescribeTrustedAdvisorCheckRefreshStatuses {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckRefreshStatuses');
  has _returns => (isa => 'Aws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckRefreshStatusesResult');  
}
package Aws::Support::DescribeTrustedAdvisorCheckResult {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has language => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckResult');
  has _returns => (isa => 'Aws::Support::DescribeTrustedAdvisorCheckResultResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckResultResult');  
}
package Aws::Support::DescribeTrustedAdvisorCheckSummaries {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckSummaries');
  has _returns => (isa => 'Aws::Support::DescribeTrustedAdvisorCheckSummariesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckSummariesResult');  
}
package Aws::Support::DescribeTrustedAdvisorChecks {
  use Moose;
  has language => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorChecks');
  has _returns => (isa => 'Aws::Support::DescribeTrustedAdvisorChecksResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorChecksResult');  
}
package Aws::Support::RefreshTrustedAdvisorCheck {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshTrustedAdvisorCheck');
  has _returns => (isa => 'Aws::Support::RefreshTrustedAdvisorCheckResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'RefreshTrustedAdvisorCheckResult');  
}
package Aws::Support::ResolveCase {
  use Moose;
  has caseId => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveCase');
  has _returns => (isa => 'Aws::Support::ResolveCaseResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ResolveCaseResult');  
}

package Aws::Support::AddCommunicationToCaseResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Bool');

}
package Aws::Support::CreateCaseResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has caseId => (is => 'ro', isa => 'Str');

}
package Aws::Support::DescribeCasesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has cases => (is => 'ro', isa => 'ArrayRef[Aws::Support::CaseDetails]');
  has nextToken => (is => 'ro', isa => 'Str');

}
package Aws::Support::DescribeCommunicationsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has communications => (is => 'ro', isa => 'ArrayRef[Aws::Support::Communication]');
  has nextToken => (is => 'ro', isa => 'Str');

}
package Aws::Support::DescribeServicesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has services => (is => 'ro', isa => 'ArrayRef[Aws::Support::Service]');

}
package Aws::Support::DescribeSeverityLevelsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has severityLevels => (is => 'ro', isa => 'ArrayRef[Aws::Support::SeverityLevel]');

}
package Aws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has statuses => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckRefreshStatus]', required => 1);

}
package Aws::Support::DescribeTrustedAdvisorCheckResultResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has result => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCheckResult');

}
package Aws::Support::DescribeTrustedAdvisorCheckSummariesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has summaries => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckSummary]', required => 1);

}
package Aws::Support::DescribeTrustedAdvisorChecksResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has checks => (is => 'ro', isa => 'ArrayRef[Aws::Support::TrustedAdvisorCheckDescription]', required => 1);

}
package Aws::Support::RefreshTrustedAdvisorCheckResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has status => (is => 'ro', isa => 'Aws::Support::TrustedAdvisorCheckRefreshStatus', required => 1);

}
package Aws::Support::ResolveCaseResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has finalCaseStatus => (is => 'ro', isa => 'Str');
  has initialCaseStatus => (is => 'ro', isa => 'Str');

}

package Aws::Support {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'support');
  has version => (is => 'ro', isa => 'Str', default => '2013-04-15');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSSupport_20130415');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub AddCommunicationToCase {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::AddCommunicationToCase', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::AddCommunicationToCaseResult->from_result($result);return $o_result;
  }
  sub CreateCase {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::CreateCase', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::CreateCaseResult->from_result($result);return $o_result;
  }
  sub DescribeCases {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeCases', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeCasesResult->from_result($result);return $o_result;
  }
  sub DescribeCommunications {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeCommunications', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeCommunicationsResult->from_result($result);return $o_result;
  }
  sub DescribeServices {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeServices', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeServicesResult->from_result($result);return $o_result;
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeSeverityLevels', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeSeverityLevelsResult->from_result($result);return $o_result;
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResult->from_result($result);return $o_result;
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeTrustedAdvisorCheckResult', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeTrustedAdvisorCheckResultResult->from_result($result);return $o_result;
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeTrustedAdvisorChecks', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeTrustedAdvisorChecksResult->from_result($result);return $o_result;
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::DescribeTrustedAdvisorCheckSummariesResult->from_result($result);return $o_result;
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::RefreshTrustedAdvisorCheck', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::RefreshTrustedAdvisorCheckResult->from_result($result);return $o_result;
  }
  sub ResolveCase {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::Support::ResolveCase', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::Support::ResolveCaseResult->from_result($result);return $o_result;
  }
}
1;
