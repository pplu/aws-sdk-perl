
package Aws::IAM::ListRolePolicies {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRolePolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::ListRolePoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolePoliciesResult');
}
1;