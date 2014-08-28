
package Aws::RedShift::CreateClusterSecurityGroup {
  use Moose;
  has ClusterSecurityGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::RedShift::CreateClusterSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateClusterSecurityGroupResult');
}
1;
