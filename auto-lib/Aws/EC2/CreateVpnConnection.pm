
package Aws::EC2::CreateVpnConnection {
  use Moose;
  has CustomerGatewayId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Options => (is => 'ro', isa => 'Aws::EC2::VpnConnectionOptionsSpecification', traits => ['NameInRequest'], request_name => 'options' );
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has VpnGatewayId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::EC2::CreateVpnConnectionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;