
package Paws::CognitoSync::DescribeIdentityUsage {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::DescribeIdentityUsageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeIdentityUsageResult');
}
1;