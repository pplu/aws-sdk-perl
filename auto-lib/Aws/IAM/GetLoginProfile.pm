
package Aws::IAM::GetLoginProfile {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLoginProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::IAM::GetLoginProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetLoginProfileResult');
}
1;
  