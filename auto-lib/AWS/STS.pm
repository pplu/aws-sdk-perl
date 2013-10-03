use MooseX::Declare;
use AWS::API;
class AWS::STS::AssumedRoleUser with AWS::API::ResultParser {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumedRoleId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::STS::Credentials with AWS::API::ResultParser {
  has AccessKeyId => (is => 'ro', isa => 'Str', required => 1);
  has Expiration => (is => 'ro', isa => 'Str', required => 1);
  has SecretAccessKey => (is => 'ro', isa => 'Str', required => 1);
  has SessionToken => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::STS::FederatedUser with AWS::API::ResultParser {
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FederatedUserId => (is => 'ro', isa => 'Str', required => 1);
}

class AWS::STS::AssumeRole {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  has _returns => (isa => 'AWS::STS::AssumeRoleResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');
}
class AWS::STS::AssumeRoleWithWebIdentity {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has ProviderId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has WebIdentityToken => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentity');
  has _returns => (isa => 'AWS::STS::AssumeRoleWithWebIdentityResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentityResult');
}
class AWS::STS::DecodeAuthorizationMessage {
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  has _returns => (isa => 'AWS::STS::DecodeAuthorizationMessageResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');
}
class AWS::STS::GetFederationToken {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  has _returns => (isa => 'AWS::STS::GetFederationTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');
}
class AWS::STS::GetSessionToken {
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionToken');
  has _returns => (isa => 'AWS::STS::GetSessionTokenResult', is => 'ro');
  has _result_key => (isa => 'Str', is => 'ro', default => 'GetSessionTokenResult');
}
class AWS::STS::AssumeRoleResult with AWS::API::ResultParser {
  has AssumedRoleUser => (is => 'ro', isa => 'AWS::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'AWS::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
}
class AWS::STS::AssumeRoleWithWebIdentityResult with AWS::API::ResultParser {
  has AssumedRoleUser => (is => 'ro', isa => 'AWS::STS::AssumedRoleUser');
  has Credentials => (is => 'ro', isa => 'AWS::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has SubjectFromWebIdentityToken => (is => 'ro', isa => 'Str');
}
class AWS::STS::DecodeAuthorizationMessageResult with AWS::API::ResultParser {
  has DecodedMessage => (is => 'ro', isa => 'Str');
}
class AWS::STS::GetFederationTokenResult with AWS::API::ResultParser {
  has Credentials => (is => 'ro', isa => 'AWS::STS::Credentials');
  has FederatedUser => (is => 'ro', isa => 'AWS::STS::FederatedUser');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
}
class AWS::STS::GetSessionTokenResult with AWS::API::ResultParser {
  has Credentials => (is => 'ro', isa => 'AWS::STS::Credentials');
}
class AWS::STS with (Net::AWS::Caller, AWS::API::SingleEndpointCaller, Net::AWS::V4Signature, Net::AWS::QueryCaller) {
  has service => (is => 'ro', isa => 'Str', default => 'sts');
  has version => (is => 'ro', isa => 'Str', default => '2011-06-15');

  method AssumeRole (%args) {
    my $call = AWS::STS::AssumeRole->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::STS::AssumeRoleResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method AssumeRoleWithWebIdentity (%args) {
    my $call = AWS::STS::AssumeRoleWithWebIdentity->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::STS::AssumeRoleWithWebIdentityResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method DecodeAuthorizationMessage (%args) {
    my $call = AWS::STS::DecodeAuthorizationMessage->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::STS::DecodeAuthorizationMessageResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetFederationToken (%args) {
    my $call = AWS::STS::GetFederationToken->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::STS::GetFederationTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

  method GetSessionToken (%args) {
    my $call = AWS::STS::GetSessionToken->new(%args);
    my $result = $self->_api_caller($call->_api_call, $call);
    my $o_result = AWS::STS::GetSessionTokenResult->from_result($result->{ $call->_result_key });
    return $o_result;
  }

}

