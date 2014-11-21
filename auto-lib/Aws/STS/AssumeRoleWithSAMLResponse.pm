
package Aws::STS::AssumeRoleWithSAMLResponse {
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
1;