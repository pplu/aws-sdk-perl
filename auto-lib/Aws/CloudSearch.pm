
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudSearch::AlgorithmicStemming', ['none','minimal','light','full',];
enum 'Aws::CloudSearch::AnalysisSchemeLanguage', ['ar','bg','ca','cs','da','de','el','en','es','eu','fa','fi','fr','ga','gl','he','hi','hu','hy','id','it','ja','ko','lv','mul','nl','no','pt','ro','ru','sv','th','tr','zh-Hans','zh-Hant',];
enum 'Aws::CloudSearch::IndexFieldType', ['int','double','literal','text','date','latlon','int-array','double-array','literal-array','text-array','date-array',];
enum 'Aws::CloudSearch::OptionState', ['RequiresIndexDocuments','Processing','Active','FailedToValidate',];
enum 'Aws::CloudSearch::PartitionInstanceType', ['search.m1.small','search.m1.large','search.m2.xlarge','search.m2.2xlarge',];
enum 'Aws::CloudSearch::SuggesterFuzzyMatching', ['none','low','high',];


package Aws::CloudSearch::AccessPoliciesStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::AnalysisOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlgorithmicStemming => (is => 'ro', isa => 'Aws::CloudSearch::AlgorithmicStemming');
  has StemmingDictionary => (is => 'ro', isa => 'Str');
  has Stopwords => (is => 'ro', isa => 'Str');
  has Synonyms => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::AnalysisScheme {
  use Moose;
  with ('AWS::API::ResultParser');
  has AnalysisOptions => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisOptions');
  has AnalysisSchemeLanguage => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisSchemeLanguage', required => 1);
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
  has FuzzyMatching => (is => 'ro', isa => 'Aws::CloudSearch::SuggesterFuzzyMatching');
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
  has IndexFieldType => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldType', required => 1);
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
  has State => (is => 'ro', isa => 'Aws::CloudSearch::OptionState', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
}

package Aws::CloudSearch::ScalingParameters {
  use Moose;
  with ('AWS::API::ResultParser');
  has DesiredInstanceType => (is => 'ro', isa => 'Aws::CloudSearch::PartitionInstanceType');
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

  has _api_call => (isa => 'Str', is => 'ro', default => 'BuildSuggesters');
  has _returns => (isa => 'Aws::CloudSearch::BuildSuggestersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BuildSuggestersResult');  
}
package Aws::CloudSearch::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  has _returns => (isa => 'Aws::CloudSearch::CreateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');  
}
package Aws::CloudSearch::DefineAnalysisScheme {
  use Moose;
  has AnalysisScheme => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisScheme', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineAnalysisScheme');
  has _returns => (isa => 'Aws::CloudSearch::DefineAnalysisSchemeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineAnalysisSchemeResult');  
}
package Aws::CloudSearch::DefineExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expression => (is => 'ro', isa => 'Aws::CloudSearch::Expression', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineExpression');
  has _returns => (isa => 'Aws::CloudSearch::DefineExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineExpressionResult');  
}
package Aws::CloudSearch::DefineIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DefineIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');  
}
package Aws::CloudSearch::DefineSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Suggester => (is => 'ro', isa => 'Aws::CloudSearch::Suggester', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineSuggester');
  has _returns => (isa => 'Aws::CloudSearch::DefineSuggesterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineSuggesterResult');  
}
package Aws::CloudSearch::DeleteAnalysisScheme {
  use Moose;
  has AnalysisSchemeName => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisScheme');
  has _returns => (isa => 'Aws::CloudSearch::DeleteAnalysisSchemeResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAnalysisSchemeResult');  
}
package Aws::CloudSearch::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  has _returns => (isa => 'Aws::CloudSearch::DeleteDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');  
}
package Aws::CloudSearch::DeleteExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteExpression');
  has _returns => (isa => 'Aws::CloudSearch::DeleteExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteExpressionResult');  
}
package Aws::CloudSearch::DeleteIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DeleteIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');  
}
package Aws::CloudSearch::DeleteSuggester {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSuggester');
  has _returns => (isa => 'Aws::CloudSearch::DeleteSuggesterResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteSuggesterResult');  
}
package Aws::CloudSearch::DescribeAnalysisSchemes {
  use Moose;
  has AnalysisSchemeNames => (is => 'ro', isa => 'ArrayRef[Str]');
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemes');
  has _returns => (isa => 'Aws::CloudSearch::DescribeAnalysisSchemesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAnalysisSchemesResult');  
}
package Aws::CloudSearch::DescribeAvailabilityOptions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeAvailabilityOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAvailabilityOptionsResult');  
}
package Aws::CloudSearch::DescribeDomains {
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  has _returns => (isa => 'Aws::CloudSearch::DescribeDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');  
}
package Aws::CloudSearch::DescribeExpressions {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ExpressionNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExpressions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeExpressionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeExpressionsResult');  
}
package Aws::CloudSearch::DescribeIndexFields {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  has _returns => (isa => 'Aws::CloudSearch::DescribeIndexFieldsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');  
}
package Aws::CloudSearch::DescribeScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScalingParameters');
  has _returns => (isa => 'Aws::CloudSearch::DescribeScalingParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeScalingParametersResult');  
}
package Aws::CloudSearch::DescribeServiceAccessPolicies {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::DescribeServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPoliciesResult');  
}
package Aws::CloudSearch::DescribeSuggesters {
  use Moose;
  has Deployed => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has SuggesterNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSuggesters');
  has _returns => (isa => 'Aws::CloudSearch::DescribeSuggestersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSuggestersResult');  
}
package Aws::CloudSearch::IndexDocuments {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  has _returns => (isa => 'Aws::CloudSearch::IndexDocumentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');  
}
package Aws::CloudSearch::ListDomainNames {
  use Moose;

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomainNames');
  has _returns => (isa => 'Aws::CloudSearch::ListDomainNamesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainNamesResult');  
}
package Aws::CloudSearch::UpdateAvailabilityOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has MultiAZ => (is => 'ro', isa => 'Bool', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateAvailabilityOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAvailabilityOptionsResult');  
}
package Aws::CloudSearch::UpdateScalingParameters {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ScalingParameters => (is => 'ro', isa => 'Aws::CloudSearch::ScalingParameters', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateScalingParameters');
  has _returns => (isa => 'Aws::CloudSearch::UpdateScalingParametersResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateScalingParametersResult');  
}
package Aws::CloudSearch::UpdateServiceAccessPolicies {
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::UpdateServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');  
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
    my $call = $self->new_with_coercions('Aws::CloudSearch::BuildSuggesters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::BuildSuggestersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub CreateDomain {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::CreateDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::CreateDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineAnalysisScheme {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineAnalysisScheme', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineAnalysisSchemeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineExpression {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineExpression', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineIndexField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineIndexField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineSuggester {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineSuggester', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineSuggesterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteAnalysisScheme {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteAnalysisScheme', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteAnalysisSchemeResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteDomain {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteExpression {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteExpression', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteIndexField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteIndexField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteSuggester {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteSuggester', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteSuggesterResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAnalysisSchemes {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeAnalysisSchemes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeAnalysisSchemesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeAvailabilityOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeAvailabilityOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeAvailabilityOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDomains {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeDomains', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeExpressions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeExpressions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeExpressionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeIndexFields {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeIndexFields', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeIndexFieldsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeScalingParameters {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeScalingParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeScalingParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeServiceAccessPolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeSuggesters {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeSuggesters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeSuggestersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub IndexDocuments {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::IndexDocuments', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::IndexDocumentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListDomainNames {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::ListDomainNames', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::ListDomainNamesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateAvailabilityOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateAvailabilityOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateAvailabilityOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateScalingParameters {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateScalingParameters', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateScalingParametersResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateServiceAccessPolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
1;
