
package Aws::IAM::GetGroup {
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetGroupResult');
}
1;
