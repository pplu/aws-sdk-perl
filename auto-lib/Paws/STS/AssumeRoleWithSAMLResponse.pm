
package Paws::STS::AssumeRoleWithSAMLResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has AssumedRoleUser => (is => 'ro', isa => 'Paws::STS::AssumedRoleUser');
  has Audience => (is => 'ro', isa => 'Str');
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has Issuer => (is => 'ro', isa => 'Str');
  has NameQualifier => (is => 'ro', isa => 'Str');
  has PackedPolicySize => (is => 'ro', isa => 'Int');
  has Subject => (is => 'ro', isa => 'Str');
  has SubjectType => (is => 'ro', isa => 'Str');

}
1;