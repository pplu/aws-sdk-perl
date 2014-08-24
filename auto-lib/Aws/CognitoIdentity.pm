
use AWS::API;


package Aws::CognitoIdentity::IdentityDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IdentityId => (is => 'ro', isa => 'Str');
  has Logins => (is => 'ro', isa => 'ArrayRef[Str]');
}

package Aws::CognitoIdentity::IdentityPoolShortDescription {
  use Moose;
  with ('AWS::API::ResultParser');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has IdentityPoolName => (is => 'ro', isa => 'Str');
}

package Aws::CognitoIdentity::IdentityProviders {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}

package Aws::CognitoIdentity::LoginsMap {
  use Moose;
  with 'AWS::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}



package Aws::CognitoIdentity::CreateIdentityPool {
  use Moose;
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::CreateIdentityPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::DeleteIdentityPool {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::DescribeIdentityPool {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::DescribeIdentityPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::GetId {
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Aws::CognitoIdentity::LoginsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetId');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::GetIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::GetOpenIdToken {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Aws::CognitoIdentity::LoginsMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOpenIdToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::GetOpenIdTokenResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::ListIdentities {
  use Moose;
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::ListIdentitiesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::ListIdentityPools {
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIdentityPools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::ListIdentityPoolsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::UnlinkIdentity {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has Logins => (is => 'ro', isa => 'Aws::CognitoIdentity::LoginsMap', required => 1);
  has LoginsToRemove => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnlinkIdentity');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
package Aws::CognitoIdentity::UpdateIdentityPool {
  use Moose;
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIdentityPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::CognitoIdentity::UpdateIdentityPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}

package Aws::CognitoIdentity::CreateIdentityPoolResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

}
package Aws::CognitoIdentity::DescribeIdentityPoolResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

}
package Aws::CognitoIdentity::GetIdResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');

}
package Aws::CognitoIdentity::GetOpenIdTokenResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityId => (is => 'ro', isa => 'Str');
  has Token => (is => 'ro', isa => 'Str');

}
package Aws::CognitoIdentity::ListIdentitiesResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Identities => (is => 'ro', isa => 'ArrayRef[Aws::CognitoIdentity::IdentityDescription]');
  has IdentityPoolId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::CognitoIdentity::ListIdentityPoolsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has IdentityPools => (is => 'ro', isa => 'ArrayRef[Aws::CognitoIdentity::IdentityPoolShortDescription]');
  has NextToken => (is => 'ro', isa => 'Str');

}
package Aws::CognitoIdentity::UpdateIdentityPoolResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AllowUnauthenticatedIdentities => (is => 'ro', isa => 'Bool', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolName => (is => 'ro', isa => 'Str', required => 1);
  has SupportedLoginProviders => (is => 'ro', isa => 'Aws::CognitoIdentity::IdentityProviders');

}

package Aws::CognitoIdentity {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cognito-identity');
  has version => (is => 'ro', isa => 'Str', default => '2014-06-30');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'AWSCognitoIdentityService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::JsonResponse');

  
  sub CreateIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::CreateIdentityPool', @_);
  }
  sub DeleteIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::DeleteIdentityPool', @_);
  }
  sub DescribeIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::DescribeIdentityPool', @_);
  }
  sub GetId {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::GetId', @_);
  }
  sub GetOpenIdToken {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::GetOpenIdToken', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::ListIdentities', @_);
  }
  sub ListIdentityPools {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::ListIdentityPools', @_);
  }
  sub UnlinkIdentity {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::UnlinkIdentity', @_);
  }
  sub UpdateIdentityPool {
    my $self = shift;
    return $self->do_call('Aws::CognitoIdentity::UpdateIdentityPool', @_);
  }
}
1;
