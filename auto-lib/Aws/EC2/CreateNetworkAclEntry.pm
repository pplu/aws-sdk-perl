
package Aws::EC2::CreateNetworkAclEntry {
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has Egress => (is => 'ro', isa => 'Bool', required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Aws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', required => 1);
  has PortRange => (is => 'ro', isa => 'Aws::EC2::PortRange');
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;