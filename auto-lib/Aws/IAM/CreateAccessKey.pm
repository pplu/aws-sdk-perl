
package Aws::IAM::CreateAccessKey {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::CreateAccessKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateAccessKeyResult');
}
1;
