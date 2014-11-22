
package Paws::EC2::CreateInternetGateway {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInternetGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateInternetGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;