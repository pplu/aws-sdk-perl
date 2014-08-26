
use AWS::API;


package Aws::STS::AssumeRole {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::AssumeRoleResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleResult');
}
package Aws::STS::AssumeRoleWithSAML {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has PrincipalArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAML');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::AssumeRoleWithSAMLResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithSAMLResult');
}
package Aws::STS::AssumeRoleWithWebIdentity {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Policy => (is => 'ro', isa => 'Str');
  has ProviderId => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'ro', isa => 'Str', required => 1);
  has WebIdentityToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::AssumeRoleWithWebIdentityResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AssumeRoleWithWebIdentityResult');
}
package Aws::STS::DecodeAuthorizationMessage {
  use Moose;
  has EncodedMessage => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::DecodeAuthorizationMessageResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DecodeAuthorizationMessageResult');
}
package Aws::STS::GetFederationToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFederationToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::GetFederationTokenResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFederationTokenResult');
}
package Aws::STS::GetSessionToken {
  use Moose;
  has DurationSeconds => (is => 'ro', isa => 'Int');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has TokenCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::STS::GetSessionTokenResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSessionTokenResult');
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

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'AWS::API::SingleEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Net::AWS::XMLResponse');

  
  sub AssumeRole {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRole', @_);
  }
  sub AssumeRoleWithSAML {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRoleWithSAML', @_);
  }
  sub AssumeRoleWithWebIdentity {
    my $self = shift;
    return $self->do_call('Aws::STS::AssumeRoleWithWebIdentity', @_);
  }
  sub DecodeAuthorizationMessage {
    my $self = shift;
    return $self->do_call('Aws::STS::DecodeAuthorizationMessage', @_);
  }
  sub GetFederationToken {
    my $self = shift;
    return $self->do_call('Aws::STS::GetFederationToken', @_);
  }
  sub GetSessionToken {
    my $self = shift;
    return $self->do_call('Aws::STS::GetSessionToken', @_);
  }
}
1;
