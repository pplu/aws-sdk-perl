
package Aws::IAM::ListUserPolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListUserPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListUserPoliciesResult');
}
1;