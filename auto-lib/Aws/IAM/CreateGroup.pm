
package Aws::IAM::CreateGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGroupResult');
}
1;
  