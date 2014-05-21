
use AWS::API;


package Aws::SDB::Attribute {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has AlternateValueEncoding => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::DeletableItem {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}

package Aws::SDB::Item {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::ReplaceableAttribute {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Replace => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::ReplaceableItem {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableAttribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}

package Aws::SDB::UpdateCondition {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Exists => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::SDB::BatchDeleteAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::DeletableItem]', traits => ['NameInRequest'], request_name => 'Item' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteAttributes');
  has _returns => (isa => 'Aws::SDB::BatchDeleteAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchDeleteAttributesResult');  
}
package Aws::SDB::BatchPutAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableItem]', traits => ['NameInRequest'], request_name => 'Item' , required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutAttributes');
  has _returns => (isa => 'Aws::SDB::BatchPutAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'BatchPutAttributesResult');  
}
package Aws::SDB::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  has _returns => (isa => 'Aws::SDB::CreateDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');  
}
package Aws::SDB::DeleteAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', traits => ['NameInRequest'], request_name => 'Attribute' );
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Aws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributes');
  has _returns => (isa => 'Aws::SDB::DeleteAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteAttributesResult');  
}
package Aws::SDB::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  has _returns => (isa => 'Aws::SDB::DeleteDomainResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteDomainResult');  
}
package Aws::SDB::DomainMetadata {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DomainMetadata');
  has _returns => (isa => 'Aws::SDB::DomainMetadataResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DomainMetadataResult');  
}
package Aws::SDB::GetAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttributes');
  has _returns => (isa => 'Aws::SDB::GetAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetAttributesResult');  
}
package Aws::SDB::ListDomains {
  use Moose;
  has MaxNumberOfDomains => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  has _returns => (isa => 'Aws::SDB::ListDomainsResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');  
}
package Aws::SDB::PutAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableAttribute]', traits => ['NameInRequest'], request_name => 'Attribute' , required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Aws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'PutAttributes');
  has _returns => (isa => 'Aws::SDB::PutAttributesResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'PutAttributesResult');  
}
package Aws::SDB::Select {
  use Moose;
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has SelectExpression => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'Select');
  has _returns => (isa => 'Aws::SDB::SelectResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'SelectResult');  
}

package Aws::SDB::DomainMetadataResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AttributeNameCount => (is => 'ro', isa => 'Int');
  has AttributeNamesSizeBytes => (is => 'ro', isa => 'Num');
  has AttributeValueCount => (is => 'ro', isa => 'Int');
  has AttributeValuesSizeBytes => (is => 'ro', isa => 'Num');
  has ItemCount => (is => 'ro', isa => 'Int');
  has ItemNamesSizeBytes => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Int');

}
package Aws::SDB::GetAttributesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', traits => ['Unwrapped'], xmlname => 'Attribute');

}
package Aws::SDB::ListDomainsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['Unwrapped'], xmlname => 'DomainName');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::SDB::SelectResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Item]', traits => ['Unwrapped'], xmlname => 'Item');
  has NextToken => (is => 'ro', isa => 'Str');

}

package Aws::SDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sdb');
  has version => (is => 'ro', isa => 'Str', default => '2009-04-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');
  with ('Net::AWS::Caller', 'AWS::API::RegionalEndpointCaller', 'Net::AWS::V2Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub BatchDeleteAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::BatchDeleteAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub BatchPutAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::BatchPutAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub CreateDomain {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::CreateDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::DeleteAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DeleteDomain {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::DeleteDomain', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub DomainMetadata {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::DomainMetadata', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SDB::DomainMetadataResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::GetAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SDB::GetAttributesResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub ListDomains {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::ListDomains', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SDB::ListDomainsResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub PutAttributes {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::PutAttributes', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    return 1
  }
  sub Select {
    my $self = shift;
    my $call = new_with_coercions('Aws::SDB::Select', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::SDB::SelectResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
