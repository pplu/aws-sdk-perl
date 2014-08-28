
package Aws::EC2::DeleteVpnGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;
