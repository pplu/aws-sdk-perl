
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudSearch::IndexFieldType', ['uint','literal','text',];
enum 'Aws::CloudSearch::OptionState', ['RequiresIndexDocuments','Processing','Active',];
enum 'Aws::CloudSearch::SourceDataFunction', ['Copy','TrimTitle','Map',];


package Aws::CloudSearch::AccessPoliciesStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::DefaultSearchFieldStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::DomainStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Created => (is => 'ro', isa => 'Bool');
  has Deleted => (is => 'ro', isa => 'Bool');
  has DocService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has NumSearchableDocs => (is => 'ro', isa => 'Int');
  has Processing => (is => 'ro', isa => 'Bool');
  has RequiresIndexDocuments => (is => 'ro', isa => 'Bool', required => 1);
  has SearchInstanceCount => (is => 'ro', isa => 'Int');
  has SearchInstanceType => (is => 'ro', isa => 'Str');
  has SearchPartitionCount => (is => 'ro', isa => 'Int');
  has SearchService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
}

package Aws::CloudSearch::IndexField {
  use Moose;
  with ('AWS::API::ResultParser');
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldType', required => 1);
  has LiteralOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralOptions');
  has SourceAttributes => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::SourceAttribute]');
  has TextOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextOptions');
  has UIntOptions => (is => 'ro', isa => 'Aws::CloudSearch::UIntOptions');
}

package Aws::CloudSearch::IndexFieldStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::LiteralOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ResultEnabled => (is => 'ro', isa => 'Bool');
  has SearchEnabled => (is => 'ro', isa => 'Bool');
}

package Aws::CloudSearch::NamedRankExpression {
  use Moose;
  with ('AWS::API::ResultParser');
  has RankExpression => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);
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

package Aws::CloudSearch::RankExpressionStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::NamedRankExpression', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::ServiceEndpoint {
  use Moose;
  with ('AWS::API::ResultParser');
  has Arn => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::SourceAttribute {
  use Moose;
  with ('AWS::API::ResultParser');
  has SourceDataCopy => (is => 'ro', isa => 'Aws::CloudSearch::SourceData');
  has SourceDataFunction => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataFunction', required => 1);
  has SourceDataMap => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataMap');
  has SourceDataTrimTitle => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataTrimTitle');
}

package Aws::CloudSearch::SourceData {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::SourceDataMap {
  use Moose;
  with ('AWS::API::ResultParser');
  has Cases => (is => 'ro', isa => 'Aws::CloudSearch::StringCaseMap');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::SourceDataTrimTitle {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Language => (is => 'ro', isa => 'Str');
  has Separator => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::CloudSearch::StemmingOptionsStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::StopwordOptionsStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::StringCaseMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::CloudSearch::SynonymOptionsStatus {
  use Moose;
  with ('AWS::API::ResultParser');
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

package Aws::CloudSearch::TextOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Bool');
  has ResultEnabled => (is => 'ro', isa => 'Bool');
  has TextProcessor => (is => 'ro', isa => 'Str');
}

package Aws::CloudSearch::UIntOptions {
  use Moose;
  with ('AWS::API::ResultParser');
  has DefaultValue => (is => 'ro', isa => 'Int');
}



package Aws::CloudSearch::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  has _returns => (isa => 'Aws::CloudSearch::CreateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');  
}
package Aws::CloudSearch::DefineIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DefineIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');  
}
package Aws::CloudSearch::DefineRankExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::NamedRankExpression', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineRankExpression');
  has _returns => (isa => 'Aws::CloudSearch::DefineRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineRankExpressionResult');  
}
package Aws::CloudSearch::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  has _returns => (isa => 'Aws::CloudSearch::DeleteDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');  
}
package Aws::CloudSearch::DeleteIndexField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DeleteIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');  
}
package Aws::CloudSearch::DeleteRankExpression {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRankExpression');
  has _returns => (isa => 'Aws::CloudSearch::DeleteRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRankExpressionResult');  
}
package Aws::CloudSearch::DescribeDefaultSearchField {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchField');
  has _returns => (isa => 'Aws::CloudSearch::DescribeDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchFieldResult');  
}
package Aws::CloudSearch::DescribeDomains {
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  has _returns => (isa => 'Aws::CloudSearch::DescribeDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');  
}
package Aws::CloudSearch::DescribeIndexFields {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  has _returns => (isa => 'Aws::CloudSearch::DescribeIndexFieldsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');  
}
package Aws::CloudSearch::DescribeRankExpressions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeRankExpressionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressionsResult');  
}
package Aws::CloudSearch::DescribeServiceAccessPolicies {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::DescribeServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPoliciesResult');  
}
package Aws::CloudSearch::DescribeStemmingOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptionsResult');  
}
package Aws::CloudSearch::DescribeStopwordOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptionsResult');  
}
package Aws::CloudSearch::DescribeSynonymOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptionsResult');  
}
package Aws::CloudSearch::IndexDocuments {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  has _returns => (isa => 'Aws::CloudSearch::IndexDocumentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');  
}
package Aws::CloudSearch::UpdateDefaultSearchField {
  use Moose;
  has DefaultSearchField => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchField');
  has _returns => (isa => 'Aws::CloudSearch::UpdateDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchFieldResult');  
}
package Aws::CloudSearch::UpdateServiceAccessPolicies {
  use Moose;
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::UpdateServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');  
}
package Aws::CloudSearch::UpdateStemmingOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stems => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptionsResult');  
}
package Aws::CloudSearch::UpdateStopwordOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stopwords => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptionsResult');  
}
package Aws::CloudSearch::UpdateSynonymOptions {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Synonyms => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptionsResult');  
}

package Aws::CloudSearch::CreateDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
package Aws::CloudSearch::DefineIndexFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
package Aws::CloudSearch::DefineRankExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::RankExpressionStatus', required => 1);

}
package Aws::CloudSearch::DeleteDomainResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
package Aws::CloudSearch::DeleteIndexFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
package Aws::CloudSearch::DeleteRankExpressionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::RankExpressionStatus', required => 1);

}
package Aws::CloudSearch::DescribeDefaultSearchFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DefaultSearchField => (is => 'ro', isa => 'Aws::CloudSearch::DefaultSearchFieldStatus', required => 1);

}
package Aws::CloudSearch::DescribeDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::DomainStatus]', required => 1);

}
package Aws::CloudSearch::DescribeIndexFieldsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IndexFields => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::IndexFieldStatus]', required => 1);

}
package Aws::CloudSearch::DescribeRankExpressionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has RankExpressions => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::RankExpressionStatus]', required => 1);

}
package Aws::CloudSearch::DescribeServiceAccessPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
package Aws::CloudSearch::DescribeStemmingOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stems => (is => 'ro', isa => 'Aws::CloudSearch::StemmingOptionsStatus', required => 1);

}
package Aws::CloudSearch::DescribeStopwordOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stopwords => (is => 'ro', isa => 'Aws::CloudSearch::StopwordOptionsStatus', required => 1);

}
package Aws::CloudSearch::DescribeSynonymOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Synonyms => (is => 'ro', isa => 'Aws::CloudSearch::SynonymOptionsStatus', required => 1);

}
package Aws::CloudSearch::IndexDocumentsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
package Aws::CloudSearch::UpdateDefaultSearchFieldResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DefaultSearchField => (is => 'ro', isa => 'Aws::CloudSearch::DefaultSearchFieldStatus', required => 1);

}
package Aws::CloudSearch::UpdateServiceAccessPoliciesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
package Aws::CloudSearch::UpdateStemmingOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stems => (is => 'ro', isa => 'Aws::CloudSearch::StemmingOptionsStatus', required => 1);

}
package Aws::CloudSearch::UpdateStopwordOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Stopwords => (is => 'ro', isa => 'Aws::CloudSearch::StopwordOptionsStatus', required => 1);

}
package Aws::CloudSearch::UpdateSynonymOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Synonyms => (is => 'ro', isa => 'Aws::CloudSearch::SynonymOptionsStatus', required => 1);

}

package Aws::CloudSearch {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2011-02-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub CreateDomain {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::CreateDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::CreateDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineIndexField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineIndexField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DefineRankExpression {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DefineRankExpression', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteDomain {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteIndexField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteIndexField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DeleteRankExpression {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DeleteRankExpression', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDefaultSearchField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeDefaultSearchField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeDomains {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeDomains', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeIndexFields {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeIndexFields', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeIndexFieldsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeRankExpressions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeRankExpressions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeRankExpressionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeServiceAccessPolicies {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeServiceAccessPolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeStemmingOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeStemmingOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeStopwordOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeStopwordOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DescribeSynonymOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::DescribeSynonymOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub IndexDocuments {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::IndexDocuments', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::IndexDocumentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateDefaultSearchField {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateDefaultSearchField', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateServiceAccessPolicies {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateServiceAccessPolicies', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateStemmingOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateStemmingOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateStopwordOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateStopwordOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub UpdateSynonymOptions {
    my $self = shift;
    my $call = $self->new_with_coercions('Aws::CloudSearch::UpdateSynonymOptions', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
1;
