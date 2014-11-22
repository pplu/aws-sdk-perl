
package Paws::IAM::ListRoles {
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has PathPrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListRolesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListRolesResult');
}
1;