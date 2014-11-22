
package Paws::OpsWorks::DescribeMyUserProfile {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMyUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::DescribeMyUserProfileResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;