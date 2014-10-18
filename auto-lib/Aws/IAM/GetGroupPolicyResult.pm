
package Aws::IAM::GetGroupPolicyResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1, traits => ['JSONAttribute'], decode_as => 'URLJSON', method => 'Policy');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

}
1;
