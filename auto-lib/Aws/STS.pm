
use AWS::API;


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
