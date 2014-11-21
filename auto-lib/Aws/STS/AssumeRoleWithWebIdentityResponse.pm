
package Aws::STS::AssumeRoleWithWebIdentityResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Aws::STS::AssumedRoleUser');
  has Audience => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Aws::STS::Credentials');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has Provider => (is => 'ro', isa => 'Str');
  has SubjectFromWebIdentityToken => (is => 'ro', isa => 'Str');

}
1;