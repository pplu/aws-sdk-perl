
package Aws::IAM::GetUserPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1, traits => ['JSONAttribute'], decode_as => 'URLJSON', method => 'Policy');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

}
1;
