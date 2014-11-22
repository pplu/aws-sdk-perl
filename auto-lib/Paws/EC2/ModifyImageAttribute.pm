
package Paws::EC2::ModifyImageAttribute {
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has LaunchPermission => (is => 'ro', isa => 'Paws::EC2::LaunchPermissionModifications');
  has OperationType => (is => 'ro', isa => 'Str');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ProductCode' );
  has UserGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserGroup' );
  has UserIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'UserId' );
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyImageAttribute');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;