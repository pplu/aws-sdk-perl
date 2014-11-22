
package Paws::EC2::CreateVpnGateway {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpnGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateVpnGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;