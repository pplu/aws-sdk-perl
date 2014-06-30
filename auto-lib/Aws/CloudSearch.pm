
use AWS::API;


package Aws::CloudSearch::AccessPoliciesStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::AnalysisOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlgorithmicStemming => (is => 'ro', isa => 'Str');
  has StemmingDictionary => (is => 'ro', isa => 'Str');
  has Stopwords => (is => 'ro', isa => 'Str');
  has Synonyms => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::AnalysisScheme {
  use Moose;
  with ('AWS::API::ResultParser');
  has AnalysisOptions => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisOptions');
  has AnalysisSchemeLanguage => (is => 'ro', isa => 'Str', required => 1);
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::AnalysisSchemeStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisScheme', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::AvailabilityOptionsStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Bool', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::DateArrayOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::DateOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::DocumentSuggesterOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has FuzzyMatching => (is => 'ro', isa => 'Str');
  has SortExpression => (is => 'ro', isa => 'Str');
  has SourceField => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::DomainNameMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::CloudSearch::DomainStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has ARN => (is => 'ro', isa => 'Str');
  has Created => (is => 'ro', isa => 'Bool');
  has Deleted => (is => 'ro', isa => 'Bool');
  has DocService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Processing => (is => 'ro', isa => 'Bool');
  has RequiresIndexDocuments => (is => 'ro', isa => 'Bool', required => 1);
  has SearchInstanceCount => (is => 'ro', isa => 'Int');
  has SearchInstanceType => (is => 'ro', isa => 'Str');
  has SearchPartitionCount => (is => 'ro', isa => 'Int');
  has SearchService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
}

package Aws::CloudSearch::DoubleArrayOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::DoubleOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::Expression {
  use Moose;
  with ('AWS::API::ResultParser');
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionValue => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::ExpressionStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::Expression', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::IndexField {
  use Moose;
  with ('AWS::API::ResultParser');
  has DateArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::DateArrayOptions');
  has DateOptions => (is => 'ro', isa => 'Aws::CloudSearch::DateOptions');
  has DoubleArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::DoubleArrayOptions');
  has DoubleOptions => (is => 'ro', isa => 'Aws::CloudSearch::DoubleOptions');
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'Str', required => 1);
  has IntArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::IntArrayOptions');
  has IntOptions => (is => 'ro', isa => 'Aws::CloudSearch::IntOptions');
  has LatLonOptions => (is => 'ro', isa => 'Aws::CloudSearch::LatLonOptions');
  has LiteralArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralArrayOptions');
  has LiteralOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralOptions');
  has TextArrayOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextArrayOptions');
  has TextOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextOptions');
}

package Aws::CloudSearch::IndexFieldStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::IntArrayOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::IntOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Num');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::LatLonOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::LiteralArrayOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::LiteralOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::OptionStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeletion => (is => 'ro', isa => 'Bool');
  has State => (is => 'ro', isa => 'Str', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
}

package Aws::CloudSearch::ScalingParameters {
  use Moose;
  with ('AWS::API::ResultParser');
  has DesiredInstanceType => (is => 'ro', isa => 'Str');
  has DesiredPartitionCount => (is => 'ro', isa => 'Int');
  has DesiredReplicationCount => (is => 'ro', isa => 'Int');
}

package Aws::CloudSearch::ScalingParametersStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParameters', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::ServiceEndpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Endpoint => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::Suggester {
  use Moose;
  with ('AWS::API::ResultParser');
  has DocumentSuggesterOptions => (is => 'ro', isa => 'Aws::CloudSearch::DocumentSuggesterOptions', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::SuggesterStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::Suggester', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::TextArrayOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has AnalysisScheme => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has HighlightEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SourceFields => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::TextOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has AnalysisScheme => (is => 'ro', isa => 'Str');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has HighlightEnabled => (is => 'ro', isa => 'Bool');
  has ReturnEnabled => (is => 'ro', isa => 'Bool');
  has SortEnabled => (is => 'ro', isa => 'Bool');
  has SourceField => (is => 'ro', isa => 'Str');
}



package Aws::CloudSearch::BuildSuggesters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BuildSuggesters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::BuildSuggestersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BuildSuggestersResult');
}
package Aws::CloudSearch::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::CreateDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');
}
package Aws::CloudSearch::DefineAnalysisScheme {
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisScheme', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineAnalysisSchemeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineAnalysisSchemeResult');
}
package Aws::CloudSearch::DefineExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Aws::CloudSearch::Expression', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineExpressionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineExpressionResult');
}
package Aws::CloudSearch::DefineIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineIndexFieldResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');
}
package Aws::CloudSearch::DefineSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Suggester => (is => 'ro', isa => 'Aws::CloudSearch::Suggester', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DefineSuggester');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DefineSuggesterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DefineSuggesterResult');
}
package Aws::CloudSearch::DeleteAnalysisScheme {
  use Moose;
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisScheme');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteAnalysisSchemeResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisSchemeResult');
}
package Aws::CloudSearch::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteDomainResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');
}
package Aws::CloudSearch::DeleteExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExpression');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteExpressionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteExpressionResult');
}
package Aws::CloudSearch::DeleteIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteIndexFieldResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');
}
package Aws::CloudSearch::DeleteSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSuggester');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DeleteSuggesterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSuggesterResult');
}
package Aws::CloudSearch::DescribeAnalysisSchemes {
  use Moose;
  has AnalysisSchemeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeAnalysisSchemesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemesResult');
}
package Aws::CloudSearch::DescribeAvailabilityOptions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeAvailabilityOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptionsResult');
}
package Aws::CloudSearch::DescribeDomains {
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');
}
package Aws::CloudSearch::DescribeExpressions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExpressions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeExpressionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExpressionsResult');
}
package Aws::CloudSearch::DescribeIndexFields {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeIndexFieldsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');
}
package Aws::CloudSearch::DescribeScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeScalingParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingParametersResult');
}
package Aws::CloudSearch::DescribeServiceAccessPolicies {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeServiceAccessPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPoliciesResult');
}
package Aws::CloudSearch::DescribeSuggesters {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterNames => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSuggesters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::DescribeSuggestersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSuggestersResult');
}
package Aws::CloudSearch::IndexDocuments {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::IndexDocumentsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');
}
package Aws::CloudSearch::ListDomainNames {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainNames');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::ListDomainNamesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainNamesResult');
}
package Aws::CloudSearch::UpdateAvailabilityOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has MultiAZ => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateAvailabilityOptionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptionsResult');
}
package Aws::CloudSearch::UpdateScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParameters', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateScalingParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateScalingParametersResult');
}
package Aws::CloudSearch::UpdateServiceAccessPolicies {
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CloudSearch::UpdateServiceAccessPoliciesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');
}

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
