
package Aws::OpsWorks::DescribeUserProfiles {
  use Moose;
  has IamUserArns => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUserProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::OpsWorks::DescribeUserProfilesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;