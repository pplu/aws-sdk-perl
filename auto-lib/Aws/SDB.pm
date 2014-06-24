
use AWS::API;


package Aws::SDB::Attribute {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has AlternateValueEncoding => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::DeletableItem {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]');
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}

package Aws::SDB::Item {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlternateNameEncoding => (is => 'ro', isa => 'Str');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::ReplaceableAttribute {
  use Moose;
  with ('AWS::API::ResultParser');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Replace => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::SDB::ReplaceableItem {
  use Moose;
  with ('AWS::API::ResultParser');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableAttribute]', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ItemName', required => 1);
}

package Aws::SDB::UpdateCondition {
  use Moose;
  with ('AWS::API::ResultParser');
  has Exists => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
}



package Aws::SDB::BatchDeleteAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::DeletableItem]', traits => ['NameInRequest'], request_name => 'Item' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::BatchPutAttributes {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableItem]', traits => ['NameInRequest'], request_name => 'Item' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchPutAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::DeleteAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::Attribute]', traits => ['NameInRequest'], request_name => 'Attribute' );
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Aws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::DeleteDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDomain');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::DomainMetadata {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DomainMetadata');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::DomainMetadataResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DomainMetadataResult');
}
package Aws::SDB::GetAttributes {
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'AttributeName' );
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::GetAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetAttributesResult');
}
package Aws::SDB::ListDomains {
  use Moose;
  has MaxNumberOfDomains => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');
}
package Aws::SDB::PutAttributes {
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Aws::SDB::ReplaceableAttribute]', traits => ['NameInRequest'], request_name => 'Attribute' , required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has Expected => (is => 'ro', isa => 'Aws::SDB::UpdateCondition');
  has ItemName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAttributes');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::SDB::Select {
  use Moose;
  has ConsistentRead => (is => 'ro', isa => 'Bool');
  has NextToken => (is => 'ro', isa => 'Str');
  has SelectExpression => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Select');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::SDB::SelectResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SelectResult');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V2Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub BatchDeleteAttributes {
    my $self = shift;
    return $self->do_call('Aws::SDB::BatchDeleteAttributes', @_);
  }
  sub BatchPutAttributes {
    my $self = shift;
    return $self->do_call('Aws::SDB::BatchPutAttributes', @_);
  }
  sub CreateDomain {
    my $self = shift;
    return $self->do_call('Aws::SDB::CreateDomain', @_);
  }
  sub DeleteAttributes {
    my $self = shift;
    return $self->do_call('Aws::SDB::DeleteAttributes', @_);
  }
  sub DeleteDomain {
    my $self = shift;
    return $self->do_call('Aws::SDB::DeleteDomain', @_);
  }
  sub DomainMetadata {
    my $self = shift;
    return $self->do_call('Aws::SDB::DomainMetadata', @_);
  }
  sub GetAttributes {
    my $self = shift;
    return $self->do_call('Aws::SDB::GetAttributes', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Aws::SDB::ListDomains', @_);
  }
  sub PutAttributes {
    my $self = shift;
    return $self->do_call('Aws::SDB::PutAttributes', @_);
  }
  sub Select {
    my $self = shift;
    return $self->do_call('Aws::SDB::Select', @_);
  }
}
1;
