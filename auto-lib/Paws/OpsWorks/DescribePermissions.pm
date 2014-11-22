
package Paws::OpsWorks::DescribePermissions {
  use Moose;
  has IamUserArn => (is => 'ro', isa => 'Str');
  has StackId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribePermissionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;