
package Aws::EC2::CreateSecurityGroup {
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'GroupDescription' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateSecurityGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;