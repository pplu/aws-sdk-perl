
use MooseX::Declare;
use AWS::API;


class Aws::STS::AssumedRoleUser with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumedRoleId => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::STS::Credentials with (AWS::API::ResultParser, AWS::API::ToParams) {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
}

class Aws::STS::FederatedUser with (AWS::API::ResultParser, AWS::API::ToParams) {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FederatedUserId => (is => 'ro', isa => 'Str', required => 1);
}



class Aws::STS::AssumeRole {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  has _returns => (isa => 'Aws::STS::AssumeRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');  
}
class Aws::STS::AssumeRoleWithSAML {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAML');
  has _returns => (isa => 'Aws::STS::AssumeRoleWithSAMLResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAMLResult');  
}
class Aws::STS::AssumeRoleWithWebIdentity {
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
class Aws::STS::DecodeAuthorizationMessage {
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  has _returns => (isa => 'Aws::STS::DecodeAuthorizationMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');  
}
class Aws::STS::GetFederationToken {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  has _returns => (isa => 'Aws::STS::GetFederationTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');  
}
class Aws::STS::GetSessionToken {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionToken');
  has _returns => (isa => 'Aws::STS::GetSessionTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSessionTokenResult');  
}

class Aws::STS::AssumeRoleResult with AWS::API::ResultParser {
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
class Aws::STS::AssumeRoleWithSAMLResult with AWS::API::ResultParser {
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
class Aws::STS::AssumeRoleWithWebIdentityResult with AWS::API::ResultParser {
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has SubjectFromWebIdentityToken => (is => 'ro', isa => 'Str');

}
class Aws::STS::DecodeAuthorizationMessageResult with AWS::API::ResultParser {
  has DecodedMessage => (is => 'ro', isa => 'Str');

}
class Aws::STS::GetFederationTokenResult with AWS::API::ResultParser {
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'Aws::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');

}
class Aws::STS::GetSessionTokenResult with AWS::API::ResultParser {
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');

}

class Aws::STS with (Net::AWS::Caller, AWS::API::SingleEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller, Net::AWS::XMLResponse) {
  has service => (is => 'ro', isa => 'Str', default => 'sts');
  has version => (is => 'ro', isa => 'Str', default => '2011-06-15');
  
  method AssumeRole (%args) {
    my $call = Aws::STS::AssumeRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AssumeRoleWithSAML (%args) {
    my $call = Aws::STS::AssumeRoleWithSAML->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleWithSAMLResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method AssumeRoleWithWebIdentity (%args) {
    my $call = Aws::STS::AssumeRoleWithWebIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::AssumeRoleWithWebIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method DecodeAuthorizationMessage (%args) {
    my $call = Aws::STS::DecodeAuthorizationMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::DecodeAuthorizationMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetFederationToken (%args) {
    my $call = Aws::STS::GetFederationToken->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::GetFederationTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
  method GetSessionToken (%args) {
    my $call = Aws::STS::GetSessionToken->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = Aws::STS::GetSessionTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }
}
