
use AWS::API;


package Aws::Support::Attachment {
  use Moose;
  with ('AWS::API::ResultParser');
  has data => (is => 'ro', isa => 'Str');
  has fileName => (is => 'ro', isa => 'Str');
}

package Aws::Support::AttachmentDetails {
  use Moose;
  with ('AWS::API::ResultParser');
  has attachmentId => (is => 'ro', isa => 'Str');
  has fileName => (is => 'ro', isa => 'Str');
}

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
  has attachmentSet => (is => 'ro', isa => 'ArrayRef[Aws::Support::AttachmentDetails]');
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



package Aws::Support::AddAttachmentsToSet {
  use Moose;
  has attachments => (is => 'ro', isa => 'ArrayRef[Aws::Support::Attachment]', required => 1);
  has attachmentSetId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddAttachmentsToSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::AddAttachmentsToSetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::AddCommunicationToCase {
  use Moose;
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddCommunicationToCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::AddCommunicationToCaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::CreateCase {
  use Moose;
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has categoryCode => (is => 'ro', isa => 'Str');
  has ccEmailAddresses => (is => 'ro', isa => 'ArrayRef[Str]');
  has communicationBody => (is => 'ro', isa => 'Str', required => 1);
  has issueType => (is => 'ro', isa => 'Str');
  has language => (is => 'ro', isa => 'Str');
  has serviceCode => (is => 'ro', isa => 'Str');
  has severityCode => (is => 'ro', isa => 'Str');
  has subject => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::CreateCaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeAttachment {
  use Moose;
  has attachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeAttachmentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeCases {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseIdList => (is => 'ro', isa => 'ArrayRef[Str]');
  has displayId => (is => 'ro', isa => 'Str');
  has includeCommunications => (is => 'ro', isa => 'Bool');
  has includeResolvedCases => (is => 'ro', isa => 'Bool');
  has language => (is => 'ro', isa => 'Str');
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeCasesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeCommunications {
  use Moose;
  has afterTime => (is => 'ro', isa => 'Str');
  has beforeTime => (is => 'ro', isa => 'Str');
  has caseId => (is => 'ro', isa => 'Str', required => 1);
  has maxResults => (is => 'ro', isa => 'Int');
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCommunications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeCommunicationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeServices {
  use Moose;
  has language => (is => 'ro', isa => 'Str');
  has serviceCodeList => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeServicesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeSeverityLevels {
  use Moose;
  has language => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSeverityLevels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeSeverityLevelsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeTrustedAdvisorCheckRefreshStatuses {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckRefreshStatuses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeTrustedAdvisorCheckRefreshStatusesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeTrustedAdvisorCheckResult {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);
  has language => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeTrustedAdvisorCheckResultResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeTrustedAdvisorCheckSummaries {
  use Moose;
  has checkIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorCheckSummaries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeTrustedAdvisorCheckSummariesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::DescribeTrustedAdvisorChecks {
  use Moose;
  has language => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrustedAdvisorChecks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::DescribeTrustedAdvisorChecksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::RefreshTrustedAdvisorCheck {
  use Moose;
  has checkId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RefreshTrustedAdvisorCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::RefreshTrustedAdvisorCheckResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::Support::ResolveCase {
  use Moose;
  has caseId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveCase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Support::ResolveCaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::Support::AddAttachmentsToSetResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has attachmentSetId => (is => 'ro', isa => 'Str');
  has expiryTime => (is => 'ro', isa => 'Str');

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
package Aws::Support::DescribeAttachmentResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has attachment => (is => 'ro', isa => 'Aws::Support::Attachment');

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

  
  sub AddAttachmentsToSet {
    my $self = shift;
    return $self->do_call('Aws::Support::AddAttachmentsToSet', @_);
  }
  sub AddCommunicationToCase {
    my $self = shift;
    return $self->do_call('Aws::Support::AddCommunicationToCase', @_);
  }
  sub CreateCase {
    my $self = shift;
    return $self->do_call('Aws::Support::CreateCase', @_);
  }
  sub DescribeAttachment {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeAttachment', @_);
  }
  sub DescribeCases {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeCases', @_);
  }
  sub DescribeCommunications {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeCommunications', @_);
  }
  sub DescribeServices {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeServices', @_);
  }
  sub DescribeSeverityLevels {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeSeverityLevels', @_);
  }
  sub DescribeTrustedAdvisorCheckRefreshStatuses {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckRefreshStatuses', @_);
  }
  sub DescribeTrustedAdvisorCheckResult {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckResult', @_);
  }
  sub DescribeTrustedAdvisorChecks {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorChecks', @_);
  }
  sub DescribeTrustedAdvisorCheckSummaries {
    my $self = shift;
    return $self->do_call('Aws::Support::DescribeTrustedAdvisorCheckSummaries', @_);
  }
  sub RefreshTrustedAdvisorCheck {
    my $self = shift;
    return $self->do_call('Aws::Support::RefreshTrustedAdvisorCheck', @_);
  }
  sub ResolveCase {
    my $self = shift;
    return $self->do_call('Aws::Support::ResolveCase', @_);
  }
}
1;
