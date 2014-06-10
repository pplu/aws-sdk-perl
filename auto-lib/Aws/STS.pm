
use AWS::API;


package Aws::STS::AssumedRoleUser {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumedRoleId => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::STS::Credentials {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
}

package Aws::STS::FederatedUser {
  use Moose;
  with ('AWS::API::ResultParser', 'AWS::API::ToParams');
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FederatedUserId => (is => 'ro', isa => 'Str', required => 1);
}



package Aws::STS::AssumeRole {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  has _returns => (isa => 'Aws::STS::AssumeRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');  
}
package Aws::STS::AssumeRoleWithSAML {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAML');
  has _returns => (isa => 'Aws::STS::AssumeRoleWithSAMLResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAMLResult');  
}
package Aws::STS::AssumeRoleWithWebIdentity {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has ProviderId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has WebIdentityToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentity');
  has _returns => (isa => 'Aws::STS::AssumeRoleWithWebIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentityResult');  
}
package Aws::STS::DecodeAuthorizationMessage {
  use Moose;
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  has _returns => (isa => 'Aws::STS::DecodeAuthorizationMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');  
}
package Aws::STS::GetFederationToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  has _returns => (isa => 'Aws::STS::GetFederationTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');  
}
package Aws::STS::GetSessionToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionToken');
  has _returns => (isa => 'Aws::STS::GetSessionTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSessionTokenResult');  
}

package Aws::STS::AssumeRoleResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
package Aws::STS::AssumeRoleWithSAMLResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Audience => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has Issuer => (is => 'ro', isa => 'Str');
  has NameQualifier => (is => 'ro', isa => 'Str');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has Subject => (is => 'ro', isa => 'Str');
  has SubjectType => (is => 'ro', isa => 'Str');

}
package Aws::STS::AssumeRoleWithWebIdentityResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Audience => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has Provider => (is => 'ro', isa => 'Str');
  has SubjectFromWebIdentityToken => (is => 'ro', isa => 'Str');

}
package Aws::STS::DecodeAuthorizationMessageResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has DecodedMessage => (is => 'ro', isa => 'Str');

}
package Aws::STS::GetFederationTokenResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'Aws::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
package Aws::STS::GetSessionTokenResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');

}

package Aws::STS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sts');
  has version => (is => 'ro', isa => 'Str', default => '2011-06-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');
  with ('Net::AWS::Caller', 'AWS::API::SingleEndpointCaller', 'Net::AWS::V4Signature', 'Net::AWS::QueryCaller', 'Net::AWS::XMLResponse');
  
  sub AssumeRole {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::AssumeRole', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub AssumeRoleWithSAML {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::AssumeRoleWithSAML', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleWithSAMLResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub AssumeRoleWithWebIdentity {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::AssumeRoleWithWebIdentity', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleWithWebIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub DecodeAuthorizationMessage {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::DecodeAuthorizationMessage', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::DecodeAuthorizationMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetFederationToken {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::GetFederationToken', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::GetFederationTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  sub GetSessionToken {
    my $self = shift;
    my $call = new_with_coercions('Aws::STS::GetSessionToken', @_);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::GetSessionTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
