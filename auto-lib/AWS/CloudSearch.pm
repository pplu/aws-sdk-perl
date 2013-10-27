use MooseX::Declare;
use AWS::API;
use Moose::Util::TypeConstraints;

enum 'AWS::CloudSearch::SourceDataFunction', [qw(Copy TrimTitle Map)];
enum 'AWS::CloudSearch::IndexFieldType', [qw(uint literal text)];
enum 'AWS::CloudSearch::OptionState', [qw(RequiresIndexDocuments Processing Active)];

class AWS::CloudSearch::AccessPoliciesStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::DefaultSearchFieldStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::DomainStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Created => (is => 'ro', isa => 'Str');
  has Deleted => (is => 'ro', isa => 'Str');
  has DocService => (is => 'ro', isa => 'AWS::CloudSearch::ServiceEndpoint');
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has NumSearchableDocs => (is => 'ro', isa => 'Int');
  has Processing => (is => 'ro', isa => 'Str');
  has RequiresIndexDocuments => (is => 'ro', isa => 'Str', required => 1);
  has SearchInstanceCount => (is => 'ro', isa => 'Int');
  has SearchInstanceType => (is => 'ro', isa => 'Str');
  has SearchPartitionCount => (is => 'ro', isa => 'Int');
  has SearchService => (is => 'ro', isa => 'AWS::CloudSearch::ServiceEndpoint');
}

class AWS::CloudSearch::IndexField with (AWS::API::ResultParser, AWS::API::ToParams) {
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldType => (is => 'ro', isa => 'AWS::CloudSearch::IndexFieldType', required => 1);
  has LiteralOptions => (is => 'ro', isa => 'AWS::CloudSearch::LiteralOptions');
  has SourceAttributes => (is => 'ro', isa => 'ArrayRef[AWS::CloudSearch::SourceAttribute]');
  has TextOptions => (is => 'ro', isa => 'AWS::CloudSearch::TextOptions');
  has UIntOptions => (is => 'ro', isa => 'AWS::CloudSearch::UIntOptions');
}

class AWS::CloudSearch::IndexFieldStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'AWS::CloudSearch::IndexField', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::LiteralOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Str');
  has ResultEnabled => (is => 'ro', isa => 'Str');
  has SearchEnabled => (is => 'ro', isa => 'Str');
}

class AWS::CloudSearch::NamedRankExpression with (AWS::API::ResultParser, AWS::API::ToParams) {
  has RankExpression => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::CloudSearch::OptionStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has CreationDate => (is => 'ro', isa => 'Str', required => 1);
  has PendingDeletion => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'AWS::CloudSearch::OptionState', required => 1);
  has UpdateDate => (is => 'ro', isa => 'Str', required => 1);
  has UpdateVersion => (is => 'ro', isa => 'Int');
}

class AWS::CloudSearch::RankExpressionStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'AWS::CloudSearch::NamedRankExpression', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::ServiceEndpoint with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str');
  has Endpoint => (is => 'ro', isa => 'Str');
}

class AWS::CloudSearch::SourceAttribute with (AWS::API::ResultParser, AWS::API::ToParams) {
  has SourceDataCopy => (is => 'ro', isa => 'AWS::CloudSearch::SourceData');
  has SourceDataFunction => (is => 'ro', isa => 'AWS::CloudSearch::SourceDataFunction', required => 1);
  has SourceDataMap => (is => 'ro', isa => 'AWS::CloudSearch::SourceDataMap');
  has SourceDataTrimTitle => (is => 'ro', isa => 'AWS::CloudSearch::SourceDataTrimTitle');
}

class AWS::CloudSearch::StemmingOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::StopwordOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::SynonymOptionsStatus with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Options => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'AWS::CloudSearch::OptionStatus', required => 1);
}

class AWS::CloudSearch::TextOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Str');
  has FacetEnabled => (is => 'ro', isa => 'Str');
  has ResultEnabled => (is => 'ro', isa => 'Str');
  has TextProcessor => (is => 'ro', isa => 'Str');
}

class AWS::CloudSearch::UIntOptions with (AWS::API::ResultParser, AWS::API::ToParams) {
  has DefaultValue => (is => 'ro', isa => 'Int');
}

class AWS::CloudSearch::CreateDomain {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  has _returns => (isa => 'AWS::CloudSearch::CreateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');
}
class AWS::CloudSearch::DefineIndexField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexField => (is => 'ro', isa => 'AWS::CloudSearch::IndexField', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineIndexField');
  has _returns => (isa => 'AWS::CloudSearch::DefineIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineIndexFieldResult');
}
class AWS::CloudSearch::DefineRankExpression {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankExpression => (is => 'ro', isa => 'AWS::CloudSearch::NamedRankExpression', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DefineRankExpression');
  has _returns => (isa => 'AWS::CloudSearch::DefineRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DefineRankExpressionResult');
}
class AWS::CloudSearch::DeleteDomain {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  has _returns => (isa => 'AWS::CloudSearch::DeleteDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');
}
class AWS::CloudSearch::DeleteIndexField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has IndexFieldName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIndexField');
  has _returns => (isa => 'AWS::CloudSearch::DeleteIndexFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteIndexFieldResult');
}
class AWS::CloudSearch::DeleteRankExpression {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRankExpression');
  has _returns => (isa => 'AWS::CloudSearch::DeleteRankExpressionResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRankExpressionResult');
}
class AWS::CloudSearch::DescribeDefaultSearchField {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchField');
  has _returns => (isa => 'AWS::CloudSearch::DescribeDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDefaultSearchFieldResult');
}
class AWS::CloudSearch::DescribeDomains {
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  has _returns => (isa => 'AWS::CloudSearch::DescribeDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');
}
class AWS::CloudSearch::DescribeIndexFields {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIndexFields');
  has _returns => (isa => 'AWS::CloudSearch::DescribeIndexFieldsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIndexFieldsResult');
}
class AWS::CloudSearch::DescribeRankExpressions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RankNames => (is => 'ro', isa => 'ArrayRef[Str]');

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressions');
  has _returns => (isa => 'AWS::CloudSearch::DescribeRankExpressionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRankExpressionsResult');
}
class AWS::CloudSearch::DescribeServiceAccessPolicies {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPolicies');
  has _returns => (isa => 'AWS::CloudSearch::DescribeServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeServiceAccessPoliciesResult');
}
class AWS::CloudSearch::DescribeStemmingOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptions');
  has _returns => (isa => 'AWS::CloudSearch::DescribeStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStemmingOptionsResult');
}
class AWS::CloudSearch::DescribeStopwordOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptions');
  has _returns => (isa => 'AWS::CloudSearch::DescribeStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeStopwordOptionsResult');
}
class AWS::CloudSearch::DescribeSynonymOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptions');
  has _returns => (isa => 'AWS::CloudSearch::DescribeSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeSynonymOptionsResult');
}
class AWS::CloudSearch::IndexDocuments {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'IndexDocuments');
  has _returns => (isa => 'AWS::CloudSearch::IndexDocumentsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'IndexDocumentsResult');
}
class AWS::CloudSearch::UpdateDefaultSearchField {
  has DefaultSearchField => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchField');
  has _returns => (isa => 'AWS::CloudSearch::UpdateDefaultSearchFieldResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateDefaultSearchFieldResult');
}
class AWS::CloudSearch::UpdateServiceAccessPolicies {
  has AccessPolicies => (is => 'ro', isa => 'Str', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPolicies');
  has _returns => (isa => 'AWS::CloudSearch::UpdateServiceAccessPoliciesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateServiceAccessPoliciesResult');
}
class AWS::CloudSearch::UpdateStemmingOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stems => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptions');
  has _returns => (isa => 'AWS::CloudSearch::UpdateStemmingOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStemmingOptionsResult');
}
class AWS::CloudSearch::UpdateStopwordOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Stopwords => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptions');
  has _returns => (isa => 'AWS::CloudSearch::UpdateStopwordOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateStopwordOptionsResult');
}
class AWS::CloudSearch::UpdateSynonymOptions {
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Synonyms => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptions');
  has _returns => (isa => 'AWS::CloudSearch::UpdateSynonymOptionsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateSynonymOptionsResult');
}
class AWS::CloudSearch::CreateDomainResult with AWS::API::ResultParser {
  has DomainStatus => (is => 'ro', isa => 'AWS::CloudSearch::DomainStatus');
}
class AWS::CloudSearch::DefineIndexFieldResult with AWS::API::ResultParser {
  has IndexField => (is => 'ro', isa => 'AWS::CloudSearch::IndexFieldStatus', required => 1);
}
class AWS::CloudSearch::DefineRankExpressionResult with AWS::API::ResultParser {
  has RankExpression => (is => 'ro', isa => 'AWS::CloudSearch::RankExpressionStatus', required => 1);
}
class AWS::CloudSearch::DeleteDomainResult with AWS::API::ResultParser {
  has DomainStatus => (is => 'ro', isa => 'AWS::CloudSearch::DomainStatus');
}
class AWS::CloudSearch::DeleteIndexFieldResult with AWS::API::ResultParser {
  has IndexField => (is => 'ro', isa => 'AWS::CloudSearch::IndexFieldStatus', required => 1);
}
class AWS::CloudSearch::DeleteRankExpressionResult with AWS::API::ResultParser {
  has RankExpression => (is => 'ro', isa => 'AWS::CloudSearch::RankExpressionStatus', required => 1);
}
class AWS::CloudSearch::DescribeDefaultSearchFieldResult with AWS::API::ResultParser {
  has DefaultSearchField => (is => 'ro', isa => 'AWS::CloudSearch::DefaultSearchFieldStatus', required => 1);
}
class AWS::CloudSearch::DescribeDomainsResult with AWS::API::ResultParser {
  has DomainStatusList => (is => 'ro', isa => 'ArrayRef[AWS::CloudSearch::DomainStatus]', required => 1);
}
class AWS::CloudSearch::DescribeIndexFieldsResult with AWS::API::ResultParser {
  has IndexFields => (is => 'ro', isa => 'ArrayRef[AWS::CloudSearch::IndexFieldStatus]', required => 1);
}
class AWS::CloudSearch::DescribeRankExpressionsResult with AWS::API::ResultParser {
  has RankExpressions => (is => 'ro', isa => 'ArrayRef[AWS::CloudSearch::RankExpressionStatus]', required => 1);
}
class AWS::CloudSearch::DescribeServiceAccessPoliciesResult with AWS::API::ResultParser {
  has AccessPolicies => (is => 'ro', isa => 'AWS::CloudSearch::AccessPoliciesStatus', required => 1);
}
class AWS::CloudSearch::DescribeStemmingOptionsResult with AWS::API::ResultParser {
  has Stems => (is => 'ro', isa => 'AWS::CloudSearch::StemmingOptionsStatus', required => 1);
}
class AWS::CloudSearch::DescribeStopwordOptionsResult with AWS::API::ResultParser {
  has Stopwords => (is => 'ro', isa => 'AWS::CloudSearch::StopwordOptionsStatus', required => 1);
}
class AWS::CloudSearch::DescribeSynonymOptionsResult with AWS::API::ResultParser {
  has Synonyms => (is => 'ro', isa => 'AWS::CloudSearch::SynonymOptionsStatus', required => 1);
}
class AWS::CloudSearch::IndexDocumentsResult with AWS::API::ResultParser {
  has FieldNames => (is => 'ro', isa => 'ArrayRef[Str]');
}
class AWS::CloudSearch::UpdateDefaultSearchFieldResult with AWS::API::ResultParser {
  has DefaultSearchField => (is => 'ro', isa => 'AWS::CloudSearch::DefaultSearchFieldStatus', required => 1);
}
class AWS::CloudSearch::UpdateServiceAccessPoliciesResult with AWS::API::ResultParser {
  has AccessPolicies => (is => 'ro', isa => 'AWS::CloudSearch::AccessPoliciesStatus', required => 1);
}
class AWS::CloudSearch::UpdateStemmingOptionsResult with AWS::API::ResultParser {
  has Stems => (is => 'ro', isa => 'AWS::CloudSearch::StemmingOptionsStatus', required => 1);
}
class AWS::CloudSearch::UpdateStopwordOptionsResult with AWS::API::ResultParser {
  has Stopwords => (is => 'ro', isa => 'AWS::CloudSearch::StopwordOptionsStatus', required => 1);
}
class AWS::CloudSearch::UpdateSynonymOptionsResult with AWS::API::ResultParser {
  has Synonyms => (is => 'ro', isa => 'AWS::CloudSearch::SynonymOptionsStatus', required => 1);
}
class AWS::CloudSearch with (Net::AWS::Caller, AWS::API::RegionalEndpointCaller, Net::AWS::V2Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearch');
  has version => (is => 'ro', isa => 'Str', default => '2011-02-01');

  method CreateDomain (%args) {
    my $call = AWS::CloudSearch::CreateDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::CreateDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DefineIndexField (%args) {
    my $call = AWS::CloudSearch::DefineIndexField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DefineIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DefineRankExpression (%args) {
    my $call = AWS::CloudSearch::DefineRankExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DefineRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteDomain (%args) {
    my $call = AWS::CloudSearch::DeleteDomain->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DeleteDomainResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteIndexField (%args) {
    my $call = AWS::CloudSearch::DeleteIndexField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DeleteIndexFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DeleteRankExpression (%args) {
    my $call = AWS::CloudSearch::DeleteRankExpression->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DeleteRankExpressionResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDefaultSearchField (%args) {
    my $call = AWS::CloudSearch::DescribeDefaultSearchField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeDomains (%args) {
    my $call = AWS::CloudSearch::DescribeDomains->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeIndexFields (%args) {
    my $call = AWS::CloudSearch::DescribeIndexFields->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeIndexFieldsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeRankExpressions (%args) {
    my $call = AWS::CloudSearch::DescribeRankExpressions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeRankExpressionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeServiceAccessPolicies (%args) {
    my $call = AWS::CloudSearch::DescribeServiceAccessPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStemmingOptions (%args) {
    my $call = AWS::CloudSearch::DescribeStemmingOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeStopwordOptions (%args) {
    my $call = AWS::CloudSearch::DescribeStopwordOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DescribeSynonymOptions (%args) {
    my $call = AWS::CloudSearch::DescribeSynonymOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::DescribeSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method IndexDocuments (%args) {
    my $call = AWS::CloudSearch::IndexDocuments->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::IndexDocumentsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateDefaultSearchField (%args) {
    my $call = AWS::CloudSearch::UpdateDefaultSearchField->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::UpdateDefaultSearchFieldResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateServiceAccessPolicies (%args) {
    my $call = AWS::CloudSearch::UpdateServiceAccessPolicies->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::UpdateServiceAccessPoliciesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateStemmingOptions (%args) {
    my $call = AWS::CloudSearch::UpdateStemmingOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::UpdateStemmingOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateStopwordOptions (%args) {
    my $call = AWS::CloudSearch::UpdateStopwordOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::UpdateStopwordOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method UpdateSynonymOptions (%args) {
    my $call = AWS::CloudSearch::UpdateSynonymOptions->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::CloudSearch::UpdateSynonymOptionsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

