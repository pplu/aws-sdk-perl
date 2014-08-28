
use AWS::API;


package Aws::CloudSearch::BuildSuggestersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::CloudSearch::CreateDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
package Aws::CloudSearch::DefineAnalysisSchemeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisSchemeStatus', required => 1);

}
package Aws::CloudSearch::DefineExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Expression => (is => 'ro', isa => 'Aws::CloudSearch::ExpressionStatus', required => 1);

}
package Aws::CloudSearch::DefineIndexFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
package Aws::CloudSearch::DefineSuggesterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggester => (is => 'ro', isa => 'Aws::CloudSearch::SuggesterStatus', required => 1);

}
package Aws::CloudSearch::DeleteAnalysisSchemeResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisSchemeStatus', required => 1);

}
package Aws::CloudSearch::DeleteDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
package Aws::CloudSearch::DeleteExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Expression => (is => 'ro', isa => 'Aws::CloudSearch::ExpressionStatus', required => 1);

}
package Aws::CloudSearch::DeleteIndexFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
package Aws::CloudSearch::DeleteSuggesterResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggester => (is => 'ro', isa => 'Aws::CloudSearch::SuggesterStatus', required => 1);

}
package Aws::CloudSearch::DescribeAnalysisSchemesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AnalysisSchemes => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::AnalysisSchemeStatus]', required => 1);

}
package Aws::CloudSearch::DescribeAvailabilityOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityOptions => (is => 'ro', isa => 'Aws::CloudSearch::AvailabilityOptionsStatus');

}
package Aws::CloudSearch::DescribeDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::DomainStatus]', required => 1);

}
package Aws::CloudSearch::DescribeExpressionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Expressions => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::ExpressionStatus]', required => 1);

}
package Aws::CloudSearch::DescribeIndexFieldsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexFields => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::IndexFieldStatus]', required => 1);

}
package Aws::CloudSearch::DescribeScalingParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParametersStatus', required => 1);

}
package Aws::CloudSearch::DescribeServiceAccessPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
package Aws::CloudSearch::DescribeSuggestersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Suggesters => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::SuggesterStatus]', required => 1);

}
package Aws::CloudSearch::IndexDocumentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::CloudSearch::ListDomainNamesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'Aws::CloudSearch::DomainNameMap');

}
package Aws::CloudSearch::UpdateAvailabilityOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityOptions => (is => 'ro', isa => 'Aws::CloudSearch::AvailabilityOptionsStatus');

}
package Aws::CloudSearch::UpdateScalingParametersResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParametersStatus', required => 1);

}
package Aws::CloudSearch::UpdateServiceAccessPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}

package Aws::CloudSearch {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2013-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub BuildSuggesters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::BuildSuggesters', @_);
  }
  sub CreateDomain {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::CreateDomain', @_);
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineAnalysisScheme', @_);
  }
  sub DefineExpression {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineExpression', @_);
  }
  sub DefineIndexField {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineIndexField', @_);
  }
  sub DefineSuggester {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DefineSuggester', @_);
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteAnalysisScheme', @_);
  }
  sub DeleteDomain {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteDomain', @_);
  }
  sub DeleteExpression {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteExpression', @_);
  }
  sub DeleteIndexField {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteIndexField', @_);
  }
  sub DeleteSuggester {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DeleteSuggester', @_);
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeAnalysisSchemes', @_);
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeAvailabilityOptions', @_);
  }
  sub DescribeDomains {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeDomains', @_);
  }
  sub DescribeExpressions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeExpressions', @_);
  }
  sub DescribeIndexFields {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeIndexFields', @_);
  }
  sub DescribeScalingParameters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeScalingParameters', @_);
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeServiceAccessPolicies', @_);
  }
  sub DescribeSuggesters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::DescribeSuggesters', @_);
  }
  sub IndexDocuments {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::IndexDocuments', @_);
  }
  sub ListDomainNames {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::ListDomainNames', @_);
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateAvailabilityOptions', @_);
  }
  sub UpdateScalingParameters {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateScalingParameters', @_);
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    return $self->do_call('Aws::CloudSearch::UpdateServiceAccessPolicies', @_);
  }
}
1;
