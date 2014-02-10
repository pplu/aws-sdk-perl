
use MooseX::Declare;
use AWS::API;

use Moose::Util::TypeConstraints;
enum 'Aws::CloudSearch::IndexFieldType', ['uint','literal','text',];
enum 'Aws::CloudSearch::OptionState', ['RequiresIndexDocuments','Processing','Active',];
enum 'Aws::CloudSearch::SourceDataFunction', ['Copy','TrimTitle','Map',];


class Aws::CloudSearch::AccessPoliciesStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::DefaultSearchFieldStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::DomainStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Created => (is => 'ro', isa => 'Str');
  has Deleted => (is => 'ro', isa => 'Str');
  has DocService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has NumSearchableDocs => (is => 'ro', isa => 'Int');
  has Processing => (is => 'ro', isa => 'Str');
  has RequiresIndexDocuments => (is => 'ro', isa => 'Str', required => 1);
  has SearchInstanceCount => (is => 'ro', isa => 'Int');
  has SearchInstanceType => (is => 'ro', isa => 'Str');
  has SearchPartitionCount => (is => 'ro', isa => 'Int');
  has SearchService => (is => 'ro', isa => 'Aws::CloudSearch::ServiceEndpoint');
}

class Aws::CloudSearch::IndexField with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldType', required => 1);
  has LiteralOptions => (is => 'ro', isa => 'Aws::CloudSearch::LiteralOptions');
  has SourceAttributes => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::SourceAttribute]');
  has TextOptions => (is => 'ro', isa => 'Aws::CloudSearch::TextOptions');
  has UIntOptions => (is => 'ro', isa => 'Aws::CloudSearch::UIntOptions');
}

class Aws::CloudSearch::IndexFieldStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::LiteralOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Str');
  has ResultEnabled => (is => 'ro', isa => 'Str');
  has SearchEnabled => (is => 'ro', isa => 'Str');
}

class Aws::CloudSearch::NamedRankExpression with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RankExpression => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::CloudSearch::OptionStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeletion => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Aws::CloudSearch::OptionState', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
}

class Aws::CloudSearch::RankExpressionStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::NamedRankExpression', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::ServiceEndpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
}

class Aws::CloudSearch::SourceAttribute with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SourceDataCopy => (is => 'ro', isa => 'Aws::CloudSearch::SourceData');
  has SourceDataFunction => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataFunction', required => 1);
  has SourceDataMap => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataMap');
  has SourceDataTrimTitle => (is => 'ro', isa => 'Aws::CloudSearch::SourceDataTrimTitle');
}

class Aws::CloudSearch::SourceData with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::CloudSearch::SourceDataMap with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Cases => (is => 'ro', isa => 'Aws::CloudSearch::StringCaseMap');
  has DefaultValue => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::CloudSearch::SourceDataTrimTitle with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has Language => (is => 'ro', isa => 'Str');
  has Separator => (is => 'ro', isa => 'Str');
  has SourceName => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::CloudSearch::StemmingOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::StopwordOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::StringCaseMap with AWS::API::StrToStrMapParser {
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

class Aws::CloudSearch::SynonymOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}

class Aws::CloudSearch::TextOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Str');
  has ResultEnabled => (is => 'ro', isa => 'Str');
  has TextProcessor => (is => 'ro', isa => 'Str');
}

class Aws::CloudSearch::UIntOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Int');
}



class Aws::CloudSearch::CreateDomain {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  has _returns => (isa => 'Aws::CloudSearch::CreateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');  
}
class Aws::CloudSearch::DefineIndexField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexField', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DefineIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');  
}
class Aws::CloudSearch::DefineRankExpression {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::NamedRankExpression', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineRankExpression');
  has _returns => (isa => 'Aws::CloudSearch::DefineRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineRankExpressionResult');  
}
class Aws::CloudSearch::DeleteDomain {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  has _returns => (isa => 'Aws::CloudSearch::DeleteDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');  
}
class Aws::CloudSearch::DeleteIndexField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  has _returns => (isa => 'Aws::CloudSearch::DeleteIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');  
}
class Aws::CloudSearch::DeleteRankExpression {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRankExpression');
  has _returns => (isa => 'Aws::CloudSearch::DeleteRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRankExpressionResult');  
}
class Aws::CloudSearch::DescribeDefaultSearchField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchField');
  has _returns => (isa => 'Aws::CloudSearch::DescribeDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchFieldResult');  
}
class Aws::CloudSearch::DescribeDomains {
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  has _returns => (isa => 'Aws::CloudSearch::DescribeDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');  
}
class Aws::CloudSearch::DescribeIndexFields {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  has _returns => (isa => 'Aws::CloudSearch::DescribeIndexFieldsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');  
}
class Aws::CloudSearch::DescribeRankExpressions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeRankExpressionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressionsResult');  
}
class Aws::CloudSearch::DescribeServiceAccessPolicies {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::DescribeServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPoliciesResult');  
}
class Aws::CloudSearch::DescribeStemmingOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptionsResult');  
}
class Aws::CloudSearch::DescribeStopwordOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptionsResult');  
}
class Aws::CloudSearch::DescribeSynonymOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptions');
  has _returns => (isa => 'Aws::CloudSearch::DescribeSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptionsResult');  
}
class Aws::CloudSearch::IndexDocuments {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  has _returns => (isa => 'Aws::CloudSearch::IndexDocumentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');  
}
class Aws::CloudSearch::UpdateDefaultSearchField {
  has DefaultSearchField => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchField');
  has _returns => (isa => 'Aws::CloudSearch::UpdateDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchFieldResult');  
}
class Aws::CloudSearch::UpdateServiceAccessPolicies {
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  has _returns => (isa => 'Aws::CloudSearch::UpdateServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');  
}
class Aws::CloudSearch::UpdateStemmingOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stems => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptionsResult');  
}
class Aws::CloudSearch::UpdateStopwordOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stopwords => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptionsResult');  
}
class Aws::CloudSearch::UpdateSynonymOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Synonyms => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptions');
  has _returns => (isa => 'Aws::CloudSearch::UpdateSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptionsResult');  
}

class Aws::CloudSearch::CreateDomainResult with AWS::API::ResultParser {
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
class Aws::CloudSearch::DefineIndexFieldResult with AWS::API::ResultParser {
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
class Aws::CloudSearch::DefineRankExpressionResult with AWS::API::ResultParser {
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::RankExpressionStatus', required => 1);

}
class Aws::CloudSearch::DeleteDomainResult with AWS::API::ResultParser {
  has DomainStatus => (is => 'ro', isa => 'Aws::CloudSearch::DomainStatus');

}
class Aws::CloudSearch::DeleteIndexFieldResult with AWS::API::ResultParser {
  has IndexField => (is => 'ro', isa => 'Aws::CloudSearch::IndexFieldStatus', required => 1);

}
class Aws::CloudSearch::DeleteRankExpressionResult with AWS::API::ResultParser {
  has RankExpression => (is => 'ro', isa => 'Aws::CloudSearch::RankExpressionStatus', required => 1);

}
class Aws::CloudSearch::DescribeDefaultSearchFieldResult with AWS::API::ResultParser {
  has DefaultSearchField => (is => 'ro', isa => 'Aws::CloudSearch::DefaultSearchFieldStatus', required => 1);

}
class Aws::CloudSearch::DescribeDomainsResult with AWS::API::ResultParser {
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::DomainStatus]', required => 1);

}
class Aws::CloudSearch::DescribeIndexFieldsResult with AWS::API::ResultParser {
  has IndexFields => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::IndexFieldStatus]', required => 1);

}
class Aws::CloudSearch::DescribeRankExpressionsResult with AWS::API::ResultParser {
  has RankExpressions => (is => 'ro', isa => 'ArrayRef[Aws::CloudSearch::RankExpressionStatus]', required => 1);

}
class Aws::CloudSearch::DescribeServiceAccessPoliciesResult with AWS::API::ResultParser {
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
class Aws::CloudSearch::DescribeStemmingOptionsResult with AWS::API::ResultParser {
  has Stems => (is => 'ro', isa => 'Aws::CloudSearch::StemmingOptionsStatus', required => 1);

}
class Aws::CloudSearch::DescribeStopwordOptionsResult with AWS::API::ResultParser {
  has Stopwords => (is => 'ro', isa => 'Aws::CloudSearch::StopwordOptionsStatus', required => 1);

}
class Aws::CloudSearch::DescribeSynonymOptionsResult with AWS::API::ResultParser {
  has Synonyms => (is => 'ro', isa => 'Aws::CloudSearch::SynonymOptionsStatus', required => 1);

}
class Aws::CloudSearch::IndexDocumentsResult with AWS::API::ResultParser {
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

}
class Aws::CloudSearch::UpdateDefaultSearchFieldResult with AWS::API::ResultParser {
  has DefaultSearchField => (is => 'ro', isa => 'Aws::CloudSearch::DefaultSearchFieldStatus', required => 1);

}
class Aws::CloudSearch::UpdateServiceAccessPoliciesResult with AWS::API::ResultParser {
  has AccessPolicies => (is => 'ro', isa => 'Aws::CloudSearch::AccessPoliciesStatus', required => 1);

}
class Aws::CloudSearch::UpdateStemmingOptionsResult with AWS::API::ResultParser {
  has Stems => (is => 'ro', isa => 'Aws::CloudSearch::StemmingOptionsStatus', required => 1);

}
class Aws::CloudSearch::UpdateStopwordOptionsResult with AWS::API::ResultParser {
  has Stopwords => (is => 'ro', isa => 'Aws::CloudSearch::StopwordOptionsStatus', required => 1);

}
class Aws::CloudSearch::UpdateSynonymOptionsResult with AWS::API::ResultParser {
  has Synonyms => (is => 'ro', isa => 'Aws::CloudSearch::SynonymOptionsStatus', required => 1);

}

class Aws::CloudSearch with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2011-02-01');
  
  method CreateDomain (%args) {
    my $call = Aws::CloudSearch::CreateDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::CreateDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DefineIndexField (%args) {
    my $call = Aws::CloudSearch::DefineIndexField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DefineRankExpression (%args) {
    my $call = Aws::CloudSearch::DefineRankExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DefineRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteDomain (%args) {
    my $call = Aws::CloudSearch::DeleteDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteIndexField (%args) {
    my $call = Aws::CloudSearch::DeleteIndexField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DeleteRankExpression (%args) {
    my $call = Aws::CloudSearch::DeleteRankExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DeleteRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDefaultSearchField (%args) {
    my $call = Aws::CloudSearch::DescribeDefaultSearchField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeDomains (%args) {
    my $call = Aws::CloudSearch::DescribeDomains->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeIndexFields (%args) {
    my $call = Aws::CloudSearch::DescribeIndexFields->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeIndexFieldsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeRankExpressions (%args) {
    my $call = Aws::CloudSearch::DescribeRankExpressions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeRankExpressionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeServiceAccessPolicies (%args) {
    my $call = Aws::CloudSearch::DescribeServiceAccessPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStemmingOptions (%args) {
    my $call = Aws::CloudSearch::DescribeStemmingOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeStopwordOptions (%args) {
    my $call = Aws::CloudSearch::DescribeStopwordOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DescribeSynonymOptions (%args) {
    my $call = Aws::CloudSearch::DescribeSynonymOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::DescribeSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method IndexDocuments (%args) {
    my $call = Aws::CloudSearch::IndexDocuments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::IndexDocumentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateDefaultSearchField (%args) {
    my $call = Aws::CloudSearch::UpdateDefaultSearchField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateServiceAccessPolicies (%args) {
    my $call = Aws::CloudSearch::UpdateServiceAccessPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateStemmingOptions (%args) {
    my $call = Aws::CloudSearch::UpdateStemmingOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateStopwordOptions (%args) {
    my $call = Aws::CloudSearch::UpdateStopwordOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method UpdateSynonymOptions (%args) {
    my $call = Aws::CloudSearch::UpdateSynonymOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::CloudSearch::UpdateSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
