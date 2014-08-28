
package Aws::EC2::DeleteNetworkAclEntry {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Egress => (is => 'ro', isa => 'Bool', required => 1);
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
