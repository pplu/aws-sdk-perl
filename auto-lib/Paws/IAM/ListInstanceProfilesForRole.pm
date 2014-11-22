
package Paws::IAM::ListInstanceProfilesForRole {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListInstanceProfilesForRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListInstanceProfilesForRoleResult');
}
1;